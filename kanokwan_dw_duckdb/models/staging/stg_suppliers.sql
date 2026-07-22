with source as (
    select * from {{ source('kanokwan', 'suppliers') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
