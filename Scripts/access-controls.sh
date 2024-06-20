#!/bin/bash

# Set up access controls and enable encryption
az storage account update --name mediastandardstorage --resource-group MediaResourceGroup --default-action Deny
az storage account update --name mediastandardstorage --resource-group MediaResourceGroup --encryption-services blob