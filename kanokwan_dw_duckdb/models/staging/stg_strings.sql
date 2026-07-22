with source as (
    select * from {{ source('kanokwan', 'strings') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
