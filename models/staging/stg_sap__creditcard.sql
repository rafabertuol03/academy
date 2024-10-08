with
    source as (
        select
            cast(creditcardid as int) as creditcardid 
            , cardtype as card_type
        from {{ source('dbt_rbertuol_seeds', 'creditcard') }}
    )

select * 
from source
