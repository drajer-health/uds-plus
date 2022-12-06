### Introduction

The import operation is to be used by the Health Centers to submit data to HRSA. The import operation takes a [Manifest](StructureDefinition-uds-plus-import-manifest.html) which contains the links of all the data that needs to be submitted to HRSA. This import operation resembles the Bulk Import operation proposed by the Bulk Data team but is not currently part of the FHIR specifications or Implementation Guides.

The Health Center can also check on the status of the import operation using the status location provided in the import response. This allows the Health Center to determine if the data has been successfully imported and validated by HRSA.

In this version of the IG only the NDJSON files are supported as the file format and the protocol to be used for importing is HTTPS with appropriate authorization. 

