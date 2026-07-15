{{ config(materialized='table')}}
with source as (

    select * from {{ source('kanokwan', 'customer') }}
)
select
    *,
    current_localtimestamp() as ingestion_timestamp
from source