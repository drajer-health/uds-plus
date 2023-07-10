{:.stu-note}
All canonical (Official) URLs will be changed in the future and are not available currently on the web.

### Introduction

The deidentify operation is to be used by the Health Centers to de-identify the data containing PHI/PII. The approach for de-identification is as follows:

* Remove all identifiable data from EHR generated exports. This is accomplished by taking the input US Core or equivalent profiles and populating the equivalent UDS Plus profiles which will not contain the identifiable data.

* The operation takes a [List of Resource URLs](StructureDefinition-uds-plus-deidentify-operation-data-urls-parameter.html) that points to identifiable data in NDJSON format and will return back a set of links to NDJSON files that does not contain the identifiable data. 