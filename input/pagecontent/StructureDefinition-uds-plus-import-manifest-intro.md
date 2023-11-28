

### Introduction

This profile is used to represent the manifest file information that is submitted to the $import operation.  

**Representing Health Center Information**

Health Centers have to provide the following information as part of the manifest.

* UEI Number:  Unique Entity Identifier (UEI) is a unique number assigned by SAM (System for Awards Management) to all entities who register to do business with the federal government.

* Grant Number: This is comprised of the activity code and the serial number for the particular grant. This number, once assigned does not change for the life of the grant. The activity code which is used to form the static grant number is the activity code which the grant is currently tied to.  When a new grant is created, the static Grant Number now gets populated from within the code. Examples of grant numbers include "H80CS##### and LALCS#####" where the [#####] is substituted with the actual value.

* Health Center Contact Person has to be provided with a First and Last Name.

* Health Center Address has to be provided. 

* Health Center Contact phone number has to be provided. 

**Providing Security Tokens**

A Health Center may wish to make sure that the HRSA Data Receiver provide a security token during the download of the UDS Plus data. In order to facilitate these tokens, the Data Submitter may echo a "security token" of type "bearer" in the manifest file for each UDS Plus file that needs to be downloaded. This bearer token will be echo'ed back by the Data Receiver in the HTTP header during the download process. This further enhances the security protocols between the Data Submitter and the Data Receiver systems. 