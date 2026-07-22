with source as (
    select * from {{ source('kanokwan', 'employee_privileges') }}
)

select
    *,
    current_localtimestamp() as ingestion_timestamp
from source
