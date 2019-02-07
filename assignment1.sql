/* Jeremy Suero
   CSAS 4115
   2/7/19
*/

/* 1 */
select * from sakila.actor
where first_name = 'PENELOPE';

/* 2 */
select first_name, last_name from sakila.actor
join film_actor on sakila.actor.actor_id = sakila.film_actor.actor_id
join sakila.film on sakila.film_actor.film_id = sakila.film.film_id
and film.title = 'ZOOLANDER FICTION';

/* 3 */
select title from sakila.film
join sakila.film_actor on film.film_id = film_actor.film_id
join sakila.actor on film_actor.actor_id = actor.actor_id
and actor.first_name = 'JENNIFER'
and actor.last_name = 'DAVIS';

/* 4 */
select title from sakila.rental
join sakila.inventory on rental.inventory_id = inventory.inventory_id
join sakila.film on film.film_id = inventory.film_id
where rental.return_date is null
and rental.customer_id = 11;

/* 5 */
select title from sakila.film_category
join sakila.film on film.film_id = film_category.film_id
where film_category.category_id = 2;

/* 6 */
select amount, payment_date from sakila.payment
join sakila.rental on payment.rental_id = rental.rental_id
join sakila.inventory on rental.inventory_id = inventory.inventory_id
join sakila.film on film.film_id = inventory.film_id
and title = "CLOSER BANG"
and payment.customer_id = 95;

/* 7 */
select staff.first_name, staff.last_name from sakila.staff
join sakila.rental on rental.staff_id = staff.staff_id
join sakila.inventory on inventory.inventory_id = rental.inventory_id
join sakila.film on film.film_id = inventory.film_id
join sakila.customer on rental.customer_id = customer.customer_id
and film.title = "CHAINSAW UPTOWN"
and customer.first_name = "MARIE"
and customer.last_name = "TURNER";
