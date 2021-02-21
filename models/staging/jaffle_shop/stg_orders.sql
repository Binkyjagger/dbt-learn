with orders as (

    select
        id as order_id,
        user_id as customer_id,
        status,
        _ETL_LOADED_AT,
        order_date

    from {{source ('jaffle_shop','orders')}}

)


select * from orders