CREATE DATABASE lenguajes_de_programacion;

USE lenguajes_de_programacion;

CREATE TABLE lenguajes(
	id INT PRIMARY KEY AUTO_INCREMENT NOT NULL, 
    titulo VARCHAR(60) NOT NULL,
    creador VARCHAR(60) NOT NULL
);

# añadir una columna nueva
ALTER TABLE lenguajes 
ADD in_use TINYINT NOT NULL;

# modificar una columna existente
ALTER TABLE lenguajes
MODIFY in_use VARCHAR(20) NOT NULL;

# eliminar una columna
# ALTER TABLE lenguajes
# DROP id;

INSERT INTO lenguajes VALUES(DEFAULT, "SQL", "Donald D. Chamberlin, Raymond F. Boyce", "En uso");

# modifica un dato existende dentro de una tabla
UPDATE lenguajes
SET titulo = "JavaScript", creador = "Brendan Eich"
WHERE id = 3;

# elimina un dato existente de la tabla
DELETE FROM lenguajes
WHERE titulo = "sql";








