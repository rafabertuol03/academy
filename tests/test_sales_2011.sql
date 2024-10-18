with sales_2011 as (
    select 
        round(sum(subtotal), 2) as total_sales_2011 -- Round to 2 decimal places
    from {{ ref('fact_sales') }}
    where extract(year from order_date) = 2011
)
-- If total_sales is different from the expected value, the test will return a row and fail
select *
from sales_2011
where abs(total_sales_2011 - 12646112.16) >= 0.01 -- Error condition: difference greater than or equal to 0.01
