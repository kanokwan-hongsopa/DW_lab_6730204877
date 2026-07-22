with source as (
    select * from {{ source('kanokwan', 'privileges') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
