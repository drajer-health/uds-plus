### Introduction

This profile is used to represent de-identified patient information. The de-identification process has to remove all data elements not explicitly identified as "SUPPORTED" in the profile. 

The [HHS De-identification Guidance](https://www.hhs.gov/sites/default/files/ocr/privacy/hipaa/understanding/coveredentities/De-identification/hhs_deid_guidance.pdf) is to be followed to ensure appropriate level of de-identification is performed.

According to the HHS guidance the following data elements have to be removed or de-identified

* Patient Name
* Address that is more specific than a state
	
	* First 3 digits of Zipcodes can be included if the population of all zipcodes starting with the same 3 digits are > 20000 people, in all other cases, the zipcodes have to be masked to 00000.
	 
* All dates should not have a precision of more than the year. This means month and day cannot be included.
* Demographics including birthdate, deceased date
* Patient contact details such as telephone numbers, fax, email, URLs, 
* Patient personal identifiers such as SSN, Drivers License, 
* Business identifiers such as MRNs, certificate numbers, Account numbers
* Biometrics such as fingerprints, photos

In FHIR Resources, text elements which provide human readable information to the providers may be generated using programs and tools from the data present within the resource. For e.g a Patient resource text element may contain information such as the full name, Gender and Date of Birth. This type of information will enable identification of the individuals. In order to avoid inadvertent revealing of PII/PHI, text elements cannot be included in the De-identified FHIR resource and the submission will be rejected when text elements are present by the validation process.  

**Age Computation** 

The Data Submitter has to compute the age based as of December 31st of the previous year for inclusion in the UDS+ report.

**Id Generation** 

The original patient resource id should not be included in the De-identified patient instance. Instead a new id should be created and provided as part of the FHIR resource. This Data Submitter should be capable of using the generated id to relink the data to the original patient. All resource references to the Patient submitted as part of the UDS+ report should refer to newly generated de-identified id.

**Codeable Concept**

Codeable Concept text elements should be removed as part of the de-identification as they may contain PHI/PII. This is applicable to the following elements

* Language
* Gender Identity

**Examples** 
Examples of identifiable data and its corresponding de-identifiable data is present in [Reporting Guidance](reportingguidance.html).

