

### Introduction

Healthcenters are enouraged to use the uds-plus-sex-extension to capture the sex of the patient. This is in alignment with the CMS Sex codes and the UDS Manual. However, this change was implemented recently and in order to allow Healthcenters and their vendors who have already tested the 2024 reporting changes the uds-plus-birthsex-extension is still part of the patient profile. The uds-plus-birthsex-extension is also enhanced to allow the CMS sex codes in addition to the HL7 AdministrativeGender codes that were previously allowed. The cardinality is relaxed from 1..1 to 0..1 but one of either uds-plus-sex or uds-plus-birthsex-extension should be present.
For 2025 reporting, uds-plus-birthsex-extension will be removed and hence vendors are encouraged to transition to use uds-plus-sex extension.
