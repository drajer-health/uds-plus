This section provides an overview of the reporting approaches that can be used by the health centers to report the various data elements identified in [UDS+ Data Elements](dataelements.html) to HRSA.
At a high level, there are three approaches that can be used by the health centers to report data to HRSA as part of the UDS+ program. These include 

* Reporting using FHIR APIs
* Reporting using File Upload
* Hybrid Approach: Reporting using both FHIR APIs and File Upload

### Reporting using FHIR APIs

Health Centers using systems that are FHIR enabled (e.g., Certified EHRs for Cures Update) can use FHIR APIs to submit UDS+ data to HRSA. An overview of this approach is detailed at [UDS+ Data Submission using FHIR](usecases.html#uds-data-submission-workflow-using-fhir).

The requirements to be implemented by the various actors to support reporting using FHIR is outlined in [FHIR API based Reporting][spec.html)

### Reporting using File Upload

Health Centers may also use File Upload capability provided by HRSA Portals to upload the data manually to submit the UDS+ data to HRSA. An overview of this approach is detailed at [UDS+ Data Submission using File Upload](usecases.html#uds-data-submission-workflow-using-file-upload).

The requirements to be implemented by the various actors to support reporting using File Upload is outlined in [File Upload based Reporting][fileupload.html)

### Hybrid Approach: Reporting using both FHIR APIs and File Upload

Health Centers may choose to use both FHIR APIs and File Upload based on the capabilities of their Data Sources (e.g., EHRs and other systems). In order to use both FHIR APIs and File Upload, Health Centers have to follow the guidance outlined in the above sections. 

### Quality Measures and Reporting Approaches

Quality Measure computation and reporting is a complex task and may involve multiple systems and human interventions to compute the measures properly. The quality reporting eco-system is rapidly evolving to utilize existing standards such as HL7 FHIR Measure Report (Individual and Summary), HL7 QRDA Category III (Summary or Aggregate), HL7 QRDA Category I (Individual) to automate reporting and processing of the reports. However computation of the Measure Reports or what data to be included in the individual report is still not automated widely in the industry.  HRSA recognizes this state of the industry where Quality Measure standards will continue to evolve and hence provides the following options for reporting Table 6B and Table 7 data elements associated with quality measures.

#### Submit De-identified FHIR Resources associated with the Patients for the identified population

In this approach, the Health Centers will work with their Data Sources (e.g., EHR vendors) to extract the data required for the computation of the different measures as identified in the [UDS+ Data Elements and FHIR Mapping](dataelements.html#analysis-of-the-table-6b-and-7-quality-of-care-measures-and-health-outcomes-and-disparities). These resources when extracted from the EHR will contain identifiable data and has to be de-identified before submitting to HRSA. 

This is the preferred approach for UDS+. In this approch, HRSA will perform the quality measure outcome computation using the provided FHIR resources. 

#### Submit FHIR Measure Report when computed results are readily available 

In certain cases, health centers may be using systems and other resources who are computing the quality measure results as required for UDS+ reporting. In this case, the health centers may create a FHIR Measure Report for aggregate data and then submit the Measure Report using the [DEQM submit-data]({{site.data.fhir.deqm}}/index.html) operation.
 
In this case, the measure outcomes are computed by the health centers and reported to HRSA.

#### Submit Measure Data using File Upload option

Some health centers may already be reporting the quality measure data using Excel or other mechanisms which is created by a combination of systems and humans. These health centers may not be able to update their infrastructure in time to perform FHIR API based reporting. In these cases, the health center may format the data in the prescribed XML format and submit the data to HRSA using the File Upload capability.

In this case, the measure outcomes are computed by the health centers and reported to HRSA.


