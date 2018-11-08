/*Inciso1*/
CREATE TABLE Empleado(
Correlativo INT,
Genero VARCHAR(25),
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Direccion VARCHAR(150),
Ciudad VARCHAR(50),
Fecha_Nacimiento DATE,
Ocupacion VARCHAR(30)
Empresa VARCHAR(30)
Tipo_Sangre VARCHAR(10)
PRIMARY KEY(Correlativo)
);

CREATE TABLE Medico(
Corr_Doctor INT,
Correlativo INT,
Hospital VARCHAR(50),
Zona INT,
Departamento VARCHAR(50),
Municipio VARCHAR(50)
Nombre VARCHAR(50),
Apellido VARCHAR(50),
Consulta Externa VARCHAR(50),
Especialidad1 VARCHAR(50),
Especialidad2 VARCHAR(50),
Especialidad3 VARCHAR(50),
Especialidad4 VARCHAR(50),
Especialidad5 VARCHAR(50),
PRIMARY KEY(Corr_Doctor),
FOREIGN KEY (Correlativo) REFERENCES Empleado(Correlativo)
);

/*Inciso2*/
DELETE TABLE Medico
DELETE TABLE Empleado

/*Inciso4*/
SELECT Tipo_Sangre , Count(Tipo_Sangre) as Cant FROM Empleado

/*Inciso5*/
SELECT Nombre,Apellido,Fecha_Nacimiento,Ocupacion,Empresa From Empleado Where Fecha_Nacimiento Between '01011973' And '31121973'

/*Inciso6*/
Update Empleado Set Ocupacion='Empleado de Oficina' where Ocupacion Like 'Office%'

/*Inciso7*/
Select Nombre From Medico Where Departamento='Izabal' OR Departamento='El Progreso' OR Departamento='Chiquimula' OR Departamento='Zacapa'

/*Inciso8*/
Select Count(Correlativo) as Empleados, Count * Where Correlativo is Null From Empleado

/*Inciso9*/


/*Inciso10*/
Delete * From Empleados Where Tipo_Sangre='A+' And Direccion='Calle Olimpo'
