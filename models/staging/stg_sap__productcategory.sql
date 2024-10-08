with
    source as (
        select
            cast(productcategoryid as int) as productcategoryid
            , name as category_name
        from {{ source('dbt_rbertuol_seeds', 'productcategory') }}
    )

select *
from source
