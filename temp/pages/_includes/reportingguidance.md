This section provides implementation details for reporting the data elements identified in [UDS+ Data Elements](dataelements.html) to HRSA.

### Health Center/HCCN On-boarding process

The UDS+ program requires the Health Centers/HCCN's along with their EHR vendors need to be on-boarded to the UDS+ program to connect to the Data Receiver and submit the data. To initiate this process interested Health Centers and HCCN's and their EHR vendors can contact the HRSA support team using the [BPHC Contact Form](https://hrsa.my.site.com/support/s/). Some of the important activities performed as part of on-boarding include 

* Submitting security information identifying servers that will connect to the HRSA network
* Understanding the HRSA tools and environments that can be used for testing.
* Getting Data Submitter IP Addresses added to the list of IP Addresses allowed to connect to HRSA and vice-versa if needed
* Submitting necessary information to obtain a clientId that is used for the Authorization Protocols.
* Preparing for synthetic data testing and Setting up testing times for executing tests.

### Interaction Flows

This section provides details of the Step 9, Step 10a and Step 10b to be used by the Data Submitter and Data Receiver to successfully submit or re-submit a UDS+ report.

#### Step 9 details

The diagram below details out the interactions between the Data Submitter and the Data Receiver for Step 9. This is following the FHIR Bulk Data Access/FHIR Async pattern.


{% include img.html img="step9-detailed-Interactions.png" caption="Step 9 UDS+ Reporting Workflow Detailed Interactions" %} 

For more information and examples on authentication mechanisms, refer to [SMART on FHIR IG Backend Services]({{site.data.fhir.smartapplaunch}}/backend-services.html).

#### Step 9 Request-Response Details

When $import is invoked by the Data Submitter and a manifest file is submitted the following codes are returned routinely.

* HTTP Status Code of 201 - Accepted : when the manifest file is valid.
* HTTP Status code of 422 - Unprocessable Entity : When the manifest file is invalid along with OperationOutcome resources in the body
* HTTP Status Code of 401 - Unauthorized : When the access token is not valid.

There could be scenarios where the Data Submitters may receive other 4xx or 5xx HTTP error codes.

For details on the request and response examples please refer to [RequestResponseExamples](requestresponseexamples.html).


#### Step 9 Response: Content-Location Header

Since the submission starts a FHIR async pattern request, the submitter has to poll for the status of the submission as the submissions is imported asynchronously. In order to poll for the status of the submission, the submitter has to parse the HTTTP Response Headers and extract the Content-Location header which contains the URL used for polling the status of the submission.


##### Security Protocol Details

The following is a summary of the protocols used for authentication and authorization specified at [SMART on FHIR IG Backend Services]({{site.data.fhir.smartapplaunch}}/backend-services.html).

* The Data Submitter clients (Health Centers) will be registered in the Authorization Server as part of the on-boarding process. There is no dynamic registration capability that is allowed. 

* Asymmetric Keys (public and private keys) are used for authentication. Clients MUST be capable of protecting their private keys.

* [RFC 5246](https://tools.ietf.org/html/rfc5246) - TLS 1.2 is used to protect all transactions.

* Authorization Server supports RS384 or ES384 signature algorithms per [RFC7518](https://tools.ietf.org/html/rfc7518)

* Authorization Server and Data Submitters MUST support Json Web Key Set per [RFC7517](https://www.rfc-editor.org/rfc/rfc7517.txt)

* Authorization Servers and Data Submitters MUST support JSON Web Tokens per [RFC7519](https://tools.ietf.org/html/rfc7519) and [RFC7523](https://tools.ietf.org/html/rfc7523)

* Authorization Server MUST support a .well-known/smart-configuration metadata for conformance

* Data Submitters MUST submit the JWT assertions per the [RFC7521](https://tools.ietf.org/html/rfc7521)

* Data Submitters MUST include the scopes to post the manifest file to the Data Receiver

* Data Submitters SHOULD follow best practices and use links which are signed and expire to prevent malicious actors from downloading the data. Best practice includes auto-generation of the links and auto expiration and requiring tokens to be echoed back for access.

* Data Submitters and Data Receivers MUST maintain audit logs for each submission and its corresponding responses. 

#### Step 10a and Step 10b details

The diagram below details out the interactions between the Data Submitter and the Data Receiver for Step 10a and Step 10b. This is following the FHIR Bulk Data Access/FHIR Async pattern.


{% include img.html img="step10-detailed-interactions.png" caption="Step 10a and 10b UDS+ Reporting Detailed Interactions" %} 


#### Step 10b Request-Response Details

When GET /<Content-Location URL> is invoked by the Data Submitter the following codes are returned routinely.

* HTTP Status Code of 200 - When the import is successful or is In-Progress
* HTTP Status code of 422 - Unprocessable Entity : When there are errors in the processing
* HTTP Status Code of 401 - Unauthorized : When the access token is not valid.
* HTTP Status Code of 400 - Bad Request : When the URLs or access tokens provided are not valid.

There could be scenarios where the Data Submitters may receive other 4xx or 5xx HTTP error codes.

Data Submitters should always process the HTTP Response body to identify the specific errors which are returned as OperationOutcome resources.

For details on the request and response examples please refer to [RequestResponseExamples](requestresponseexamples.html).

##### Step 10b X-Progress HTTP Header 

When Data Submitters invoke the Content-Location URL for the status of the submission, the X-Progress header can also be used to check on the overall status. The typcial values that the X-Progress Header contains are :

* 0% complete - When the import is still in-progress
* Failed - when the import fails due to any reason, the reason will be available in the body of the response
* 100% complete - when the import is successful.

For details on the request and response examples please refer to [RequestResponseExamples](requestresponseexamples.html).



#### Creation of Groups

* Typically one Group should be created by the EHR vendor or the Health Center for UDS Plus reporting. 
* All the patients who qualify for UDS Plus Reporting should be added to this group. Qualification of Patients for UDS reporting is outlined in the UDS Manual.

##### Population and Updation of Groups

* All the patients who qualify for UDS Plus Reporting should be added to this group. As patients visit the facility and avail healthcare services, the Group has to be updated with unique patients who are not present in the group already. 
* An alternative way of implementing the Group would be to have a dynamic database query that would identify the patients based on the services availed at the facility. 
* In all cases, the Group has to be available prior to the start of the reporting process each year.

##### Enabling Exporting of data from Groups

* EHRs which are playing the role of both Data Source and Data Submitter may provide a button or some kind of capability to the Health Center user to kick of the reporting cycle. 

* If the Data Source and Data Submitter are two different systems, then the Data Submitter has to be provisioned as an SMART on FHIR Application within the Data Source's FHIR Authorization Server. 
* As part of the provisioning process, the Data Submitter should be granted permissions to export using the Group Id created for UDS Reporting. 
* When the Data Submitter is an external application, it may call the $export operations on one or more data sources. Each data source may provide one or more Group Ids. So a Data Submitter has to be configurable with multiple data sources and multiple groups per data source to be able to extract all the data.  

##### Implementation of Export Functionality

* EHRs have to use the Patient Compartment to identify all the resources required for the UDS Plus reporting. The resources to be included are identified by the various data elements in the UDS Plus data element mappings. 


##### Implementation of De-identification process 

The first version of the IG prescribes the de-identification process as simply removing all identifiable elements in the profiles. This can be accomplished by translating the incoming US Core compliant profile into a UDS Plus De-identified resource profile.


#### Tables to be reported using FHIR APIs

The following tables are expected to be reported through UDS+ FHIR APIs.

* Table 3A
* Table 3B
* Table 4
* Table 6A
* Table 6B
* Table 7


#### Tables to be reported using existing mechanisms

The following tables are expected to be reported using the existing UDS reporting mechanisms as they are not directly related to the patient's clinical data.

* Table 5
* Table 8A
* Table 9D
* Table 9E

**Feedback Requested** 

The FHIR APIs, FHIR Resources and FHIR profiles to be used are specified as part of the IG, creation of a Parameters Resource profile to specify Tables 5, 8A, 9D and 9E is possible. We would like feedback on this approach as this would essentially make it possible to accept all existing UDS data using FHIR APIs.


#### Table Specific Data Export Requirements

##### Table Patients By Zip Code

Implementers should follow the UDS Manual to identify the patient's zip code and insurance which includes 

	* Reporting the most recent zip code on file
	* Using "Other zip code" for people with no US address 
	* Patients' last insurance from the last visit of the year

##### Table 3A

* For Table 3A, the age calculation should be based on December 31st of the previous year as per the UDS Manual. 

* When race is captured, but no ethnicity is captured, it should be defaulted "Not Hispanic or Latino"

##### Table 4

* The income reported should have been captured within 12 months of the last visit for the pateint.

* The income has to be translated to percentages as per Federal Poverty Guidelines. 

### Quality Measures and Reporting Approaches

Quality Measure computation and reporting is a complex task and may involve multiple systems and human interventions to compute the measures properly. The quality reporting eco-system is rapidly evolving to utilize existing standards such as HL7 FHIR Measure Report (Individual and Summary), HL7 QRDA Category III (Summary or Aggregate), HL7 QRDA Category I (Individual) to automate reporting and processing of the reports. However computation of the Measure Reports or what data to be included in the individual report is still not automated widely in the industry.  HRSA recognizes this state of the industry where Quality Measure standards will continue to evolve and hence prescribes submitting de-identified information for Table 6B and Table 7 using the UDS+ profiles.

The Patients for each measure will be qualified and tagged using the initial patient population criteria for the measure. When a Patient is qualified for multiple measures, they will be tagged using the [Patient Reporting Parameters](StructureDefinition-uds-plus-patient-reporting-parameters.html) profile.


### Submit De-identified FHIR Resources associated with the Patients for the population

The Health Centers are expected to work with their Data Sources (e.g., EHR vendors) to extract the data required for the computation of the different measures as identified in the [UDS+ Data Elements and FHIR Mapping](dataelements.html#analysis-of-the-table-6b-and-7-quality-of-care-measures-and-health-outcomes-and-disparities). These resources when extracted from the EHR will contain identifiable data and has to be de-identified before submitting to HRSA. Once HRSA receives the data, quality measure computation will be performed using the submitted data. 

To help the implementers, the following table shows examples of FHIR resources that contain identifiable information and their corresponding de-identified versions of the resources. These are examples and not specific requirements. 

{% include UDS_Examples.html %} 

