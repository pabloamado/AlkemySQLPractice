#1
SELECT 
	e.nombre AS NOMBRE,
	e.apellido AS APELLIDO,
	c.nombre AS CURSO
FROM estudiante AS e 
INNER JOIN inscripcion AS insc
ON e.legajo=insc.ESTUDIANTE_legajo
INNER JOIN curso AS c 
ON insc.CURSO_codigo=c.codigo
ORDER BY e.apellido, e.nombre;

#2
SELECT 
	e.nombre AS NOMBRE,
	e.apellido AS APELLIDO,
	c.nombre AS CURSO
FROM estudiante AS e 
INNER JOIN inscripcion AS insc
ON e.legajo=insc.ESTUDIANTE_legajo
INNER JOIN curso AS c 
ON insc.CURSO_codigo=c.codigo
ORDER BY  c.nombre, e.apellido, e.nombre;

#3
p.nombre AS NOMBRE,
p.apellido AS APELLIDO,
c.nombre AS CURSO
FROM profesor AS p 
INNER JOIN curso AS c 
ON p.id=c.PROFESOR_id
ORDER BY p.apellido,p.nombre;

#4
p.nombre AS NOMBRE,
p.apellido AS APELLIDO,
c.nombre AS CURSO
FROM profesor AS p 
INNER JOIN curso AS c 
ON p.id=c.PROFESOR_id
ORDER BY c.nombre, p.apellido, p.nombre;

#5
SELECT 
	c.nombre AS CURSO,
	c.cupo - insc.inscriptos AS CUPO_DISPONIBLE
FROM curso AS c
INNER JOIN
(SELECT CURSO_codigo AS curso_id,
		count(numero) as inscriptos
FROM inscripcion 
GROUP BY CURSO_codigo) sql_inscriptos AS insc 
ON c.codigo=insc.curso_id;

#6
SELECT *
FROM curso where cupo<10;