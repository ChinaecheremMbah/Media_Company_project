# Media_Company_project
A media company must guarantee the availability, durability, and security of its digital assets, which include video, audio, and image files. The goal is to devise a detailed storage and data protection strategy using Azure Storage services. 


# Project Discription

This group's main objective is to develop and implement a storage and data protection strategy using Azure Storage services for a media company's digital assets, focusing on availability, durability, security, and streamlined backup and recovery processes.

## The tasks include:
Storage Account Setup: Set up Standard and Premium storage accounts, configure Blob, File, Table, and Queue storage, and apply appropriate access controls and encryption settings.

Blob Storage Implementation: Configure Blob storage for various use cases, including data archiving, static website hosting, and secure data transfer. Implement lifecycle management policies to optimize storage costs.

Data Replication and Redundancy: Configure replication options such as Locally Redundant Storage (LRS), Geo-Redundant Storage (GRS), and Read-Access Geo-Redundant Storage (RA-GRS) to protect data against regional failures.

Backup and Restore: Use Azure Backup to protect VMs, databases, and other critical data. Configure backup policies and retention schedules and perform regular restore tests to ensure data recoverability.

# Azure Storage Solution for Media Company

This document outlines a storage and data protection strategy for your media company using Azure Storage services. It addresses data redundancy, security, backup, and recovery, focusing on efficiency and security.

## Storage Account Setup

Storage Account Types:

Standard Storage Account: This is a cost-effective option for frequently accessed data like active media files. It offers Locally Redundant Storage (LRS) with replicated data within the same data center.

Premium Storage Account: Choose this for performance-critical data like frequently edited videos. It provides high-performance storage with guaranteed IOPS (Input/Output Operations Per Second) and low latency.
Storage Services Configuration:

Blob Storage: Ideal for storing large unstructured data like video, audio, and image files.

File Storage: Use this for structured data like user-generated content or document archives. It provides file system access for applications.

Table Storage: Suitable for storing semi-structured data with a key-value schema, useful for metadata associated with media files.
Queue Storage: Can be used for asynchronous messaging between applications, potentially helpful in media processing workflows.
Access Control and Encryption:

## Implement Azure Active Directory (AAD) for user authentication and authorization.
Use Azure Role-Based Access Control (RBAC) to assign granular access permissions to storage accounts and resources (read, write, delete).
Enable Azure Storage encryption at rest (using keys managed by Microsoft) or with customer-managed keys for enhanced security.
Blob Storage Implementation

## Data Archiving:

Use Blob Storage for long-term archival of older media files.
Configure lifecycle management policies to automatically transition data to cost-optimized storage tiers (e.g., Cool Blob or Archive Blob) based on access patterns.
Static Website Hosting:

Leverage Static Website Hosting with Azure Blob Storage to host a website containing static content (e.g., images, videos).
This is cost-effective for simple websites with minimal server-side processing.

## Secure Data Transfer:

Enable Azure Blob Storage features like Shared Access Signatures (SAS) to grant temporary access to specific data without exposing entire storage accounts.
Use Azure Data Factory or Azure Functions for secure and automated data transfer between on-premises storage and Azure Blob Storage.
Data Replication and Redundancy

## Storage Account Replication Options:

Locally Redundant Storage (LRS): Replicates data within the same data center (cost-effective but vulnerable to regional outages).

Geo-Redundant Storage (GRS): Replicates data to a secondary location in a geographically separate region for disaster recovery.

Read-Access Geo-Redundant Storage (RA-GRS): Similar to GRS but also allows read access from the secondary location for improved disaster recovery capabilities.

Choose the appropriate replication option based on your recovery time objectives (RTO) and recovery point objectives (RPO).

Additional Considerations:

Implement geo-fencing to restrict data access to specific geographic regions for regulatory compliance.
Regularly test disaster recovery procedures to ensure data availability in case of outages.
Backup and Restore

Azure Backup:

Utilize Azure Backup to protect critical data sources like virtual machines hosting media processing applications or databases storing media metadata.
Configure backup policies to schedule automatic backups with predefined retention periods.
Restore Testing:

Conduct regular restore tests to validate backup integrity and ensure data recoverability.
This helps identify potential issues before a real disaster strikes.
Additional Recommendations

Leverage Azure Monitor for logging and activity tracking within your storage accounts.
Implement data encryption in transit using technologies like HTTPS to secure data transfer between applications and Azure Storage.

Regularly review and update your storage and data protection strategy as your media company's needs evolve.
By following these steps and best practices, you can establish a robust and secure storage solution for your media company's digital assets on Azure.

This will ensure data availability, durability, and security while optimizing storage costs. Remember to adapt this plan to your company's specific requirements and data sensitivity levels.

## How to achieve this 

## Prerequisites:

Before Starting, you need 

1. Azure login with subcription 
2. Azure cli install on your windows 

# step 1 : 
 
 install Azure cli https://learn.microsoft.com/en-us/cli/azure/install-azure-cli-windows?tabs=azure-cli

 if you are running the whole process from powershell, that's fine. here we are using Vscode to automate the entire process

 # Step 2 

 install Vscode if you don't have them 

 install Azure cli tools extension 
 