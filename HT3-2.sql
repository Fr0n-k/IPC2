/*Inciso 1*/
CREATE TABLE Orden(
Id_Fila INT NOT NULL,
No_Orden INT NOT NULL,
Fecha_de_Orden DATE NOT NULL,
Prioridad VARCHAR(50) NOT NULL,
Cantidad INT NOT NULL,
Descuento DOUBLE NOT NULL,
Modo_de_Envio VARCHAR(30) NOT NULL,
Precio_Unitario DOUBLE NOT NULL,
Costo_de_Envio DOUBLE NOT NULL,
Cliente VARCHAR(75) NOT NULL,
Provincia VARCHAR(50) NOT NULL,
Region VARCHAR(50) NOT NULL,
Tipo_Cliente VARCHAR(30) NOT NULL,
Categoria VARCHAR(50) NOT NULL,
Sub_Categoria VARCHAR(50) NOT NULL,
Producto VARCHAR(250) NOT NULL,
Tipo_Empaque VARCHAR(50) NOT NULL,
Fecha_Envio DATE NOT NULL,
PRIMARY KEY(Id_Fila)
);

CREATE TABLE Retornos(
NO_Orden INT NOT NULL,
Estado VARCHAR(30),
PRIMARY KEY(NO_Orden)
);

CREATE TABLE Usuarios(
Region VARCHAR(30) NOT NULL,
Gerente VARCHAR(30)
);

/*Inciso2*/
DELETE TABLE Orden
DELETE TABLE Retornos
DELETE TABLE Usuarios

/*Inciso4*/
SELECT COUNT(*) FROM Orden WHERE Prioridad='Urgente'
SELECT COUNT(*) FROM Orden WHERE Prioridad='Alta'
SELECT COUNT(*) FROM Orden WHERE Prioridad='Media'
SELECT COUNT(*) FROM Orden WHERE Prioridad='Baja'
SELECT COUNT(*) FROM Orden WHERE Prioridad='No Especificado'

/*Inciso5*/
SELECT * FROM Orden WHERE Fecha_de_Orden BETWEEN '01062010' AND '30062011' AND Modo_de_Envio='Aereo Express'

/*Inciso 6*/
SELECT Tipo_Cliente, Sum((Cantidad*Precio_Unidad)+Costo_de_Envio) As Costo_Tot FROM Orden Order By Costo_Tot ASC

/*Inciso7*/
SELECT TOP 10 Categoria From Orden 

/*Inciso8*/
Select Tipo_Empaque, Count(Tipo_Empaque) From Orden

/*Inciso9*/
UPDATE Orden SET Prioridad='Normal' WHERE Prioridad='Medio' OR Prioridad='No Especificado'

/*Inciso10*/
DELETE FROM Orden WHERE Cantidad<3 AND Fecha_de_Orden
