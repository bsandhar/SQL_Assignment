SELECT first_name, last_name, address
FROM staff s 
JOIN address a
ON s.address_id = a.address_id;

SELECT payment.staff_id, staff.first_name, staff.last_name, payment.amount, payment.payment_date
FROM staff INNER JOIN payment ON
staff.staff_id = payment.staff_id AND payment_date LIKE '2005-08%';

SELECT f.title AS 'Film Title', COUNT(fa.actor_id) AS `Number of Actors`
FROM film_actor fa
INNER JOIN film f 
ON fa.film_id= f.film_id
GROUP BY f.title;


SELECT title, (
SELECT COUNT(*)
	FROM inventory
	WHERE film.film_id = inventory.film_id
)
AS 'Number of Copies'
FROM film
WHERE title = "Hunchback Impossible";

SELECT c.last_name, c.first_name, sum(p.amount) AS 'pay per customer'
FROM customer c
INNER JOIN payment p
ON c.customer_id = p.customer_id
GROUP BY c.last_name;

