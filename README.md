🚀 Azure Data Engineering Project – Adventure Works

This repository contains a fully hands-on Azure Data Engineering project implementing an end-to-end data pipeline using modern Azure services and the Medallion Architecture (Bronze, Silver, Gold).

The project is inspired by Ansh Lamba and was independently implemented hands-on to gain real-world experience in cloud data engineering.

🏗️ Architecture Overview

The project follows the Medallion Architecture pattern:

    Bronze Layer – Raw data ingestion
    
    Silver Layer – Cleaned & transformed data
    
    Gold Layer – Analytics-ready, business-friendly data

Data Flow:

    GitHub ➝ Azure Data Factory ➝ Azure Blob Storage ➝ Azure Databricks ➝ Azure Synapse ➝ Power BI

🔹 Bronze Layer – Data Ingestion

    Tools Used:
    
        Azure Data Factory
        
        Azure Blob Storage
    
    What was done:
    
        Ingested raw data from GitHub using Azure Data Factory pipelines
        
        Stored raw, unprocessed data in Azure Blob Storage
        
        This stage marks the Bronze layer completion

🔹 Silver Layer – Data Transformation

    Tools Used:
    
        Azure Databricks
        
        Apache Spark
    
    What was done:
    
        Accessed Blob Storage using OAuth-based authentication
        
        Implemented Access Control Lists (ACLs) for secure data access
        
        Performed data cleaning and transformations using Spark (PySpark)
        
        Stored transformed data back to Blob Storage
        
        This stage marks the Silver layer completion

🔹 Gold Layer – Analytics & Visualization

    Tools Used:
    
        Azure Synapse Analytics
        
        Power BI
    
    What was done:
    
        Modeled curated datasets in Azure Synapse Analytics
        
        Prepared data for analytical and reporting use cases
        
        Connected Power BI to create meaningful visualizations
        
        This stage marks the Gold layer completion

🛠️ Technologies & Skills

    Microsoft Azure
    
    Azure Data Factory
    
    Azure Blob Storage
    
    Azure Databricks
    
    Apache Spark
    
    Azure Synapse Analytics
    
    Power BI
    
    Medallion Architecture
    
    OAuth Authentication
    
    Access Control Lists (ACLs)


📌 Key Highlights

    End-to-end cloud data engineering pipeline
    
    Real-world Medallion Architecture implementation
    
    Secure data access using OAuth & ACLs
    
    Hands-on experience with enterprise Azure services
    
    Code written and executed independently


🎥 Reference

    Project inspiration by Ansh Lamba: https://www.youtube.com/watch?v=0GTZ-12hYtU

📬 Feedback & Contributions

    Feedback, suggestions, and improvements are always welcome.    
    
    Feel free to fork, raise issues, or submit pull requests.
