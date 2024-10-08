with
    source as (
        select
            cast(salesorderdetailid as int) as salesorderdetailid 
            , cast(salesorderid as int) as salesorderid 
            , cast(productid as int) as productid
            , cast(orderqty as int) as orderqty 
            , cast(unitprice as numeric) as unitprice 
            , cast(unitpricediscount as numeric) as discount
            , (unitprice * (1 - unitpricediscount) * orderqty) subtotal
        from {{ source('dbt_rbertuol_seeds', 'salesorderdetail') }}
    )

select *
from source
