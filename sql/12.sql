/*
 * List the title of all movies that have both the 'Behind the Scenes' and the 'Trailers' special_feature
 *
 * HINT:
 * Create a select statement that lists the titles of all tables with the 'Behind the Scenes' special_feature.
 * Create a select statement that lists the titles of all tables with the 'Trailers' special_feature.
 * Inner join the queries above.
 */
SELECT T1.title from (SELECT T.title from (SELECT film.title, unnest(special_features) as special_feature from film) T  WHERE special_feature = 'Behind the Scenes'
group by T.title) T1 JOIN (SELECT T2.title from (SELECT film.title, unnest(special_features) as special_feature from film) T2  WHERE special_feature = 'Trailers'
group by T2.title) T3  USING (title)
group by T1.title
order by T1.title ;
