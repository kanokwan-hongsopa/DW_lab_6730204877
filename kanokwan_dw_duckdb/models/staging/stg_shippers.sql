with source as (
    select * from {{ source('kanokwan', 'shippers') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
