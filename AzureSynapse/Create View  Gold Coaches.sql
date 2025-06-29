----------------------
-- CREATE VIEW COACHES
----------------------

CREATE VIEW gold.coaches
AS
 SELECT 
 * 
 FROM
    OPENROWSET(
        BULK 'https://olympicprojdlchintu.dfs.core.windows.net/silver/coaches/',
        FORMAT = 'PARQUET'
    ) as query1
