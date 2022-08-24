SELECT film.film_id, film.title, store.store_id, inventory.inventory_id
from inventory join store using (store_id) join film using (film_id)
where film.title = 'academy dinosaur' and store.store_id = 1;