with source as (
    select * from {{ source('kanokwan', 'sales_reports') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
