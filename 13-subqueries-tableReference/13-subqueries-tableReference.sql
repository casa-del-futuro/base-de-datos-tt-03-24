# SUBQUERY SELECT
SELECT ProductoID AS id, 
	   ProductoNombre AS producto,
       (SELECT CategoriaNombre
        FROM categorias AS c 
        WHERE c.CategoriaID = p.CategoriaID) AS categoria,
	   (SELECT compania 
       FROM proveedores AS pe
       WHERE p.ProveedorID = pe.ProveedorID) AS proveedor
FROM productos AS p;

# SUBQUERY WHERE 
SELECT ProductoID, 
       SUM(cantidad) AS totalVendido,
       (SELECT productoNOmbre
       FROM productos AS p
       WHERE p.ProductoID = fd.ProductoID) AS producto,
       (SUM(cantidad) * (SELECT precioUnitario FROM productos AS p WHERE p.ProductoID = fd.ProductoID)) AS totalRecaudado
FROM facturadetalle AS fd
WHERE (SELECT precioUnitario 
       FROM productos AS p
       WHERE p.ProductoID = fd.ProductoID) > 50
GROUP BY ProductoID
ORDER BY totalRecaudado DESC;

# SUBQUERY FROM 
SELECT * FROM (SELECT ProductoID, SUM(cantidad) AS totalVendido,(SELECT productoNOmbre FROM productos AS p WHERE p.ProductoID = fd.ProductoID) AS producto, (SUM(cantidad) * (SELECT precioUnitario FROM productos AS p WHERE p.ProductoID = fd.ProductoID)) AS totalRecaudado FROM facturadetalle AS fd GROUP BY ProductoID ORDER BY totalRecaudado DESC) AS Reporte
WHERE totalVendido BETWEEN 600 AND 1000
AND totalRecaudado > 15000;

# TABLE REFERENCE
SELECT e.nombre, fd.FacturaID,fd.ProductoID
FROM empleados AS e, 
facturas AS f, 
facturadetalle AS fd
WHERE e.EmpleadoID = f.EmpleadoID
AND f.FacturaID = fd.FacturaID;
























