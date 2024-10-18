with
    source as (
        select
            cast(territoryid as int) as territoryid
            , name as region
            , countryregioncode as country_code
            , `group` as continent
            , cast(salesytd as numeric) as regionsalesyear
            , cast(saleslastyear as numeric) as regionsaleslastyear
        from {{ source('dbt_rbertuol_seeds', 'salesterritory') }}
    )
select *
from source
