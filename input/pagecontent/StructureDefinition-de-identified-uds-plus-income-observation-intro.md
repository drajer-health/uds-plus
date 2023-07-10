{:.stu-note}
All canonical (Official) URLs will be changed in the future and are not available currently on the web.

### Introduction

This profile is used to represent de-identified Income information. The de-identification process has to remove all data elements not explicitly identified as "SUPPORTED" in the profile. 

The [HHS De-identification Guidance](https://www.hhs.gov/sites/default/files/ocr/privacy/hipaa/understanding/coveredentities/De-identification/hhs_deid_guidance.pdf) is to be followed to ensure appropriate level of de-identification is performed.

In FHIR Resources, text elements and reference.display elements which provide human readable information to the providers may be generated using programs and tools from the data present within the resource. For e.g a Income Observation resource text element may contain Patient information such as names. This type of information will enable identification of the individuals. In order to avoid inadvertent revealing of PII/PHI, text elements cannot be included in the De-identified FHIR resource and the submission will be rejected when text elements are present by the validation process. 

**Ids and References**

The original Observation resource id should not be included in the De-identified Observation instance. Instead a new id should be created and provided as part of the FHIR resource. This Data Submitter should be capable of using the generated id to relink the data to the original Income Observation. All resource references to the Income Observation submitted as part of the UDS+ report should refer to newly generated id.

Resource references cannot contain text element as it may contain PHI/PII. The text element for following references are not allowed

* subject


**Codeable Concept**

Codeable Concept text elements should be removed as part of the de-identification as they may contain PHI/PII. The list of elements to remove text are 

* code

**Representing Income Ranges**

Income ranges are represented using the Observation.valueRange element. The following values can be used to represent the Income ranges: 

	* 100% and below : use valueRange.high to represent 100% (Includes 100)
	* 101–150% : use valueRange.low to represent 101, valueRange.high to represent 150 (Includes 101 and 150)
	* 151–200% : use valueRange.low to represent 151, valueRange.high to represent 200 (Includes 151 and 200)
	* Over 200% : use valueRange.low to represent 200% and comparator of ">"
	* For unknown use the dataAbsentReason

**Examples**
 
Examples of identifiable data and its corresponding de-identifiable data is present in [Reporting Guidance](reportingguidance.html).

