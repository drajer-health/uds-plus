### Change History

The following is a list of all the changes based on versions.

#### Changes made from 0.4.0 to 0.4.1

1. Changed grandId to grantNumber in Manifest file.
2. Added Health Center Contact Person Name, Health Center Address and Contact Person's Phone in Manifest.  
3. Added support for bearer token as part of the protocol for each resource link.
4. Added support for funding streams as part of the Reporting Parameters profile. 
5. Added support for all reports in the Reporting Parameters profile.
6. Added notes for Manifest and Reporting Parameters profiles.
7. Added eCQM mappings for HbA1c poor control(CMS122) and Controlling High Blood Pressure.(CM165)
8. Updated examples fixing errors for all UDS Plus De-identified resources.
9. Fixed issues with MedicationRequest and MedicationStatement profiles to enable their display.

#### Changes made from 0.3.0 to 0.4.0

1. Added dataAbsentReason for Patient.address.postalCode to support masking and reporting for UDS+
2. Added InsuranceCodes for Coverage resource profile to match values needed for UDS+ tables
3. Added preferredIndicator to Patient.language for computation of Table 3B
4. Verified support for 2023 reporting Race and Ethnicity Values derivation for Table 3B
5. Updated Coverage Resource profile
6. Changed USCore dependency from 5.0.1 to 6.0.0 (USCDI v3)
7. Updated Data Element Mappings.
8. Added guidance for Race, Ethnicity, Sexual Orientation and Gender Identity.
9. Added support for dataAbsentReason for IncomeObservation
10. Added extensions to Coverage for capitation months and fee for service months for Table 4.
11. Added mappings for the IVD, HIV Linkage to Care and Dental Sealants measures.
12. Added Grant Number, Health Center Id, Health Center Name to the Manifest
13. Added ability to identify a patient as part of specific tables and reports. 
 

#### Changes for 0.3.0 

1. Updated Use Case Diagram to show the polling of status.
2. Added paragraph on re-submission of UDS+ reports
3. Added paragraph on the submission process and the flexibility to implement Steps 1 through 9 of the Use Case workflow.
4. Updated implementation guidance with sequence diagrams for Step 9 and 10a, 10b.
5. Updated Data Source Requirements for SMART on FHIR and Group Export operation requirements 
6. Updated Data Source Requirements to specify Group Management capabilities.
7. Updated Trust Service Provider requirements for de-identification.
8. Updated Data Receiver Requirements for re-submission.
9. Added Table specific guidance in the reporting guidance. 
10. Removed Implementation Notes and consolidated to Reporting Guidance.
11. Added examples for De-identified profiles.
12. Added examples for UDS+ File Manifest.
13. Updated the following profiles

	* Patient, Encounter, Condition, Parameters - Manifest

#### Changes for 0.2.0 

1. Addition of profiles for De-identified patient data. (Added extensions for agriculture worker status, gender identity, housing status)
2. Addition of linkages from abstract model to implementation details.
3. Added Change History.
4. Addition of codesystems for Agriculture Worker Status, Insurance Type. Housing status.