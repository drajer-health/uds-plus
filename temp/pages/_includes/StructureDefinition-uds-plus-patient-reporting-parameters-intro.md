

### Introduction

This profile is used to represent the applicability of the patient data for each report. In other words, the reporting parameters profile is used to convey if a patient should be considered as part of a specific report. One instance of this is expected to be created for each patient that is part of the patient.ndjson file.

**Funding Streams**

Since the patient data may be applicable to multiple funding streams, an attribute called "combinedFundingStreams" has been added to the Reporting Parameters profile. This string is expected to contain the various funding streams to which this patient is applicable. The attribute will contain a comma separated list of all the funding streams. For e.g a Patient who is part of the CHC and MHC funding streams will contain the string "CHC,MHC" in the combindedFundingStreams data element. The list of funding streams allowed are 

* CHC - Community Health Center  
* MHC - Migrant Health Center 
* HCH - Healthcare for the Homeless
* PHPC - Public Housing Primary Care

**Report Names**

The reportNames attribute contains the information that links the patient to the different UDS Plus reports. 

For e.g A Patient who is part of "table6B-Line11-Cervical-Cancer-Screening-CMS124" quality measure will have the valueBoolean set to true for the corresponding line item. For the same patient if the data does not apply to "table6B-Line11a-Breast-Cancer-Screening-CMS125" report, then the valueBoolean will be set to false. This is applicable to all measures and tables specified in the UDS Manual.


{:.stu-note}
The following is new content for 1.0.2.

<div class="bg-success" markdown="1">

**eCQM/Quality Measure Flags in Reporting Parameters** 

The Reporting Parameters profile below is used to indicate which Patients have to be considered for the measure calculations. For CMS 117 this is performed as follows:

In the Parameters resource the CMS 117 is identified by the Parameter.part.name = "table6B-Line10-Childhood-Immunization-Status-CMS117".

For the same part element (table6B-Line10-Childhood-Immunization-Status-CMS117) if the Parameter.part.value[x] is true, then the Patient referenced in the value[x] for the part Paremeter.part.name = "patientReference" is considered for the computation of the measure. In other words a true indicates that the patient has met the Initial Patient Population criteria. A value of false for the measure indicates that the Patient's data would not be used in the computation of the measure. 

In the initial stages of UDS+ adoption, it is extremely valuable for both Health Centers and HRSA to determine if the counts calculated by the Health Center are same as the counts calculated by HRSA for the same measure. In order to facilitate this cross-verification process, the Reporting Parameters resource has been enhanced so that vendors can indicate if a Patient is part of the numerator, denominator etc. This is an optional capability which vendors can leverage to supply the additional detail to aid in cross-verification. 

The new capability allows the Health Centers to identify if the patient is part of:

* Denominator (den), An example for CMS 117 is designated as table6B-Line10-Childhood-Immunization-Status-CMS117-den in the name field.
* Denominator Exceptions (denexp),  An example for CMS 117 is designated as table6B-Line10-Childhood-Immunization-Status-CMS117-denexp in the name field.
* Denominator Exclusions (denexcl),   An example for CMS 117 is designated as table6B-Line10-Childhood-Immunization-Status-CMS117-denexcl in the name field.
* Numerator (num),  An example for CMS 117 is designated as table6B-Line10-Childhood-Immunization-Status-CMS117-num in the name field.
* Numerator Excpetions (numexcp),  An example for CMS 117 is designated as table6B-Line10-Childhood-Immunization-Status-CMS117-numexp in the name field.
* Numerator Exclusions (numexcl),  An example for CMS 117 is designated as table6B-Line10-Childhood-Immunization-Status-CMS117-numexcl in the name field.




</div>

**Partial Submission Option**

For partial submission requirements, please refer to the [Partial Submission Requirements](spec.html#data-submitter-requirements)

