# ransforming Raw Sports Data into Actionable Insights with Automated Data Pipelines on Azure

## Overview
This project demonstrates a robust end-to-end data engineering pipeline built entirely on Microsoft Azure. It involves designing, implementing, and automating scalable workflows for real-time data ingestion, transformation, storage, and reporting. The pipeline is fully managed and deployed using Azure DevOps for continuous integration and delivery (CI/CD).


## Data Architechture


     
## Technology Used

1. Programming Language - Python 
2. Scripting Language - SQL 
3. Cloud Platform: Azure
   - Azure Data Factory
   - Azure Data lake Storage
   - Azure Devops
   - Azure Databricks
   - Azure Synapse
4. Data Management: Delta Table



## Step 1. Environment Setup

Created and configured Azure account with necessary resource groups.     <br>
Provisioned essential Azure services:     <br>

Azure Data Factory               <br>
Azure Data Lake Storage Gen2     <br>
Azure Databricks                 <br>
Azure Synapse Analytics          <br>
Azure DevOps for CI/CD           <br>



## Step 2: Data Ingestion


Sources: Simulated data streams from CSV files and APIs.     <br>
Azure Data Factory:     <br>
     Configured pipelines for scheduled/real-time ingestion.     <br>
     Connected to APIs via HTTP connectors and to files via blob and lake connectors.     <br>
     Loaded raw data into Azure Data Lake Storage.     <br>



## Step 3: Data Storage
Azure Data Lake Storage Gen2:                    <br>
Used to store raw, staged, and transformed data.     <br>
Followed structured folder hierarchy:                <br>
 - raw data as Bronze Layer                             <br>
 - staging data as Silver Layer                         <br>
 - processed data as Gold Layer                         <br>



### Step 4: Data Processing & Transformation
Azure Databricks:                                   
 - Developed notebooks using PySpark for data cleaning, transformation, and enrichment.
 - Handled tasks such as filtering, aggregation, and schema alignment.

Delta Lake:
 - Implemented for reliable and performant storage.
 - Enabled ACID transactions, versioning, and time travel features.

### Step 5: Data Querying
Azure Synapse Analytics:
 - Connected to processed Delta tables.
 - Performed complex SQL queries and created analytical datasets for reporting.

### Step 6: Pipeline Automation & CI/CD
Azure DevOps:
- Created CI/CD pipelines for version control, automated deployment, and monitoring.
- Enabled consistent deployment of data factory pipelines and Databricks notebooks across environments.




## Dataset used

Original data source: https://www.kaggle.com/datasets/piterfm/paris-2024-olympic-summer-games?select=results
