with
    source as (
        select
            cast(salesreasonid as int) as salesreasonid 
            , name as reason
            , reasontype as reason_type
        from {{ source('dbt_rbertuol_seeds', 'salesreason') }}
    )

select *
from source
