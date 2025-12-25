CREATE MASTER KEY ENCRYPTION BY PASSWORD ='<password>' 

CREATE DATABASE SCOPED CREDENTIAL <credential_name>
WITH IDENTITY = 'identity_name'

CREATE EXTERNAL DATA SOURCE silver_source
WITH(
    LOCATION = 'https://<storage_account_name>.dfs.core.windows.net/<silver_container_name>',
    CREDENTIAL = <credential_name>
)

CREATE EXTERNAL DATA SOURCE gold_dest
WITH(
    LOCATION = 'https://<storage_account_name>.dfs.core.windows.net/<gold_container_name>',
    CREDENTIAL = <credential_name>
)

CREATE EXTERNAL FILE FORMAT gold_format
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);


CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION = 'extsales/',
    DATA_SOURCE = gold_dest,
    FILE_FORMAT = gold_format
)
AS
SELECT * from gold.sales;

CREATE EXTERNAL TABLE gold.extcustomers
WITH(
    LOCATION = 'extcustomers/',
    DATA_SOURCE = gold_dest,
    FILE_FORMAT = gold_format
)
AS
SELECT * from gold.customers;

CREATE EXTERNAL TABLE gold.extproduct_categories
WITH(
    LOCATION = 'extproduct_categories/',
    DATA_SOURCE = gold_dest,
    FILE_FORMAT = gold_format
)
AS
SELECT * from gold.product_categories;

CREATE EXTERNAL TABLE gold.extproduct_subCategories
WITH(
    LOCATION = 'extproduct_subCategories/',
    DATA_SOURCE = gold_dest,
    FILE_FORMAT = gold_format
)
AS
SELECT * from gold.product_subCategories;

CREATE EXTERNAL TABLE gold.extproducts
WITH(
    LOCATION = 'extproducts/',
    DATA_SOURCE = gold_dest,
    FILE_FORMAT = gold_format
)
AS
SELECT * from gold.products;

CREATE EXTERNAL TABLE gold.extreturns
WITH(
    LOCATION = 'extreturns/',
    DATA_SOURCE = gold_dest,
    FILE_FORMAT = gold_format
)
AS
SELECT * from gold.returns;

CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION = 'extsales/',
    DATA_SOURCE = gold_dest,
    FILE_FORMAT = gold_format
)
AS
SELECT * from gold.sales;

CREATE EXTERNAL TABLE gold.extterritories
WITH(
    LOCATION = 'extterritories/',
    DATA_SOURCE = gold_dest,
    FILE_FORMAT = gold_format
)
AS
SELECT * from gold.territories;

