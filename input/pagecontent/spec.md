This section defines the specific requirements for systems wishing to conform to actors specified in this UDS+ IG and use HL7 FHIR for reporting.

### Context

#### Pre-reading
Before reading this formal specification, implementers should first be familiar with two other key portions of the specification:

* The [Use Cases](usecases.html) page provides the business context and general process flow enabled by the formal specification.

* The [Background](background.html) page provides information about the underlying specifications and indicates what portions of each should be reviewed in order to have the necessary foundation to understand the constraints and usage guidance described in this detailed specification.


#### Conventions
This implementation guide uses specific terminology to flag statements that have relevance for the evaluation of conformance with the guide:

* **SHALL** indicates requirements that must be met to be conformant with the specification.

* **SHOULD** indicates behaviors that are strongly recommended (and which may result in interoperability issues or sub-optimal behavior if not adhered to), but which do not, for this version of the specification, affect the determination of specification conformance.

* **MAY** describes optional behaviors that are free to consider but where the is no recommendation for or against adoption.


#### Claiming Conformance 

Actors and Systems asserting conformance to this implementation guide have to implement the requirements outlined in the corresponding capability statements. The following definition of MUST SUPPORT is to be used in the implementation of the requirements.

##### MUST SUPPORT Definition

* Systems SHALL be capable of populating data elements as specified by the profiles and data elements are returned using the specified APIs in the capability statement.
* Systems SHALL be capable of processing resource instances containing the MUST SUPPORT data elements without generating an error or causing the application to fail. 
* Systems SHOULD be capable of displaying the MUST SUPPORT data elements for human use or storing it for other purposes.
* In situations where information on a particular data element is not present and the reason for absence is unknown, Systems SHALL NOT include the data elements in the resource instance returned from executing the API requests.
* When accessing UDS+ data, Systems SHALL interpret missing data elements within resource instances returned from API requests as data not present.


#### Profiles
This specification makes significant use of [FHIR profiles]({{site.data.fhir.path}}profiling.html), search parameter definitions, and terminology artifacts to describe the content to be shared as part of UDS+ workflows. The implementation guide is based on [FHIR R4]({{site.data.fhir.path}}) and profiles are listed for each interaction.

The full set of profiles defined in this implementation guide can be found by following the links on the [UDS+ FHIR Artifacts](artifacts.html) page.


#### SMART on FHIR Backend Services Authorization
This section outlines how the SMART on FHIR Backend Services Authorization will be used by the UDS+ implementation guide. 

* When conforming to the SMART Backend Services Authorization, System Actors SHALL include token_endpoint, scopes_supported, token_endpoint_auth_methods_supported and token_endpoint_auth_signing_alg_values_supported as defined in the [SMART on FHIR IG Backend Services]({{site.data.fhir.smartapplaunch}}/backend-services.html) specification.

* When System Actors act as clients, they SHOULD share their JSON Web Key Set (JWKS) with the server System Actors using Uniform Resource Locators (URLs) as defined in the [SMART on FHIR IG Backend Services]({{site.data.fhir.smartapplaunch}}/backend-services.html) specification.

* Client System Actors SHALL obtain the access token as defined in the [SMART on FHIR Backend Services]({{site.data.fhir.smartapplaunch}}/backend-services.html) specification.

