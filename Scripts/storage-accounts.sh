#!/bin/bash

# Create Standard and Premium storage accounts

az storage account create --name mediastandardstorage --resource-group MediaResourceGroup --location eastus --sku Standard_LRS
az storage account create --name mediapremiumstorage --resource-group MediaResourceGroup --location eastus --sku Premium_LRS