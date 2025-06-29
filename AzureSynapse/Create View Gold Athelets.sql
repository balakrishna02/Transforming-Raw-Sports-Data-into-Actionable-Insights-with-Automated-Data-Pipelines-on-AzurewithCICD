-----------------------
-- CREATE VIEW ATHLETES
-----------------------

CREATE VIEW gold.athletes
AS
 SELECT 
 * 
 FROM
    OPENROWSET(
        BULK 'https://olympicprojdlchintu.dfs.core.windows.net/silver/athletes/',
        FORMAT = 'PARQUET'
    ) as query1