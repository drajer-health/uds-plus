<?xml version="1.0" encoding="UTF-8"?>
<sch:schema xmlns:sch="http://purl.oclc.org/dsdl/schematron" queryBinding="xslt2">
  <sch:ns prefix="f" uri="http://hl7.org/fhir"/>
  <sch:ns prefix="h" uri="http://www.w3.org/1999/xhtml"/>
  <!-- 
    This file contains just the constraints for the profile Patient
    It includes the base constraints for the resource as well.
    Because of the way that schematrons and containment work, 
    you may need to use this schematron fragment to build a, 
    single schematron that validates contained resources (if you have any) 
  -->
  <sch:pattern>
    <sch:title>f:Patient</sch:title>
    <sch:rule context="f:Patient">
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:contained) &lt;= 0">contained: maximum cardinality of 'contained' is 0</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-race-extension']) &gt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-race-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-race-extension']) &lt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-race-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-ethnicity-extension']) &gt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-ethnicity-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-ethnicity-extension']) &lt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-ethnicity-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-birthsex-extension']) &gt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-birthsex-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-birthsex-extension']) &lt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-birthsex-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-age-extension']) &gt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-age-extension': minimum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-age-extension']) &lt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-age-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-gender-identity-extension']) &lt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-gender-identity-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/udsplus-agriculture-worker-status']) &lt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/udsplus-agriculture-worker-status': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-housing-status-extension']) &lt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-housing-status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-veteran-status-extension']) &lt;= 1">extension with URL = 'http://fhir.org/guides/hrsa/uds-plus/StructureDefinition/uds-plus-veteran-status-extension': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:identifier) &lt;= 0">identifier: maximum cardinality of 'identifier' is 0</sch:assert>
      <sch:assert test="count(f:name) &lt;= 0">name: maximum cardinality of 'name' is 0</sch:assert>
      <sch:assert test="count(f:telecom) &lt;= 0">telecom: maximum cardinality of 'telecom' is 0</sch:assert>
      <sch:assert test="count(f:birthDate) &lt;= 0">birthDate: maximum cardinality of 'birthDate' is 0</sch:assert>
      <sch:assert test="count(f:address) &gt;= 1">address: minimum cardinality of 'address' is 1</sch:assert>
      <sch:assert test="count(f:address) &lt;= 1">address: maximum cardinality of 'address' is 1</sch:assert>
      <sch:assert test="count(f:maritalStatus) &lt;= 0">maritalStatus: maximum cardinality of 'maritalStatus' is 0</sch:assert>
      <sch:assert test="count(f:multipleBirth[x]) &lt;= 0">multipleBirth[x]: maximum cardinality of 'multipleBirth[x]' is 0</sch:assert>
      <sch:assert test="count(f:photo) &lt;= 0">photo: maximum cardinality of 'photo' is 0</sch:assert>
      <sch:assert test="count(f:contact) &lt;= 0">contact: maximum cardinality of 'contact' is 0</sch:assert>
      <sch:assert test="count(f:generalPractitioner) &lt;= 0">generalPractitioner: maximum cardinality of 'generalPractitioner' is 0</sch:assert>
      <sch:assert test="count(f:managingOrganization) &lt;= 0">managingOrganization: maximum cardinality of 'managingOrganization' is 0</sch:assert>
      <sch:assert test="count(f:link) &lt;= 0">link: maximum cardinality of 'link' is 0</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address</sch:title>
    <sch:rule context="f:Patient/f:address">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:use) &lt;= 1">use: maximum cardinality of 'use' is 1</sch:assert>
      <sch:assert test="count(f:type) &lt;= 1">type: maximum cardinality of 'type' is 1</sch:assert>
      <sch:assert test="count(f:text) &lt;= 0">text: maximum cardinality of 'text' is 0</sch:assert>
      <sch:assert test="count(f:line) &lt;= 0">line: maximum cardinality of 'line' is 0</sch:assert>
      <sch:assert test="count(f:city) &lt;= 1">city: maximum cardinality of 'city' is 1</sch:assert>
      <sch:assert test="count(f:district) &lt;= 1">district: maximum cardinality of 'district' is 1</sch:assert>
      <sch:assert test="count(f:state) &lt;= 1">state: maximum cardinality of 'state' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &gt;= 1">postalCode: minimum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:postalCode) &lt;= 1">postalCode: maximum cardinality of 'postalCode' is 1</sch:assert>
      <sch:assert test="count(f:country) &lt;= 1">country: maximum cardinality of 'country' is 1</sch:assert>
      <sch:assert test="count(f:period) &lt;= 1">period: maximum cardinality of 'period' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address/f:postalCode</sch:title>
    <sch:rule context="f:Patient/f:address/f:postalCode">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:extension[@url = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason']) &lt;= 1">extension with URL = 'http://hl7.org/fhir/StructureDefinition/data-absent-reason': maximum cardinality of 'extension' is 1</sch:assert>
      <sch:assert test="count(f:value) &lt;= 1">value: maximum cardinality of 'value' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
  <sch:pattern>
    <sch:title>f:Patient/f:address/f:postalCode/f:extension</sch:title>
    <sch:rule context="f:Patient/f:address/f:postalCode/f:extension">
      <sch:assert test="count(f:id) &lt;= 1">id: maximum cardinality of 'id' is 1</sch:assert>
      <sch:assert test="count(f:url) &gt;= 1">url: minimum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:url) &lt;= 1">url: maximum cardinality of 'url' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &gt;= 1">value[x]: minimum cardinality of 'value[x]' is 1</sch:assert>
      <sch:assert test="count(f:value[x]) &lt;= 1">value[x]: maximum cardinality of 'value[x]' is 1</sch:assert>
    </sch:rule>
  </sch:pattern>
</sch:schema>
