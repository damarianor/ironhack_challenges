select c.id as category_id, c.category, p.title, p.views, p.id as post_id
from categories c
left join lateral (select * from posts p where c.id = p.category_id
order by p.views desc, p.id
limit 2
) p on true
order by c.category, p.views desc nulls last, p.id;
