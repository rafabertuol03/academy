with
    source as (
        select
            cast(stateprovinceid as int) as stateprovinceid
            , cast(territoryid as int) as territoryid
            , countryregioncode as country_code
            , stateprovincecode as state_code
            , name as state_name
        from {{ source('dbt_rbertuol_seeds', 'stateprovince') }}
    )

select *
from source
