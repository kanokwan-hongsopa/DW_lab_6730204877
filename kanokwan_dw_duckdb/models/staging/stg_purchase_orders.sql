with source as (
    select * from {{ source('kanokwan', 'purchase_orders') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
