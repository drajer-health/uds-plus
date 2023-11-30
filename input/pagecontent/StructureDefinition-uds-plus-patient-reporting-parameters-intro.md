

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

**Partial Submission Option**

For partial submission requirements, please refer to the [Partial Submission Requirements](spec.html#data-submitter-requirements)

