SELECT first_name,last_name,
count(first_name) as c
from actor
group by first_name,last_name
order by c desc
limit 1;