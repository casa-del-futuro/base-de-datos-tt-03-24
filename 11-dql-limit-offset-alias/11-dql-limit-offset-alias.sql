# LIMIT 
# Los 5 productos más caros
SELECT * FROM productos
ORDER BY preciounitario DESC
LIMIT 5;

# LIMIT + OFFSET 
# penultima y antepenultima empleado contratado 

SELECT nombre, fechacontratacion
FROM empleados
ORDER BY fechacontratacion DESC
LIMIT 2
OFFSET 1;


# ALIAS 
SELECT categorianombre AS Categoria 
FROM categorias;

SELECT productonombre AS nombre, (preciounitario * unidadesstock) AS total
FROM productos
ORDER BY total DESC;
