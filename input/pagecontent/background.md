This section provides an overview of the Implementation Guide (IG).

### IG Purpose

Currently UDS data is submitted using a tabular data format via participating health centers. The submission mechanisms include portals, sftp and other mechanisms. The data submitted is aggregated at the sites and is submitted to HRSA's UDS systems and does not have patient level data currently. While this data satisfies the basic reporting, HRSA would like to improve the efficiency, quality and timeliness of the data along with the granularity of the data. The granularity of the data should include patient level de-identified data to support the analysis to be performed by BPHC. As part of the UDS+ project, HRSA would like to standardize the data submission protocols, formats and increase the granularity of the data being submitted to support the downstream analysis to be performed.

Read the <a href="usecases.html">Use Cases</a> section to get an idea of the various systems, actors and the data flow requirements. 

### Guiding Principles for the IG

The following are the guiding principles for the UDS+ IG.

* Reduce provider reporting burden wherever possible by automating the reporting capabilities. 
* Align with existing standards (e.g., Health Level 7 (HL7) Fast Healthcare Interoperability Resources (FHIR), and regulations (e.g., ONC 2015 Edition, 2015 Edition Cures Update, Trusted Exchange Framework and Common Agreement (TEFCA), etc.) while improving the timeliness and completeness of data received by HRSA.
 

### IG In-Scope Requirements

The following requirements are in-scope for the UDS+ IG based on the use cases.

* Define the API mechanisms, Inputs, and Outputs used to access data from the EHRs/IT systems (Data Sources) and exchange data.
* Define the mechanisms used to start the data submission workflows. 
* Define the provisioning mechanisms used to automate the triggering and submission of data. 
* Define trust services (e.g., pseudonymization, anonymization, de-identification, hashing) needed to ensure de-identified data is sent from the health centers to HRSA.
* Define an alternative mechanism for health centers to submit data using XML files when submitting data using FHIR is not an option.

### IG Out-of-Scope 

The following aspects are out-of-scope for the UDS+ IG based on the use cases.

* Changes to the Data Source (e.g., EHR) data capture screens and/or changes to clinical workflows. Providers may use their choice of apps/screens/systems to enter the data independent of the IG.
* Policies and processes followed by health centers to allow data sharing, collecting of consent, or compliance with regulatory requirements.
* Mechanisms to identify the patients for whom the data needs to be submitted to HRSA is not-in-scope.

### Underlying Specifications

This guide is based on the [HL7 FHIR R4]({{site.data.fhir.path}}index.html) standard, as well as [US Core IG]({{site.data.fhir.uscoreR4}}/index.html), [Bulk Data Access IG]({{site.data.fhir.bullkig}}/index.html), [SMART App Launch IG for Backend Services Authorization]({{site.data.fhir.smartapplaunch}}/backend-services.html), [Data Exchange for Quality Measures - DEQM]({{site.data.fhir.deqm}}/index.html) and [QI Core]({{site.data.fhir.qicore}}/index.html) IG.

Implementers of the UDS+ IG must understand some basic information about the underlying specifications listed above.

#### Relationship between UDS+ IG and US Core FHIR IG  

The UDS+ IG is built on other FHIR specifications, including the [US Core IG]({{site.data.fhir.uscoreR4}}/index.html). The UDS+ IG will use US Core IG profiles as required for the reporting use cases. In addition to the profiles, the patient level FHIR APIs specified in US Core will be leveraged as needed. The version of the US Core IG referenced is the one that supports United States Core Data for Interoperability (USCDIv2) as required in the Office of the National Coordinator (ONC) 21<sup>st</sup> Century Cures Act certification criteria and the SVAP versions adopted.

#### Relationship between UDS+ IG and FHIR Bulk Data Access IG
 
UDS+ will leverage the [Bulk Data Access IG]({{site.data.fhir.bulkig}}/index.html) to access data about multiple patients. The Bulk Data Access IG is used to retrieve population level information from EHRs, subject to applying appropriate authorities and policies. The version of the Bulk Data Access IG referenced is the one that supports the USCDIv2 required in the ONC 21<sup>st</sup> Century Cures Act certification criteria and the SVAP versions adopted.


#### Relationship between UDS+ IG and SMART App Launch IG

The UDS+ IG uses [SMART App Launch IG for Backend Services Authorization]({{site.data.fhir.smartapplaunch}}/backend-services.html) to secure all system-to-system interactions among the various actors in the IG. The version of the SMART App Launch IG referenced is the one that supports USCDIv2 as required in the ONC 21<sup>st</sup> Century Cures Act certification criteria and the SVAP versions adopted.

#### Relationship between UDS+ IG and QI Core IG

The UDS+ IG uses [QI Core IG]({{site.data.fhir.qicore}}/index.html) to use profiles that are relevant for quality measure reporting. HRSA receives data related to multiple quality measures and reusing the QI Core profiles reduces implementer burdn. 

#### Relationship between UDS+ IG and DEQM IG

The UDS+ IG uses [DEQM]({{site.data.fhir.deqm}}/index.html) to submit quality measure data from the health centers to HRSA. The various operations defined in the DEQM framework is used to submit the quality measure data as appropriate.

