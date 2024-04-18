This section provides examples of Request and Responses that can be used by implementers to better understand the interactions.

### POST <Server URL> $import - Example with Manifest body 

```
{
    "meta": {
        "extension": [
            {
                "valueString": "UDS+ Manifest File Example",
                "url": "http://hl7.org/fhir/StructureDefinition/instance-name"
            },
            {
                "valueMarkdown": "This is an example of a Manifest file submitted as a parameter to the UDS+ $import operation.",
                "url": "http://hl7.org/fhir/StructureDefinition/instance-description"
            }
        ],
        "profile": [
            "http://hl7.org/fhir/us/uds-plus/StructureDefinition/uds-plus-import-manifest"
        ]
    },
    "parameter": [
        {
            "name": "inputFormat",
            "valueCode": "fhir+ndjson"
        },
        {
            "part": [
                {
                    "valueString": "12343434",
                    "name": "uei"
                },
                {
                    "valueString": "H80CS34333",
                    "name": "grantNumber"
                },
                {
                    "valueString": "FQHC_Utah",
                    "name": "hcName"
                },
                {
                    "valueAddress": {
                        "city": "Atlanta",
                        "line": [
                            "123 Rocky point place"
                        ],
                        "postalCode": "23434",
                        "state": "GA"
                    },
                    "name": "hcAddress"
                },
                {
                    "name": "hcContactPerson",
                    "valueHumanName": {
                        "given": [
                            "Elizabeth"
                        ],
                        "family": "Taylor"
                    }
                },
                {
                    "valueContactPoint": {
                        "system": "phone",
                        "value": "234-234-5648"
                    },
                    "name": "hcContactPhone"
                },
                {
                    "name": "hcPrenatalCareByReferralOnly",
                    "valueBoolean": true
                }
            ],
            "name": "hcInformation"
        },
        {
            "name": "importProtocol",
            "valueCode": "https"
        },
        {
            "valueString": "8600c",
            "name": "submissionId"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "AllergyIntolerance"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/AllergyIntolerance.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "Condition"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/Condition.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "Coverage"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/Coverage.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "Encounter"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/Encounter.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "Immunization"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/Immunization.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "MedicationRequest"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/MedicationRequest.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "MedicationStatement"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/MedicationStatement.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "Observation"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/Income.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "Observation"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/SexualOrientation.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "Observation"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/Observation.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "Parameters"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/ReportingParameters.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "Patient"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/Patient.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "Procedure"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/Procedure.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "RelatedPerson"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/RelatedPerson.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        },
        {
            "part": [
                {
                    "name": "type",
                    "valueCode": "ServiceRequest"
                },
                {
                    "name": "url",
                    "valueUrl": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/ServiceRequest.ndjson"
                },
                {
                    "name": "expirationTime",
                    "valueDateTime": "2023-12-31T11:58:07-08:00"
                }
            ],
            "name": "udsData"
        }
    ],
    "id": "example",
    "resourceType": "Parameters"
}

```

#### Import Response Screnshot showing the Content-Location to be used for submission status polling

This screenshot below shows an example response that has a HTTP Status of 201 - Accepted and the Content-Location URL that should be used for polling.

{% include img.html img="importresponse.png" caption="Figure 12.1 - Import Response example showing Content-Location Header" %}

The example Content-Location URL is : http://localhost:8081/status/FQHC_Utah/8600c which can be used for polling. In the real-world, the content location polliing request also uses https and access tokens before you can get the status of the submission.



#### Submission Status Polling: Successful Import Response obtained by calling GET <Content Location URL>

When the Data Submitter performs a poll and if the import is successful, a response such as below will be provided.

``` 
{
    "resourceType": "OperationOutcome",
    "id": "63c46155-28e0-40e0-a32c-89de95675f0c",
    "text": {
        "status": "generated",
        "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">$import is successfully processed</div>"
    },
    "issue": [
        {
            "id": "4c9c927b-e0ba-48dd-b436-cdc140b1aa0a",
            "severity": "information",
            "code": "informational",
            "details": {
                "coding": [
                    {
                        "code": "information",
                        "display": "$import is successfully processed"
                    }
                ]
            }
        }
    ]
}
```

#### Submission Status Polling: Failure of an $import Request due to bad URLs obtained by calling GET <Content-Location-URL>


