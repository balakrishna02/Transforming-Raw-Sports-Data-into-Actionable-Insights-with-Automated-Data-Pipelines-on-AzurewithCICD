-- Credential 
CREATE DATABASE SCOPED CREDENTIAL chintu_cred
WITH 
    IDENTITY = 'Managed Identity'


-- Creating External Source

CREATE EXTERNAL DATA SOURCE source_silver
WITH
(
    LOCATION = 'https://olympicprojdlchintu.dfs.core.windows.net/silver/',
    CREDENTIAL = chintu_cred
)


CREATE EXTERNAL DATA SOURCE source_gold
WITH
(
    LOCATION = 'https://olympicprojdlchintu.dfs.core.windows.net/gold/',
    CREDENTIAL = chintu_cred
)


-- Creating File Format

CREATE EXTERNAL FILE FORMAT format_parquet
WITH
(
    FORMAT_TYPE = PARQUET,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)


-- Creating External Table


CREATE EXTERNAL TABLE gold.extevents
WITH
(
    LOCATION = 'extevents',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * from gold.events

SELECT * from gold.extevents



CREATE EXTERNAL TABLE gold.extnocs
WITH
(
    LOCATION = 'extnocs',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * from gold.nocs

SELECT * from gold.extevents



CREATE EXTERNAL TABLE gold.extathletes
WITH
(
    LOCATION = 'extathletes',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * from gold.athletes

SELECT * from gold.extathletes




CREATE EXTERNAL TABLE gold.extcoaches
WITH
(
    LOCATION = 'extcoaches',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = format_parquet
)
AS
SELECT * from gold.coaches


SELECT * from gold.extcoaches
