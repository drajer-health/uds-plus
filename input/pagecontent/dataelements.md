This section provides an overview of the UDS+ data elements and their mappings to US Core and QI Core and other IGs as needed.

### UDS+ Data Elements

The UDS+ data elements have been identified in the UDS Reporting Manuals. For the UDS+ project, the following data elements identified in the below UDS tables will be considered for reporting.

* Elements in the Zip Code Data Table 
* Table 3A: Patients by Age and by Sex Assigned at Birth
* Table 3B: Demographic Characteristics
* Table 4: Selected Patient Characteristics
* Table 6A: Selected Diagnoses and Services Rendered
* Table 6B: Quality of Care Measures
* Table 7: Health Outcomes and Disparities

### Analysis of the Zip Code Data Table, Table 3A, Table 3B, Table 4 and Table 6A

The data elements from the above tables have been analyzed to understand the additional data elements that would be needed to be supported by certified EHR technologies as part of the FHIR APIs. This analysis is presented in the table below which identifies the UDS data element, the profiles to be used for UDS+ reporting and the differences between US Core/USCDIv2 and UDS+.


{% include UDS_Data_Elements.html %} 


### Analysis of the Table 6B and 7 (Quality of Care Measures and Health Outcomes and Disparities

UDS+ reports require data to be reported for Quality of Care Measures and also for Health Outcomes and Disparities measures. In order to compute the various populations that fall into the patient population, numerators, denominators, exclusions for the measures the required data elements were identified from the Quality Measure eCQM definitions. These data elements are based of the QDM data elements. These QDM data elements are then mapped to QI Core or UDS+ profiles for reporting purposes. In addition analysis was performed to identify the delta between US Core/USCDIv2 and the data elements required for the computation of the quality measures. This analysis will aid in the decision making on how to best align the ONC USCDI+ data elements to Federal Agency requirements in future versions of USCDI and USCDI+.

The analysis is presented in the table below.

{% include UDS_Quality_Measures.html %}

 