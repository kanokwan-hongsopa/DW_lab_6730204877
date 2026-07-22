with source as (
    select * from {{ source('kanokwan', 'orders') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
