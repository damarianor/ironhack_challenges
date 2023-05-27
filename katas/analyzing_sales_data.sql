select p.name as product_name,
cast(extract(year from s.date) as int) as year,
cast(extract(month from s.date) as int) as month,
cast(extract(day from s.date) as int) as day,
sum(p.price * sd.count) as total
from products p
join sales_details sd on p.id = sd.product_id
join sales s on sd.sale_id = s.id
group by p.name, rollup(year, month, day)
order by p.name, year, month, day