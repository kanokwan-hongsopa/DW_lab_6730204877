with source as (
    select * from {{ source('kanokwan', 'orders_status') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
