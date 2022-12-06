### Introduction

The deidentify operation is to be used by the Health Centers to de-identify the data containing PHI/PII. The approach for de-identification is as follows:

* Remove all identifiable data from EHR generated exports. This is accomplished by taking the input US Core or equivalent profiles and populating the equivalent UDS Plus profiles which will not contain the identifiable data.

* The operation takes a Parameters resource that contains the links to the identifiable NDJSON files and will return back a set of NDJSON files that does not contain the identifiable data.