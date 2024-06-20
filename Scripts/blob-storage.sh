#!/bin/bash

# Configure Blob Storage
STORAGE_KEY=$(az storage account keys list --resource-group MediaResourceGroup --account-name mediastandardstorage --query '[0].value' --output tsv)
az storage container create --name mediafiles --account-name mediastandardstorage --account-key $STORAGE_KEY --public-access off