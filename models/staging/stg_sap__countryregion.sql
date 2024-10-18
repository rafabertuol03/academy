with
    source as (
        select
            countryregioncode 
            , name as country_name
        from {{ source('dbt_rbertuol_seeds', 'countryregion') }}
    )

select *
from source
