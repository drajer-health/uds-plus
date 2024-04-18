

### Introduction

This profile is used to represent de-identified Coverage information. The de-identification process has to remove all data elements not explicitly identified as "SUPPORTED" in the profile. 

The [HHS De-identification Guidance](https://www.hhs.gov/sites/default/files/ocr/privacy/hipaa/understanding/coveredentities/De-identification/hhs_deid_guidance.pdf) is to be followed to ensure appropriate level of de-identification is performed.

According to the HHS guidance, dates should not have a precision of more than the year. This means month and day cannot be included. This includes diagnosis dates, visit dates, onset dates etc.

In FHIR Resources, text elements and reference.display elements which provide human readable information to the providers may be generated using programs and tools from the data present within the resource. For e.g a Coverage resource text element may contain information such as the covrage date. This type of information will enable identification of the individuals. In order to avoid inadvertent revealing of PII/PHI, text elements cannot be included in the De-identified FHIR resource and the submission will be rejected when text elements are present by the validation process. 

**Ids and References**

The original Coverage resource id should not be included in the De-identified Coverage instance. Instead a new id should be created and provided as part of the FHIR resource. This Data Submitter should be capable of using the generated id to relink the data to the original Coverage. All resource references to the Coverage submitted as part of the UDS+ report should refer to newly generated id.

Resource references cannot contain text element as it may contain PHI/PII. The text element for following references are not allowed

* beneficiary
* payor


**Date Truncation** 

The Data Submitter has to truncate the following dates to only have a precision of year

* period and its sub elements.

**Examples**
 
Examples of identifiable data and its corresponding de-identifiable data is present in [Reporting Guidance](reportingguidance.html).

