--Set target properties
{{ config(
    database='DBT_STAGING',
    pre_hook="ALTER EXTERNAL TABLE DBT_RAW.LANDING_ZONE.BATCH_DATA_STOCKS REFRESH" 
) }}

SELECT
DATE
,TICKER
,OPEN
,HIGH
,LOW
,CLOSE
,VOLUME
FROM
DBT_RAW.LANDING_ZONE.BATCH_DATA_STOCKS

