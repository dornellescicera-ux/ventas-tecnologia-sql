/*=========================================
CONSULTA 1: Vista base del proyecto (INNER JOIN)
===========================================*/
SELECT
ventas.fecha_venta,
clientes.nombre,
clientes.ciudad,
productos.nombre_producto,
categorias.nombre_categoria,
ventas.cantidad,
ventas.precio_unitario,
(ventas.cantidad * ventas.precio_unitario) AS total_venta

FROM ventas
INNER JOIN clientes
ON ventas.id_cliente = clientes.id_cliente

INNER JOIN productos
ON ventas.id_producto = productos.id_producto

INNER JOIN categorias
ON productos.id_categoria = categorias.id_categoria;

---- CONFIRMACION ----

SELECT COUNT(*) AS total_ventas
FROM ventas;

/*=========================================
CONSULTA 2: Clientes sin ventas (LEFT JOIN)
===========================================*/

SELECT
clientes.nombre,
clientes.email
FROM clientes
LEFT JOIN ventas
ON clientes.id_cliente = ventas.id_cliente
WHERE ventas.id_venta IS NULL;

---- CONFIRMACION ----

SELECT COUNT(*) AS clientes_sin_ventas
FROM clientes
LEFT JOIN ventas
ON clientes.id_cliente = ventas.id_cliente
WHERE ventas.id_venta IS NULL;

/*=========================================
CONSULTA 3: Productos sin ventas (LEFT JOIN)
===========================================*/

SELECT
productos.nombre_producto,
categorias.nombre_categoria,
productos.precio
FROM productos
LEFT JOIN ventas
ON productos.id_producto = ventas.id_producto
LEFT JOIN categorias
ON productos.id_categoria = categorias.id_categoria
WHERE ventas.id_venta IS NULL;
SELECT * 
FROM ventas;


---- CONFIRMACION ----

SELECT COUNT(*) AS productos_sin_ventas
FROM productos
LEFT JOIN ventas
ON productos.id_producto = ventas.id_producto
WHERE ventas.id_venta IS NULL;

/*=======================================================
CONSULTA 4: Consolidado por canal (ejemplo con UNION ALL)
========================================================*/
SELECT
id_venta,
'Online' AS canal
FROM ventas
WHERE id_venta <= 5

 UNION ALL
 
SELECT

id_venta,

'Presencial' AS canal

FROM ventas
WHERE id_venta > 5;

---- CONFIRMACION----

SELECT COUNT(*) AS total_ventas
FROM ventas;

-- Nota:
-- La tabla ventas no contiene una columna canal.
-- Para demostrar el uso de UNION ALL se generó una columna
-- canal de ejemplo con los valores Online y Presencial.
