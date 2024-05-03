# SUBQUERIES
SELECT (SELECT name 
        FROM genres AS g
        WHERE g.id = m.genre_id) AS genero,
        COUNT(*) AS totalPeliculas
FROM movies AS m
GROUP BY genero;

# TABLE REFERENCE
SELECT name, COUNT(*) totalMovies
FROM genres AS g, movies AS m, actor_movie
WHERE g.id = m.genre_id
GROUP BY name;


# JOIN 
SELECT name, COUNT(title) totalMovies
FROM genres AS g 
INNER JOIN movies AS m
ON g.id = m.genre_id
GROUP BY name;

SELECT e.season_id, e.title , s.id 
FROM episodes AS e
INNER JOIN seasons AS s
ON e.season_id = s.id; 

SELECT e.season_id, COUNT(*) totalEpisodios
FROM episodes AS e
INNER JOIN seasons AS s
ON e.season_id = s.id
GROUP BY season_id; 


SELECT DISTINCT first_name, last_name 
FROM movies AS m
INNER JOIN actor_movie AS am
ON m.id = am.movie_id
INNER JOIN actors AS a
ON a.id = am.actor_id
WHERE m.title LIKE "Harry%";






