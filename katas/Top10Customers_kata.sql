SELECT c.customer_id as "customer_id", c.email as "email", 
count(p.customer_id) as "payments_count", sum(p.amount)::FLOAT as "total_amount"
from customer c
left join payment p
on c.customer_id=p.customer_id
group by c.customer_id
order by total_amount desc
limit 10