* Data Sources SHALL support the system/*.read scope so that the necessary data can be extracted for UDS+ submissions. 


#### System Actors, Requirements and Capability Statements

##### Data Source Requirements

This section identifies the different requirements for Data Source (e.g., EHRs) systems supporting the Health Centers. These requirements are only applicable to Data Sources that are planning to conform to Steps 1 through 5 of the use case workflow defined in [Data Submission workflow](usecases.html#uds-data-submission-workflow-using-fhir). If a Health Center chooses to implement Steps 1 through 5 using other mechanisms, these requirements would not be applicable to the Data Source. 

* The Data Source SHALL support the [FHIR Base URL]/Group/[id]/$export as per the Bulk Data Access IG.

* The Data Source SHALL support the resources and profiles identified in the [Data Source Capability Statement](CapabilityStatement-uds-plus-data-source.html)

* The Data Source SHALL support the [FHIR Base URL]/Group/[id]/$export using the _since parameter as per the Bulk Data Access IG.

* The Data Source SHALL support the [FHIR Base URL]/Group/[id]/$export using the _type parameter as per the Bulk Data Access IG.

* The Data Source SHALL export the data for the reporting year following the code systems, value sets and rules outlined in the UDS Manual for the specific reporting year. 

**NOTE:** The filtering of resources for the reporting year will be performed based on the patient and visit qualification rules within the UDS Manual for the reporting year.

* The Data Source SHALL support the SMART on FHIR Backend Services Authorization as outlined in the previous sections.

* The Data Souce SHALL support scopes of system/*.read to enable UDS+ reporting. 

* The Data Source SHALL support the following parameters for Bulk Export

	* _outputFormat = application/ndjson
	* _since 
	* _type (Includes all resources identified in the Data Elements)
	

###### Group Management

The extraction of data from a Data Source uses the Bulk Data Access IG /Group/[id]/$export functionality. This requires a Group resource instance to be created and maintained by the Data Source. 

**Group Definition:** 

All the Patients served by Health Center as per the UDS Manual on what qualifies for UDS reporting should be included in the Group. This includes a list of non duplicated patiens from qualified providers and non-providers, visits excluding screenings (covid-19, diabetes, hypertension etc), excluding outreach activities, excluding group visits except mental health, excluding tests, anciliary services and administering medicines, 

**Dynamic Group vs static groups**  

* Data Sources ** SHOULD ** use dynamic groups to identify the list of patients applicable for UDS+ reporting. The rationale for dynamic groups is to ensure that all the rules to identify the patients can be applied at a point in time. On the contrary Data Sources ** MAY ** choose to implement static groups, as long as it can be created/updated based on the data submission requirements. For e.g a Group can be created during the reporting period for the previous year. 


##### Data Submitter Requirements

This section identifies the different requirements for Data Submitter system supporting the Health Centers.

* The Data Submitter SHALL support the scheduling of timers to kick off health center reporting based on HRSA guidance.

* The Data Submitter SHOULD implement the client requirements per the Bulk Data Access IG to start the export of the data from the Data Source.

* The Data Submitter SHOULD implement the monitoring of the export request per the Bulk Data Access IG. 

* Once the export is completed, the Data Submitter SHALL download the exported data for de-identification.

* The Data Submitter SHOULD retain the patient linkages between the identifiable data and de-identified data.

* The Data Submitter SHALL de-identify the exported data using the Trust Service Provider services and then create the file download links for Data Receiver to download the NDJSON data. 

* The Data Submitter SHALL validate the data for conformance to the IG.

* The Data Submitter SHALL follow the Health Center security and privacy policies while creating the NDJSON file links to be used by the Data Receiver to download the data.

* The Data Submitter SHALL notify the HRSA Data Receiver when the data is ready using the [$import](OperationDefinition-import.html) operation.  

* When the Data Receiver provides a failure status for the $import operation, the Data Submitter SHALL rectify the errors and perform a re-submission. 

**NOTE:** The re-submission payload will be a complete payload and not a partial payload. 

###### Data Capture Requirements 

* Health Centers ** SHOULD ** follow the UDS Manual for capturing the following data elements 

	* Patient's zip codes. 
	* Insurance Category 
	* Provider Category and specific specialty
 
##### Trust Service Provider Requirements
This section identifies the different requirements for UDS+ Trust Service Provider that can be used for de-identification.

* The Trust Service Provider SHALL support the de-identify operation for each type of resource per the Capability Statement. 

* The Trust Service Provider SHALL create an identifier that is retained internally to link between identifiable and de-identifiable data.

* The Trust Service Provider SHALL remove all identifiable data using the profiles specified in this IG and create NDJSON data based on the IG profiles.

* The Trust Service Provider SHALL remove all data elements that are not identified as "SUPPORTED" in the UDS+ profile definitions. 

**Implementation Note:** Common data elements which may have identifiable data have been explicitly mentioned in the profile with a cardinality of 0..0 which means they are not expected to be present. However other data elements which may be allowed in the resource may be included by the EHR including extensions. These additional data element and extensions that are not specified in the UDS+ profiles have to be removed explicitly by the Trust Service Provider implementation.

* The Trust Service Provider SHALL implement the de-identification requirements as per the [HHS De-identification Guidance](https://www.hhs.gov/sites/default/files/ocr/privacy/hipaa/understanding/coveredentities/De-identification/hhs_deid_guidance.pdf).

* When choosing to implement the de-identification method using safe harbor provisions from the HHS De-identification Guidance, Trust Service Providers **SHALL** eliminate records related to the specific zip codes as specified in the guidance. 

**Implementation Note:** Implementers are advised to refer to [Reporting Guidance](reportingguidance.html)
 

##### Data Receiver Requirements
This section identifies the different requirements for Data Receiver systems hosted by HRSA.

* The Data Receiver SHALL implement the [$import](OperationDefinition-import.html) operation to receive a manifest file containing the UDS+ report for each health center.

* The Data Receiver SHALL download the NDJSON formatted, de-identified data from the health center using the links provided by the Data Submitter following the protocol specified in the manifest file.

* The Data Receiver SHALL validate the received NDJSON data according the UDS+ FHIR IG profiles and return OperationalOutcomes for each instance of conformance failure.

* The Data Receiver SHALL apply necessary business rules to check data quality and provide feedback via OperationalOutcome for each data quality issue. These may be errors or warnings. 

* The Data Receiver SHALL provide status polling capability to Health Centers as part of the HTTP Content Header  with a recommended polling interval. 

* The Data Receiver SHALL update the status of the submission for each health center. 

* The Data Receiver SHALL process a re-submission by a Health Center as needed during the reporting period.

* The Data Receiver SHALL discard previous submissions when a re-submission is made by the Health Center. 

 