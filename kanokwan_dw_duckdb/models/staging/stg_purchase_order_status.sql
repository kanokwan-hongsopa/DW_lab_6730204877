with source as (
    select * from {{ source('kanokwan', 'purchase_order_status') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
