/*
 * A film's rating can be either G, PG, PG-13, etc.
 * First, generate a query that returns the two most popular ratings.
 * Then, use a subquery to select the film_id and title columns
 * for all films whose rating is one of the two most popular.
 * Use the film table and order by title.
 */
SELECT film_id, title
FROM film
WHERE rating IN (
select rating from film group by rating order by count(rating) desc limit 2)
ORDER BY title;
