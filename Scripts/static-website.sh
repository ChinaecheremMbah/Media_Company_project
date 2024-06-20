#!/bin/bash

# Enable static website hosting

az storage blob service-properties update --account-name mediastandardstorage --static-website --404-document error.html --index-document index.html