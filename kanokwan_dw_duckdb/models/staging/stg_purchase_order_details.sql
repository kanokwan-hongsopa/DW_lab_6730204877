with source as (
    select * from {{ source('kanokwan', 'purchase_order_details') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
