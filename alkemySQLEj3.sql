
CREATE TABLE PROFESOR(
id int primary key,
nombre varchar (25) NOT NULL,
apellido varchar (25)NOT NULL,
fecha_nacimiento date not NULL,
salario int not NULL
);

INSERT INTO PROFESOR VALUES
(1,"Juan","Perez","1990-06-06",55000),
(2,"Maria Emlia","Paz","1984-07-15",72000),
(3,"Martin","Correa","1987-12-07",63000),
(4,"Lucia","Diaz","1991-02-24",45000),
(5,"Raul","Martinez","1980-10-15",85000),
(6,"Mabel","Rios","1982-06-12",83000);

SELECT nombre, apellido,fecha_nacimiento
from PROFESOR
order by fecha_nacimiento;

select * 
from PROFESOR
where salario>=65000;

SELECT *
from PROFESOR
where fecha_nacimiento BETWEEN '1980-01-01' and '1989-12-31';

select * 
from PROFESOR
limit 5;

select * 
from PROFESOR
where apellido like 'P%';

SELECT *
from PROFESOR
where salario>80000 AND fecha_nacimiento BETWEEN '1980-01-01' and '1989-12-31';