```
[
    {
        "issue": [
            {
                "severity": "error",
                "code": "exception",
                "details": {
                    "coding": [
                        {
                            "code": "error",
                            "display": "Invalid Resource Download URL"
                        }
                    ]
                },
                "id": "1f6f15fc-3138-4b9f-8e74-a7af8f5d6007"
            },
            {
                "severity": "information",
                "code": "informational",
                "details": {
                    "coding": [
                        {
                            "code": "health_center_name",
                            "display": "FQHC_Utah"
                        }
                    ]
                },
                "id": "1e3d06a5-ad20-4d2a-8131-0b5ad641d895"
            },
            {
                "severity": "information",
                "code": "informational",
                "details": {
                    "coding": [
                        {
                            "code": "submission_id",
                            "display": "8600a"
                        }
                    ]
                },
                "id": "b69c0f8c-8ee5-47ca-ba99-978fae5ac8a7"
            },
            {
                "severity": "information",
                "code": "informational",
                "details": {
                    "coding": [
                        {
                            "code": "resource_type",
                            "display": "Observation"
                        }
                    ]
                },
                "id": "df8fc8c3-1038-4f6d-a738-114748135ff3"
            },
            {
                "severity": "information",
                "code": "informational",
                "details": {
                    "coding": [
                        {
                            "code": "resource_file_name",
                            "display": "SexualOrientati.ndjson"
                        }
                    ]
                },
                "id": "ee655aa4-29b4-4ea8-bdf6-70f2a90a56a7"
            },
            {
                "severity": "information",
                "code": "informational",
                "details": {
                    "coding": [
                        {
                            "code": "resource_url",
                            "display": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/SexualOrientati.ndjson"
                        }
                    ]
                },
                "id": "7984c645-c77c-4416-842b-ce2f580f4bac"
            }
        ],
        "id": "28b45d47-9e3f-418f-a2fe-eddf7df41026",
        "text": {
            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/SexualOrientati.ndjson</div>",
            "status": "generated"
        },
        "resourceType": "OperationOutcome"
    },
    {
        "issue": [
            {
                "severity": "error",
                "code": "exception",
                "details": {
                    "coding": [
                        {
                            "code": "error",
                            "display": "Invalid Resource Download URL"
                        }
                    ]
                },
                "id": "1f6f15fc-3138-4b9f-8e74-a7af8f5d6007"
            },
            {
                "severity": "information",
                "code": "informational",
                "details": {
                    "coding": [
                        {
                            "code": "health_center_name",
                            "display": "FQHC_Utah"
                        }
                    ]
                },
                "id": "1e3d06a5-ad20-4d2a-8131-0b5ad641d895"
            },
            {
                "severity": "information",
                "code": "informational",
                "details": {
                    "coding": [
                        {
                            "code": "submission_id",
                            "display": "8600a"
                        }
                    ]
                },
                "id": "b69c0f8c-8ee5-47ca-ba99-978fae5ac8a7"
            },
            {
                "severity": "information",
                "code": "informational",
                "details": {
                    "coding": [
                        {
                            "code": "resource_type",
                            "display": "Observation"
                        }
                    ]
                },
                "id": "df8fc8c3-1038-4f6d-a738-114748135ff3"
            },
            {
                "severity": "information",
                "code": "informational",
                "details": {
                    "coding": [
                        {
                            "code": "resource_file_name",
                            "display": "SexualOrientati.ndjson"
                        }
                    ]
                },
                "id": "ee655aa4-29b4-4ea8-bdf6-70f2a90a56a7"
            },
            {
                "severity": "information",
                "code": "informational",
                "details": {
                    "coding": [
                        {
                            "code": "resource_url",
                            "display": "https://udsplusblobstorage.blob.core.windows.net/importsuccessfulfiles/SexualOrientati.ndjson"
                        }
                    ]
                },
                "id": "7984c645-c77c-4416-842b-ce2f580f4bac"
            },
            {
                "severity": "error",
                "code": "exception",
                "details": {
                    "coding": [
                        {
                            "code": "error",
                            "display": "Resource Download Failed"
                        }
                    ]
                },
                "id": "66e39819-1414-4a6d-a284-ad5b63e44fee"
            }
        ],
        "id": "28b45d47-9e3f-418f-a2fe-eddf7df41026",
        "text": {
            "div": "<div xmlns=\"http://www.w3.org/1999/xhtml\">Resource Download Failed</div>",
            "status": "generated"
        },
        "resourceType": "OperationOutcome"
    }
]

```


#### Subsmission Status Polling: Screenshots showing X-Progress header obtained by GET <Content-Location URL>

The screenshot below shows example of X-Progress header for an import operation that is not yet complete

{% include img.html img="inprogress-submission.png" caption="Figure 12.2 - X-Progress Header for submission which is not completed" %}

The screenshot below shows example of X-Progress header for an import operation that is completed successfully

{% include img.html img="completed-submission.png" caption="Figure 12.3 - X-Progress Header for submission which is completed successfully" %}

The screenshot below shows example of X-Progress header for an import operation that failed

{% include img.html img="failed-submission.png" caption="Figure 12.4 - X-Progress Header for submission which has failed" %}
