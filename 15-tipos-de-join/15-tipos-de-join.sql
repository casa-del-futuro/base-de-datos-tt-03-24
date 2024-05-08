# TIPOS DE JOIN 
# INNER 
SELECT title, name
FROM genres
INNER JOIN movies
ON movies.genre_id = genres.id;

# LEFT JOIN
SELECT title, name
FROM movies AS m
LEFT JOIN genres AS g
ON g.id = m.genre_id;

# LEFT EXCLUDING JOIN 
SELECT title, name
FROM movies AS m
LEFT JOIN genres AS g
ON g.id = m.genre_id
WHERE g.name IS NULL;

-- se pone mas dificil ahora con tres tablas
# RIGTH
SELECT title, 
	   CONCAT(first_name," ",last_name) AS nombre_completo   
FROM actors AS a
LEFT JOIN actor_movie AS am
ON a.id = am.actor_id
LEFT JOIN movies AS m
ON m.id = am.movie_id;

# RIGTH EXCLUDING JOIN
SELECT title, 
	   CONCAT(first_name," ",last_name) AS nombre_completo   
FROM movies AS m
LEFT JOIN actor_movie AS am
ON m.id = am.movie_id
LEFT JOIN actors AS a
ON a.id = am.actor_id
WHERE a.id IS NULL;











