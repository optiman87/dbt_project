select 
o.order_id,
customer_id,
sum(case when p.status = 'success' then amount else 0 end) as amount
from 
{{ ref('stg_orders') }} as o join
{{ ref('stg_payments') }}  as p on o.order_id = p.order_id
group by o.order_id,
customer_id
order by o.order_id