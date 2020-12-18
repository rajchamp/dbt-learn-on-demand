with customers as (

select 
    id from customer_id,
    first_name,
    last_name
from {{ source('jaffle_shop','customers') }}

)

select *
from   customers