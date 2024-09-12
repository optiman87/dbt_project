select 
id as payment_id,
orderid as order_id,
paymentmethod as payment_method,
status,
amount/100 as amount,
created 
from {{ source('jaffle_shop', 'stripe_payments') }}