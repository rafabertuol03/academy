with
    source as (
        select
        cast(addressid as int) as addressid
        , cast(stateprovinceid as int) as stateprovinceid
        , city
        from {{ source('dbt_rbertuol_seeds', 'address') }}
    )

select *
from source
