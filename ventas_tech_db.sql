-- =====================================
--Base de datos: Ventas_Tech_DB3
--Proyecto: RetailPro--
--Autor Cicera Dornelles
-- =====================================

-- =========================================
-- CREACIÓN DE BASE DE DATOS
-- =========================================
CREATE DATABASE Ventas_Tech_DB;
GO
USE Ventas_Tech_DB;
GO
-- =========================================
-- ELIMINACIÓN DE TABLAS EXISTENTES
-- =========================================

DROP TABLE IF EXISTS ventas;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS clientes;
DROP TABLE IF EXISTS categorias;
GO

-- =========================================
-- CREAR TABLA CATEGORIAS
-- =========================================

CREATE TABLE categorias (
id_categoria INT PRIMARY KEY,
nombre_categoria VARCHAR(100) NOT NULL
);
GO

-- =========================================
-- CREAR TABLA CLIENTES
-- =========================================

CREATE TABLE clientes (
id_cliente INT PRIMARY KEY,
nombre VARCHAR(100) NOT NULL,
email VARCHAR(100) NOT NULL,
ciudad VARCHAR(100)
);
GO

-- =========================================
-- CREAR TABLA PRODUCTOS
-- =========================================

CREATE TABLE productos (
id_producto INT PRIMARY KEY,
nombre_producto VARCHAR(100) NOT NULL,
precio DECIMAL(10,2) NOT NULL,
id_categoria INT NOT NULL,

FOREIGN KEY (id_categoria)
REFERENCES categorias(id_categoria)
);
GO

-- =========================================
-- CREAR TABLA VENTAS
-- =========================================

CREATE TABLE ventas (
id_venta INT PRIMARY KEY,
id_cliente INT NOT NULL,
id_producto INT NOT NULL,
cantidad INT NOT NULL DEFAULT 1,
precio_unitario DECIMAL(10,2) NOT NULL,
fecha_venta DATE NOT NULL,
FOREIGN KEY (id_cliente)
REFERENCES clientes(id_cliente),
FOREIGN KEY (id_producto)
REFERENCES productos(id_producto)
);
GO
 
-- =========================================
-- CARGA DE DATOS: CATEGORIAS
-- ========================================= 
INSERT INTO categorias
VALUES
(1,'Laptops'),
(2,'Monitores'),
(3,'Accesorios');
GO
  
 -- =========================================
 -- CARGA DE DATOS: CLIENTES
 -- ========================================= 
 
INSERT INTO clientes
VALUES
(1,'Ana Gomez','ana@email.com','Montevideo'),
(2,'Juan Perez','juan@email.com','Canelones'),
(3,'Laura Silva','laura@email.com','Maldonado');
GO
 
 -- =========================================
 -- CARGA DE DATOS: PRODUCTOS
 -- =========================================
INSERT INTO productos
VALUES
(1,'Notebook Lenovo',850.00,1),
(2,'Monitor Samsung',250.00,2),
(3,'Mouse Logitech',30.00,3);
GO

 -- =========================================
 -- CARGA DE DATOS: VENTAS
 -- =========================================

INSERT INTO ventas
VALUES
(1,1,1,1,850.00,'2025-01-10'),
(2,2,2,2,250.00,'2025-01-15'),
(3,1,3,3,30.00,'2025-02-05'),
(4,3,1,1,850.00,'2025-02-20'),
(5,2,3,5,30.00,'2025-03-01');
GO

-- =========================================
-- CONSULTAS DE VALIDACIÓN
-- =========================================
 
SELECT * FROM categorias;
SELECT * FROM clientes;
SELECT * FROM productos;
SELECT * FROM ventas;
