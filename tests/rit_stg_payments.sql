-- Add a relationships test to the stg_payments model for the order_id in stg_orders
select order_id
from   {{ ref ('stg_payments') }}
where  order_id not in (select order_id
                        from   {{ ref ('stg_orders') }})