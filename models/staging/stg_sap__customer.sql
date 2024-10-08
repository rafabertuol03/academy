with 
    source as (
        select
        cast(customerid as int) as customerid
        , cast(personid as int) as personid
        , cast(storeid as int) as storeid 
        , cast(territoryid as int) as territoryid
        from {{ source('dbt_rbertuol_seeds', 'customer') }}
    )

select *
from source
