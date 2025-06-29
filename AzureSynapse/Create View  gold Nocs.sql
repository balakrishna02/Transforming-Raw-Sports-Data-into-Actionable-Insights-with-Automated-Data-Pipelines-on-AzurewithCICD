-----------------------
-- CREATE VIEW NOCS
-----------------------

CREATE VIEW gold.nocs
AS
 SELECT 
 * 
 FROM
    OPENROWSET(
        BULK 'https://olympicprojdlchintu.dfs.core.windows.net/silver/nocs/',
        FORMAT = 'PARQUET'
    ) as query1

