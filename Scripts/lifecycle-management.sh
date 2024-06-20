#!/bin/bash

# Configure data archiving lifecycle management
lifecyclePolicy='{
  "rules": [
    {
      "enabled": true,
      "name": "archiveRule",
      "type": "Lifecycle",
      "definition": {
        "actions": {
          "baseBlob": {
            "tierToArchive": {
              "daysAfterModificationGreaterThan": 30
            }
          }
        },
        "filters": {
          "blobTypes": ["blockBlob"]
        }
      }
    }
  ]
}'
echo $lifecyclePolicy > lifecycle.json
az storage account management-policy create --account-name mediastandardstorage --resource-group MediaResourceGroup --policy @lifecycle.json
rm lifecycle.json