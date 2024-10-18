with
    source as (
        select
            cast(productsubcategoryid as int) as productsubcategoryid
            , cast(productcategoryid as int) as productcategoryid
            , name as subcategory_name
        from {{ source('dbt_rbertuol_seeds', 'productsubcategory') }}
    )

select *
from source
