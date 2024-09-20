

### Introduction

This profile is used to represent de-identified patient information. The de-identification process has to remove all data elements not explicitly identified as "SUPPORTED" in the profile. 

The [HHS De-identification Guidance](https://www.hhs.gov/sites/default/files/ocr/privacy/hipaa/understanding/coveredentities/De-identification/hhs_deid_guidance.pdf) is to be followed to ensure appropriate level of de-identification is performed.

According to the HHS guidance the following data elements have to be removed or de-identified

* Patient Name
* Address that is more specific than a state
	
	* First 3 digits of Zipcodes can be included if the population of all zipcodes starting with the same 3 digits are > 20000 people and the last 2 digits should be masked with "00",  in all other cases, the zipcodes have to be masked to 00000.
	 
* All dates should not have a precision of more than the year. This means month and day cannot be included.
* Demographics including birthdate, deceased indicator
* Patient contact details such as telephone numbers, fax, email, URLs, 
* Patient personal identifiers such as SSN, Drivers License, 
* Business identifiers such as MRNs, certificate numbers, Account numbers
* Biometrics such as fingerprints, photos

In FHIR Resources, text elements which provide human readable information to the providers may be generated using programs and tools from the data present within the resource. For e.g a Patient resource text element may contain information such as the full name, Gender and Date of Birth. This type of information will enable identification of the individuals. In order to avoid inadvertent revealing of PII/PHI, text elements cannot be included in the De-identified FHIR resource and the submission will be rejected when text elements are present by the validation process.  

**Age Computation** 

The Data Submitter has to compute the age based as of December 31st of the previous year for inclusion in the UDS+ report.

**Id Generation** 

The original patient resource id should not be included in the De-identified patient instance. Instead a new id should be created and provided as part of the FHIR resource. This Data Submitter should be capable of using the generated id to relink the data to the original patient. All resource references to the Patient submitted as part of the UDS+ report should refer to newly generated de-identified id.

{:.stu-note}
The following is new content for 1.1.0

<div class="bg-success" markdown="1">

**Date Truncation** 

The Data Submitter has to truncate the following dates to only have a precision of year

* deceased[x] when the data type used is dateTime.

</div>

**Usage of Data Absent Reason Extension**

For the UDS+ reporting, the patient data is de-identified and in the process zip codes may be masked to a value of "00000". In these cases the dataAbsentReason extension must be added to identify that the data is "masked".
If the zip code is not known, a value of "00000" must be sent with a dataAbsentReason of "unknown".
If the zip code is outside the country, a value of "00000" must be sent with a dataAbsentReason of "unsupported".

**Birth Sex Additional Constraints**

NullFlavors are not allowed for BirthSex reporting for UDS+ even though they are allowed in US Core.

**Race and Ethnicity Additional Constraints**

US Core allows Race and Ethnicity to be described as only text or rolled up to the OMB categories, however for UDS+ reporting detailed race and ethnicity have to be captured and reported as part of the profile. If the reported race and ethncity values are not null flavors then detailed values are mandatory.

**Sexual Orientation Additional Constraints**

Health Centers which have not implemented the methods to capture Sexual Orientation, should use the null flavor coded value of "NASK" specifically. 

**Gender Identity Additional Constraints**

Health Centers which have not implemented the methods to capture Gender Identity, should use the null flavor coded value of "NASK" specifically. 
  

**Examples** 
Examples of identifiable data and its corresponding de-identifiable data is present in [Reporting Guidance](reportingguidance.html).

