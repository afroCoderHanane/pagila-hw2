/*
 * Count the number of movies that contain each type of special feature.
 * Order the results alphabetically be the special_feature.
 * HINT:
 * Use `unnest(special_features)` in a subquery.
 */
select T.special_features, count(T.special_features)
from (select unnest(special_features) AS special_features from film) as T
group by T.special_features
ORDER BY T.special_features;
