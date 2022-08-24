select avg(length), category.name
from film join film_category using (film_id) join category using (category_id)
group by category.name;