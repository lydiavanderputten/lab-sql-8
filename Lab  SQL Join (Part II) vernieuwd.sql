USE Sakila;
-- Write a query to display for each store its store ID, city, and country.
SELECT * FROM Sakila.store;
SELECT * FROM Sakila.address;

SELECT address_id, store_id
FROM Sakila.store s
JOIN Sakila.address a
ON s.address_id = a.address.id
Group by store_id;

-- Write a query to display how much business, in dollars, each store brought in.
SELECT * FROM SAKILA.payment;
SELECT * FROM Sakila.staff;

SELECT amount, COUNT(staff_id)
FROM Sakila.payment p
JOIN Sakila.staff s
ON p.staff_id = s.staff_id
GROUP BY staff_id;

-- Which film categories are longest?
SELECT * FROM SAKILA.film;
SELECT * FROM Sakila.category;

SELECT name as 'category', AVG (length) as 'average length'
FROM Sakila.film f
JOIN Sakila.film_category fc
on f.film_id = fc.film_id
Group by 'category'
ORDER BY 'average length' DESC;

-- Display the most frequently rented movies in descending order --> 5 joints
SELECT * FROM Sakila.rental;
SELECT * FROM SAKILA.film;
SELECT * FROM Sakila.payment;

-- List the top five genres in gross revenue in descending order.
SELECT * FROM Sakila.category;
SELECT * FROM Sakila.payment;
SELECT * FROM Sakila.rental;
SELECT * FROM Sakila.film_category;
SELECT * FROM SAKILa.film;

SELECT name as 'genre', amount as 'gross revenue'
FROM Sakila.category c
JOIN Sakila.film_category fc 
on fc.category_id = fc.category_id
FROM SAKILA.rental r
JOIN SAKILA.payment p
on p.rental_id = p.rental_id
GROUP BY 'genre'
ORDER BY 'gross revenue';

-- Is "Academy Dinosaur" available for rent from Store 1?
SELECT * FROM SAKILA.film;
SELECT* FROM SAKILA.inventory;
SELECT * FROM SAKILA.rental;

SELECT title AS ('%Academy Dinosaur%')
FROM Sakila.film f
JOIN Sakila.inventory i
on f.film_id = i.film_id;
WHERE title = 'Academy Dinosaur'
FROM SAKILA.inventory i
JOIN Sakila.rental r
on i.inventory_id = r.inventory_id;
WHERE store_id = '1)';


-- Get all pairs of actors that worked together.

-- Get all pairs of customers that have rented the same film more than 3 times.

-- For each film, list actor that has acted in more films
-- Not possible with join