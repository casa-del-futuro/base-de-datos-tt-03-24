# LA QUERY BASE
SELECT * FROM tabla;

## WHERE
-- operador AND y OR
SELECT * FROM movies
WHERE awards > 5
AND rating > 8;

SELECT * FROM movies
WHERE awards > 5
AND rating < 8;


SELECT *
FROM series
WHERE (release_date) = 2010;



-- operador IS NULL
SELECT *
FROM movies
WHERE genre_id IS NULL;

# ORDER BY
SELECT *
FROM actors
ORDER BY rating;

SELECT first_name, last_name , rating
FROM actors
WHERE rating > 5 AND rating < 8
ORDER BY rating DESC;

# BETWEEN 
SELECT * FROM movies
WHERE release_date 
BETWEEN "2000-01-01"
AND "2024-17-14"; -- tambien se puede usar NOW() que no provee la fecha actual


SELECT first_name , rating
FROM actors
WHERE rating BETWEEN 7 AND 10;

SELECT first_name, last_name
FROM actors
WHERE first_name BETWEEN "emma" AND "rennie" 
ORDER BY first_name;


# LIKE 
SELECT *
FROM series
WHERE release_date LIKE "2010%";

SELECT title
FROM movies
WHERE title LIKE "toy%";

SELECT title
FROM movies
WHERE title LIKE "La vida%a";

















