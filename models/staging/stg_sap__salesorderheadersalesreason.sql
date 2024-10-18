with
    source as (
        select
            cast(salesorderid as int) as salesorderid 
            , cast(salesreasonid as int) as salesreasonid 
            from {{ source('dbt_rbertuol_seeds', 'salesorderheadersalesreason') }}
    )

select *
from source
