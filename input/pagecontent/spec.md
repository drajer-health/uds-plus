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

This section identifies the different requirements for Data Source (e.g., EHRs) systems supporting the Health Centers.

* The Data Source SHALL support the [FHIR Base URL]/Group/[id]/$export as per the Bulk Data Access IG.

* The Data Source SHALL support the resources and profiles identified in the [Data Source Capability Statement]()

* The Data Source SHALL support the [FHIR Base URL]/Group/[id]/$export using the _since parameter as per the Bulk Data Access IG.

* The Data Source SHALL support the [FHIR Base URL]/Group/[id]/$export using the _type parameter as per the Bulk Data Access IG.

* The Data Source SHALL support the SMART on FHIR Backend Services Authorization as outlined in the previous sections.

##### Data Submitter Requirements

This section identifies the different requirements for Data Submitter system supporting the Health Centers.

* The Data Submitter SHALL support the scheduling of timers to kick off health center reporting based on HRSA Knowledge Artifact guidance.

* The Data Submitter SHALL implement the client requirements per the Bulk Data Access IG to start the export of the data from the Data Source.

* The Data Submitter SHALL implement the monitoring of the export request per the Bulk Data Access IG. 

* Once the export is completed, the Data Submitter SHALL download the exported data for de-identification.

* The Data Submitter SHALL retain the patient linkages between the identifiable data and de-identified data.

* The Data Submitter SHALL de-identify the exported data using the Trust Service Provider services and then create the links for HRSA to download the data.

* The Data Submitter SHALL validate the data for conformance to the IG.

* The Data Submitter SHALL implement the following security protocols to protect the links being shared with HRSA.

* The Data Submitter SHALL notify the HRSA Data Receiver when the export operation is completed.  


##### Trust Service Provider Requirements
This section identifies the different requirements for UDS+ Trust Service Provider that can be used for de-identification.

* The Trust Service Provider SHALL support the de-identify operation for each type of resource per the Capability Statement.  


##### Data Receiver Requirements
This section identifies the different requirements for Data Receiver systems hosted by HRSA.

* The Data Receiver SHALL implement the notify operation to receive notification of completed export for each health center.

* The Data Receiver SHALL download the NDJSON formatted, de-identified data from the health center using the links provided by the Data Submitter.

* The Data Receiver SHALL validate the received NDJSON data according the IG profiles.

 