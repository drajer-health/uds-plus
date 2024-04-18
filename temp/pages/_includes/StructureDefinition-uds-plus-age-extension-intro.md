

### Introduction

This extension is used to convey the age of the patient at a specific point in time. 
The [HHS De-identification Guidance](https://www.hhs.gov/sites/default/files/ocr/privacy/hipaa/understanding/coveredentities/De-identification/hhs_deid_guidance.pdf) is to be followed to ensure appropriate level of de-identification is performed on the age extension.

According to the HHS guidance, for patients whose age is computed to be greater than 89 the de-identification rule requires it be reported as greater > 90 and not report the specific age. 

{:.stu-note}
The following is new content for 1.0.2.

<div class="bg-success" markdown="1">

**Representing Age > 89 **

Since Age is represented as a valueQuantity data type the following method should be used to represent Age > 89. 

	* Age > 89 : use valueQuantity.value to represent 90, units of a and comparator of ">="
	
</div>