#!/bin/bash

# Run all scripts in sequence

./scripts/1-login.sh
./scripts/2-create-resource-group.sh
./scripts/3-create-storage-accounts.sh
./scripts/4-configure-blob-storage.sh
./scripts/5-configure-access-controls.sh
./scripts/6-configure-lifecycle-management.sh
./scripts/7-enable-static-website.sh
./scripts/8-generate-sas-token.sh
./scripts/9-configure-replication.sh
./scripts/10-setup-backup.sh