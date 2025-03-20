### Change History

The following is a list of all the changes based on versions.

#### Changes made from 1.1.0 to 2.0.0

1. Added validations for ensuring dates are in the range between 1900 and 2030
2. Added validations for postalCode to ensure only digits are supported for both regular and extended format.
3. Added validations for Age to be > 0
5. Allowed for null flavors in Coverage.type value set
6. Added validations for income observations to ensure data is represented as per the specification
7. Added example for income observation with only Range.high values
8. Removed Gender Identity extension and related artifacts
9. Removed Sexual Orientation profile and related artifacts
10. Added school-based site as a service delivery location
11. Added uds-plus-sex-extension to be used instead of uds-plus-birthsex-extension.
12. Updated uds-plus-sex-codes to accommodate the CMS Sex codes value set.
13. Updated eCQM versions in DataElements table to match the 2024 UDS Manual.

#### Changes made from 1.0.0 to 1.1.0

1. Added support for Partial Submissions supporting Health Centers with multiple EHRs and/or multiple reporting sites.
2. Added support for incremental submissions to support efficient data corrections during resubmissions.
3. Added support for re-submissions with partial and incremental submission concepts
4. Added uds-plus-observation to support Assessments, Vitals, Physical Exams and Social History observations. - #24
5. Added guidance for de-identification of patients > 89 years.
6. Added Live Birth weight LOINC code to UDS Data Elements Mapping Table. - #32
7. Updated Breast Cancer Screening Mappings to remove Result entries. - #33
8. Updated Medication, Active mappings to use either MedicationStatement or MedicationRequest to align with US Core. - #26
9. Added clarifications on UDS+ and US Core relationships. - #1 
10. Added guidance on Encounter reason and service Provider organization. - #2
11. Updated UDS+ Encounter profile to allow multiple participants to be compatible with US Core. - #4
12. Updated UDS+ Data Elements Table Header to point to the right US Core version of 6.1.0 - #5
13. Removed Bodysite data element from ServiceRequest as MUST SUPPORT - #30
14. Added guidance on removing submitted files. - #23 
15. Added additional guidance on quality reporting. - #15
16. Updated Age related constraints in the profiles to follow de-identification requirements.
17. Updated all profiles to add constraints related to dates, Periods and Timing to follow de-identification requirements.
18. Added extension to support de-identified instant data type, which is used in Observations to capture instant with a precision upto YEAR only.




#### Changes made from 1.0.0 to 1.0.1

1. Removed mentions of alternate submission mechanisms from Background.
2. Clarified MUST SUPPORT definition in the specification to deal with data elements that may not be present in the mapping tables but are present in the UDS+ profiles.
3. Updated Coverage to make capitatedMemberMonths and feeForServiceMemberMonths as optional.
4. Added clarifications on Income Observation to represent > 200% using valueQuantity instead of valueRange.
5. Change Income Observation to allow valueQuantity along with valueRange.
6. Added explicit requirements to Data Submitter to not submit data elements not specified in the UDS+ profiles.
7. Added explicit requirements to Data Receiever to reject submission when a Data Submitter submits data elements not specified in the UDS+ profiles.
8. Removed aggregate reporting option from reporting guidance.
9. Added clarification to Data Submitter quality reporting to include only patients who meet the criteria for the Initial Patient Population. 
10. Added partial submission requirements as part of the Data Submitter requirements.
11. Added partial submission requirement validation for Data Receiver.
12. Added information for on-boarding process as part of the reporting guidance.
13. Added submissionTime to Manifest file. 
14. Updated data mapping tables to remove blank rows and mappings not necessary.
15. Added examples for Requests and Responses as part of the Implementation Guidance.
16. Updated capability statements to use UDS+ profiles instead of US Core profiles.

#### Changes made from 0.4.1 to 1.0.0

1. Added cardinality constraints for Healthcare information in the Manifest file.
2. Enhanced Race, Ethnicity, Birth Sex, Sexual Orientation, Gender Identity constraints for inferno based testing and updated examples. 
3. Added prenatalReferralOnly Indicator to Manifest file.
4. Added guidance in mapping tables for Prenatal data and Live Birth Weight data.
5. Removed dependencies on QI core and enabled QI core extensions within UDS+ IG on Procedure.
6. Added guidance for school based service location indication on Encounter page.
7. Removed RelatedPerson demographics information as it is not needed for De-Identified Coverage.
8. Fixed errors related to the Build to enable AdverseEvent, AllergyIntolerance and Observation profiles for Diagnostic Studies. 


#### Changes made from 0.4.0 to 0.4.1

1. Changed grantId to grantNumber in Manifest file.
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