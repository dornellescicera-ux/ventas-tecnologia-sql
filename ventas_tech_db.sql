CREATE DATABASE VentasTecnologia;
GO
USE VentasTecnologia;
GO
CREATE TABLE Categorias (
CategoriaID INT PRIMARY KEY,
NombreCategoria VARCHAR(100) NOT NULL
);
GO
CREATE TABLE Productos (
ProductoID INT PRIMARY KEY,
NombreProducto VARCHAR(100) NOT NULL,
Precio DECIMAL(10,2) NOT NULL,
CategoriaID INT NOT NULL,

FOREIGN KEY (CategoriaID)
REFERENCES Categorias(CategoriaID)
);
GO

CREATE TABLE Clientes (
ClienteID INT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL,
Email VARCHAR(100) NOT NULL,
Ciudad VARCHAR(100)
);
GO

CREATE TABLE Ventas (
VentaID INT PRIMARY KEY,
Fecha DATE NOT NULL,
ClienteID INT NOT NULL,
ProductoID INT NOT NULL,
Cantidad INT NOT NULL,

FOREIGN KEY (ClienteID)
REFERENCES Clientes(ClienteID),

FOREIGN KEY (ProductoID)
REFERENCES Productos(ProductoID)
);
GO

INSERT INTO Categorias VALUES
(1,'Laptops'),
(2,'Perifericos'),
(3,'Audio');
GO

INSERT INTO Productos VALUES
(1,'Notebook HP',35000.00,1),
(2,'Notebook Lenovo',42000.00,1),
(3,'Mouse Gamer',1200.00,2),
(4,'Teclado Mecanico',2500.00,2),
(5,'Auriculares Sony',3500.00,3);
GO
INSERT INTO Clientes VALUES
(1,'Juan Perez','juan@gmail.com','Montevideo'),
(2,'Ana Lopez','ana@gmail.com','Canelones'),
(3,'Pedro Silva','pedro@gmail.com','Maldonado');
GO
INSERT INTO Ventas VALUES
(1,'2025-01-05',1,3,2),
(2,'2025-01-06',2,1,1),
(3,'2025-01-08',3,5,1),
(4,'2025-01-10',1,4,1),
(5,'2025-01-11',2,3,3),
(6,'2025-01-15',3,2,1),
(7,'2025-01-20',1,5,2),
(8,'2025-01-22',2,4,1),
(9,'2025-01-25',3,1,1),
(10,'2025-01-30',1,3,2);
GO

