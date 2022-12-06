This section provides information that can be leveraged by EHR and Health Centers implementing the UDS Plus specification.
This is not a requirements document, nor is prescriptive in nature but should only serve as an implementation aid.

### Implementation of Groups

#### Creation of Groups

* Typically one Group should be created by the EHR vendor or the Health Center for UDS Plus reporting. 
* All the patients who qualify for UDS Plus Reporting should be added to this group. Qualification of Patients for UDS reporting is outlined in the UDS Manual.

#### Population and Updation of Groups

* All the patients who qualify for UDS Plus Reporting should be added to this group. As patients visit the facility and avail healthcare services, the Group has to be updated with unique patients who are not present in the group already. 
* An alternative way of implementing the Group would be to have a dynamic database query that would identify the patients based on the services availed at the facility. 
* In all cases, the Group has to be available prior to the start of the reporting process each year.

#### Enabling Exporting of data from Groups

* EHRs which are playing the role of both Data Source and Data Submitter may provide a button or some kind of capability to the Health Center user to kick of the reporting cycle. 

* If the Data Source and Data Submitter are two different systems, then the Data Submitter has to be provisioned as an SMART on FHIR Application within the Data Source's FHIR Authorization Server. 
* As part of the provisioning process, the Data Submitter should be granted permissions to export using the Group Id created for UDS Reporting. 
* When the Data Submitter is an external application, it may call the $export operations on one or more data sources. Each data source may provide one or more Group Ids. So a Data Submitter has to be configurable with multiple data sources and multiple groups per data source to be able to extract all the data.  


### Implementation of Export Functionality

* EHRs have to use the Patient Compartment to identify all the resources required for the UDS Plus reporting. The resources to be included are identified by the various data elements in the UDS Plus data element mappings. 


### Implementation of De-identification process 

The first version of the IG prescribes the de-identification process as simply removing all identifiable elements in the profiles. This can be accomplished by translating the incoming US Core compliant profile into a UDS Plus De-identified resource profile.


  