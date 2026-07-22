with source as (
    select * from {{ source('kanokwan', 'products') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
