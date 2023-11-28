
### Introduction

This profile is used to represent de-identified Encounter information. The de-identification process has to remove all data elements not explicitly identified as "SUPPORTED" in the profile. 

The [HHS De-identification Guidance](https://www.hhs.gov/sites/default/files/ocr/privacy/hipaa/understanding/coveredentities/De-identification/hhs_deid_guidance.pdf) is to be followed to ensure appropriate level of de-identification is performed.

According to the HHS guidance, dates should not have a precision of more than the year. This means month and day cannot be included. This includes diagnosis dates, visit dates, onset dates etc.

In FHIR Resources, text elements and reference.display elements which provide human readable information to the providers may be generated using programs and tools from the data present within the resource. For e.g a Encounter resource text element may contain information such as the visit date. This type of information will enable identification of the individuals. In order to avoid inadvertent revealing of PII/PHI, text elements cannot be included in the De-identified FHIR resource and the submission will be rejected when text elements are present by the validation process. 

**Age Computation** 

The Data Submitter has to compute the age using the visit date of the encounter to be included in the UDS+ report.

**Capturing Location Information**

The Encounter.location.location points to a Location Resource.  The Location.type element can be used to indicate the type of location where the service was provided. The existing Location.type value set can be used to indicate that the service was provided in a SCHOOL based setting. This will be used to compute Table 4, LINE 24 of the UDS Report. For Table 4, Line 26 use the public-housing code defined in UDS+ value set that is referenced in the UDS+ Location profile.

**Ids and References**

The original Encounter resource id should not be included in the De-identified Encounter instance. Instead a new id should be created and provided as part of the FHIR resource. This Data Submitter should be capable of using the generated id to relink the data to the original Encounter. All resource references to the Encounter submitted as part of the UDS+ report should refer to newly generated id.

Resource references cannot contain text element as it may contain PHI/PII. The text element for following references are not allowed

* subject
* reasonReference


**Date Truncation** 

The Data Submitter has to truncate the following dates to only have a precision of year

* period and its sub elements.
* participant.period

**Examples**
 
Examples of identifiable data and its corresponding de-identifiable data is present in [Reporting Guidance](reportingguidance.html).

