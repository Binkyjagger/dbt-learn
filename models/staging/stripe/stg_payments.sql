with payments as (

select 
    ID as payment_id,
    ORDERID as order_id,
    AMOUNT/100 as AMOUNT,
    status,
    created as created_at

from {{source('stripe','payment') }}


)

select * from payments