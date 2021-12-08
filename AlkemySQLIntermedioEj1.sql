
CREATE TABLE estudiante(
legajo INT PRIMARY KEY,
nombre VARCHAR NOT NULL,
apellido VARCHAR NOT NULL,
fecha_nacimiento DATE  not NULL,
carrera varchar NOT NULL
);

CREATE TABLE PROFESOR(
id int primary key,
nombre varchar (25) NOT NULL,
apellido varchar (25)NOT NULL,
fecha_nacimiento date not NULL,
salario int not NULL
);

INSERT INTO estudiante VALUES
(36485,'Romina','Nieva','1999-11-26','Mecanica'),
(39685,'Brenda','Medrano','2000-09-25','Sistemas'),
(41258,'Ramiro','Rios','1994-12-06','Sistemas'),
(43651,'Cristian','Gomez','1995-03-19','Mecanica'),
(47521,'Maria','Velazquez','1998-01-02','Sistemas'),
(47961,'Alexis','Reinoso','1994-12-17','Sistemas'),
(48952,'Gabriel','Morales','1996-10-03','Sistemas'),
(51200,'Lourdes','Martinez','2001-12-13','Sistemas');

INSERT INTO PROFESOR VALUES
(1,"Juan","Perez","1990-06-06",55000),
(2,"Maria Emlia","Paz","1984-07-15",72000),
(3,"Martin","Correa","1987-12-07",63000),
(4,"Lucia","Diaz","1991-02-24",45000),
(5,"Raul","Martinez","1980-10-15",85000),
(6,"Mabel","Rios","1982-06-12",83000);

# PUNTO_1
SELECT 
	carrera,
    COUNT(carrera)
FROM estudiante
GROUP BY carrera;

# PUNTO_2
SELECT 
	MIN(salario) as salario_minimo
from PROFESOR
where fecha_nacimiento BETWEEN '1980-01-01' and '1989-12-31';

# PUNTO_4

#4.A
select 
	PAIS.nombre,
	COUNT(psj.idpasajero) AS cantidad_pasajeros
from PASAJERO as psj
INNER JOIN PAIS ON PAIS.idpais=psj.idpais
GROUP BY PAIS.nombre

#4.B
SELECT
	SUM (monto + impuesto) as suma_pagos
FROM PAGO

#4.C
SELECT
	psj.idpasajero,
	ROUND(SUM (pago.monto + pago.impuesto),2) as suma_pagos
FROM PAGO 
INNER JOIN PASAJERO AS psj ON psj.idpasajero=pago.idpasajero
WHERE psj.idpasajero=1
GROUP By psj.idpasajero

#4.D
SELECT
	psj.idpasajero,
	AVG(pago.monto + pago.impuesto)) as promedio_de_pagos_realizados
FROM PAGO 
INNER JOIN PASAJERO AS psj ON psj.idpasajero=pago.idpasajero
WHERE psj.idpasajero=1
GROUP By psj.idpasajero

