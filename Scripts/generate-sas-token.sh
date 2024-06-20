#!/bin/bash

# Generate SAS token for secure data transfer

az storage account generate-sas --permissions rwdlacup --account-name mediastandardstorage --services b --resource-types sco --expiry 2024-12-31
