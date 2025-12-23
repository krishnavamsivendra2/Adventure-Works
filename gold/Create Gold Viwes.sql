--Calendar VIEW
CREATE OR ALTER VIEW gold.calendar
AS
    SELECT 
        *
    FROM OPENROWSET(
            BULK 'https://krishnavamsi.dfs.core.windows.net/silver/AdventureWorks_Calendar/',
            FORMAT = 'PARQUET'
        ) AS query1;


--Customers VIEW
CREATE OR ALTER VIEW gold.customers
AS
    SELECT
        *
    FROM
        OPENROWSET(
            BULK 'https://krishnavamsi.dfs.core.windows.net/silver/AdventureWorks_Customers/',
            FORMAT = 'PARQUET'
        ) AS query1

--Product_Categories VIEW
CREATE OR ALTER VIEW gold.product_categories
AS
    SELECT
        *
    FROM
        OPENROWSET(
            BULK 'https://krishnavamsi.dfs.core.windows.net/silver/AdventureWorks_Product_Categories/',
            FORMAT = 'PARQUET'
        ) AS query1

--Product_SubCategories VIEW
CREATE OR ALTER VIEW gold.product_subCategories
AS
    SELECT
        *
    FROM
        OPENROWSET(
            BULK 'https://krishnavamsi.dfs.core.windows.net/silver/AdventureWorks_Product_SubCategories/',
            FORMAT = 'PARQUET'
        ) AS query1

--Products VIEW
CREATE OR ALTER VIEW gold.products
AS
    SELECT
        *
    FROM
        OPENROWSET(
            BULK 'https://krishnavamsi.dfs.core.windows.net/silver/AdventureWorks_Products/',
            FORMAT = 'PARQUET'
        ) AS query1

--Returns VIEW
CREATE OR ALTER VIEW gold.returns
AS
    SELECT
        *
    FROM
        OPENROWSET(
            BULK 'https://krishnavamsi.dfs.core.windows.net/silver/AdventureWorks_Returns/',
            FORMAT = 'PARQUET'
        ) AS query1

--Sales VIEW
CREATE OR ALTER VIEW gold.sales
AS
    SELECT
        *
    FROM
        OPENROWSET(
            BULK 'https://krishnavamsi.dfs.core.windows.net/silver/AdventureWorks_Sales/',
            FORMAT = 'PARQUET'
        ) AS query1

--Territories VIEW
CREATE OR ALTER VIEW gold.territories
AS
    SELECT
        *
    FROM
        OPENROWSET(
            BULK 'https://krishnavamsi.dfs.core.windows.net/silver/AdventureWorks_Territories/',
            FORMAT = 'PARQUET'
        ) AS query1




