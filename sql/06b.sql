/*
 * This problem is the same as 06.sql,
 * but instead of using the NOT IN operator, you are to use a LEFT JOIN.
 */
select f.title from film f left join inventory i ON f.film_id = i.film_id where i.film_id IS NULL order by f.title ; 
