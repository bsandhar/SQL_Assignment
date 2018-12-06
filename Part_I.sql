use sakila;

SHOW TABLES;

SELECT concat(actor.first_name, ' ', actor.last_name) AS 'Full Name'
FROM actor;


SELECT actor_id, actor.first_name, actor.last_name
FROM actor
WHERE first_name = 'JOE';

SELECT *
FROM actor
where last_name like "%GEN%";

SELECT actor.actor_id, actor.last_name, actor.first_name
FROM actor
WHERE last_name like "%LI%";


SELECT country.country_id, country.country
FROM country
WHERE country = "AFGHANISTAN"
OR country = "CHINA"
OR country = "BANGLADESH";

ALTER TABLE actor
ADD COLUMN description BLOB;

ALTER TABLE actor DROP description;

SELECT last_name
FROM actor
GROUP BY last_name
HAVING COUNT(*) > 1;


SELECT actor_id, last_name, first_name
FROM actor
WHERE first_name = 'Groucho';

UPDATE actor
SET
	first_name = 'Harpo'
WHERE
	actor_id = 172;
    
SELECT actor_id, last_name, first_name
FROM actor
WHERE actor_id = 172;


UPDATE actor
SET
	first_name = 'Groucho'
WHERE
	actor_id = 172;
    
DESCRIBE sakila.address;
