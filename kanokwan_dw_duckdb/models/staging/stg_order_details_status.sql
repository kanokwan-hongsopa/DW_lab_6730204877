with source as (
    select * from {{ source('kanokwan', 'order_details_status') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
