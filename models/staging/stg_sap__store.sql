with 
    source as (
        select
        cast(businessentityid as int) as businessentityid 
        , cast(salespersonid as int) as salespersonid
        , name as store_name
    from {{ source('dbt_rbertuol_seeds','store') }}
    )

select *
from source
