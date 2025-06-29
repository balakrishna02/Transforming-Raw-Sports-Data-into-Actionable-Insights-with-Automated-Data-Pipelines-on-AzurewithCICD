-----------------------
-- CREATE EVENTS
-----------------------

CREATE VIEW gold.events
AS
 SELECT 
 * 
 FROM
    OPENROWSET(
        BULK 'https://olympicprojdlchintu.dfs.core.windows.net/silver/events/',
        FORMAT = 'PARQUET'
    ) as query1
