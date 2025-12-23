CREATE EXTERNAL DATA SOURCE silver_source
WITH(
    LOCATION = 'https://krishnavamsi.dfs.core.windows.net/silver',
    CREDENTIAL = cred_vamsi_adventure_works
)

CREATE EXTERNAL DATA SOURCE gold_dest
WITH(
    LOCATION = 'https://krishnavamsi.dfs.core.windows.net/silver',
    CREDENTIAL = cred_vamsi_adventure_works
)

CREATE EXTERNAL FILE FORMAT gold_format
WITH(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
);


CREATE EXTERNAL TABLE gold.extsales
WITH(
    LOCATION = 'extsales',
    DATA_SOURCE = gold_dest,
    FILE_FORMAT = gold_format
)
AS
SELECT * from gold.sales;
