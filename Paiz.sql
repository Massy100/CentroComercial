CREATE DATABASE Paiz;
USE Paiz;
CREATE TABLE Cliente(
	dni VARCHAR(8) PRIMARY KEY NOT NULL,
    nombre VARCHAR(100) NOT NULL,
    edad INT
);
CREATE TABLE Producto(
	codigo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    precio DOUBLE NOT NULL
);
CREATE TABLE Venta(
	codigo INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nombre VARCHAR(100) NOT NULL,
    cantidad INT NOT NULL,
    producto_codigo INT NOT NULL,
    cliente_dni VARCHAR(8) NOT NULL,
    FOREIGN KEY(producto_codigo) REFERENCES Producto(codigo),
    FOREIGN KEY(cliente_dni) REFERENCES Cliente(dni)
);
SHOW TABLES;
SELECT * FROM Cliente;
INSERT INTO Cliente VALUES('12345678','Diego Estrada', '18');
INSERT INTO Cliente VALUES('87654321','Massielle Coti', '19'),
('32145698', 'Daniel Morales', '20'),
('96385274', 'Alexander Miranda', '19'),
('13467985','Anthony Ordoniez', '21');
INSERT INTO Producto(nombre, precio) VALUES('Tortrix', 1.00),
('Tocinitos', 1.00),
('Rancheritos',1.50),
('Botonetas', 1.00),
('Granada',5.00),
('BonoBon',3.00);
SELECT * FROM Cliente;
SELECT * FROM Producto;