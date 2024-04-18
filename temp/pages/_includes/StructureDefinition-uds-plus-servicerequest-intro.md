
### Introduction

This profile is used to represent de-identified ServiceRequest information. The de-identification process has to remove all data elements not explicitly identified as "SUPPORTED" in the profile. 

The [HHS De-identification Guidance](https://www.hhs.gov/sites/default/files/ocr/privacy/hipaa/understanding/coveredentities/De-identification/hhs_deid_guidance.pdf) is to be followed to ensure appropriate level of de-identification is performed.

According to the HHS guidance, dates should not have a precision of more than the year. This means month and day cannot be included. This includes ServiceRequest.occurenceDateTime.

In FHIR Resources, text elements and reference.display elements which provide human readable information to the providers may be generated using programs and tools from the data present within the resource. For e.g a ServiceRequest resource text element may contain information such as the ServiceRequest date, patient information. This type of information will enable identification of the individuals. In order to avoid inadvertent revealing of PII/PHI, text elements cannot be included in the De-identified FHIR resource and the submission will be rejected when text elements are present by the validation process.  

**Ids and References**

The original ServiceRequest resource id should not be included in the De-identified ServiceRequest instance. Instead a new id should be created and provided as part of the FHIR resource. The Data Submitter should be capable of using the generated id to relink the data to the original ServiceRequest. All resource references to the ServiceRequest submitted as part of the UDS+ report should refer to newly generated id.

Resource references cannot contain text element as it may contain PHI/PII. The text element for following references are not allowed

* subject
* encounter


**Date Truncation** 

The Data Submitter has to truncate the following dates to only have a precision of year

* authoredOn 

