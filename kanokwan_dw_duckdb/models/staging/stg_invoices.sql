with source as (
    select * from {{ source('kanokwan', 'invoices') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
