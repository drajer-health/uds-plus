

### Introduction

This profile is used to represent the manifest file information that is submitted to the $import operation.  

**Representing Health Center Information**

Health Centers have to provide the following information as part of the manifest.

* UEI Number:  Unique Entity Identifier (UEI) is a unique number assigned by SAM (System for Awards Management) to all entities who register to do business with the federal government.

* Grant Number: This is comprised of the activity code and the serial number for the particular grant. This number, once assigned does not change for the life of the grant. The activity code which is used to form the static grant number is the activity code which the grant is currently tied to.  When a new grant is created, the static Grant Number now gets populated from within the code. Examples of grant numbers include "H80CS##### and LALCS#####" where the [#####] is substituted with the actual value.

* Health Center Contact Person has to be provided with a First and Last Name.

* Health Center Address has to be provided. 

* Health Center Contact phone number has to be provided. 

**Providing Security Tokens**

A Health Center may wish to make sure that the HRSA Data Receiver provide a security token during the download of the UDS Plus data. In order to facilitate these tokens, the Data Submitter may echo a "security token" of type "bearer" in the manifest file for each UDS Plus file that needs to be downloaded. This bearer token will be echo'ed back by the Data Receiver in the HTTP header during the download process. This further enhances the security protocols between the Data Submitter and the Data Receiver systems. 

{:.stu-note}
The following is new content for 1.0.2.

<div class="bg-success" markdown="1">

**Submitting data for multiple sites and/or EHRs that are part of a Health Center**

There are many instances where a Health Center may be using one or more EHR technology and would like to submit data individually from each EHR separately and let HRSA aggregate the data for the Health Center. In addition, some Health Centers report data by sites where services are rendered. The Manifest file submitted to the [$import](OperationDefinition-import.html) operation provides the following data elements to properly identify these scenarios during the submission.

***partialSubmission attribute in Manifest***

The partialSubmission attribute should be included in the Manifest file and set to a value of "true" for the following scenarios:

 * Health Center will be submitting data from multiple EHRs independent of each other but HRSA has to aggregate the data across the submissions for the final counts.
 * Health Center will be submitting data from multiple sites where services are rendered independent of each other but HRSA has to aggregate the data across the submissions for the final counts.
 
 The partialSubmission flag of "true" indicates to HRSA that there will be multiple submissions using the same "grantNumber". After the submission period, HRSA will aggregate the multiple submissions and provide feedback on the submitted data. Health Centers do not have to include this attribute if there is only one submission from the Health Center. 
 
 ***Re-submissions of the data***
 
 If a Health Center wishes to resubmit data, then the replaceSubmissionId attribute has to be included and has to contain the previous submissionId which this submission is replacing.
 
 ***Relationship between partialSubmission and Re-Submission***
 
 A submission can be tagged as a partial submission and also as a replacement to a previous submission.
 
 ***IncrementalData Flag***
 
Sometimes, a submission may have errors with a small set of records in which case, the entire submission need not be resubmitted.The DataSubmitters can submit only the corrected records and indicate to the Data Receiver to replace only the subset of the records. When the incrementalData flag is set, the replaceSubmissionId has to be populated. 

The DataReceiver performs the following activities:

* Finds the original submission based on the replaceSubmissionId 
* Finds the records using the FHIR Resource Ids.
* Replace the data for the records 
* If the records are not found, then the records are added into the submission
* Perform validation of the modified submission and report the success or failures/errors.

NOTE: Incremental submissions will be accepted in the future. It is included in this version of the IG to collect feedback from the vendor community of the approach.

</div>

