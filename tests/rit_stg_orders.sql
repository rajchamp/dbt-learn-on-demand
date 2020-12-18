-- Add a relationships test to your stg_orders model for the customer_id in stg_customers
select customer_id
from   {{ ref ('stg_orders') }}
where  customer_id in (select customer_id
                       from   {{ ref ('stg_customers') }})
