
#!/bin/bash
# Set up Azure Backup for VMs and databases
az extension add --name azure-backup
az backup vault create --resource-group MediaResourceGroup --name MediaBackupVault --location eastus

backupPolicy='{
  "schedulePolicy": {
    "scheduleRunFrequency": "Daily",
    "scheduleRunTimes": ["2023-12-20T02:00:00Z"]
  },
  "retentionPolicy": {
    "retentionPolicyType": "LongTermRetentionPolicy",
    "dailySchedule": {
      "retentionTimes": ["2023-12-20T02:00:00Z"],
      "retentionDuration": {
        "count": 30,
        "durationType": "Days"
      }
    }
  }
}'
echo $backupPolicy > backupPolicy.json
az backup policy set --resource-group MediaResourceGroup --vault-name MediaBackupVault --name DailyBackupPolicy --backup-management-type AzureIaasVM --policy @backupPolicy.json
rm backupPolicy.json
