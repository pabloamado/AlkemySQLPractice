#1
SELECT 
	ESTUDIANTE_legajo AS LEGAJO_ALUMNO,
	count(*) as CURSOS_INSCRIPTOS
FROM inscripcion 
GROUP BY ESTUDIANTE_legajo;

#2
SELECT 
	ESTUDIANTE_legajo AS LEGAJO_ALUMNO,
	count(*) as CURSOS_INSCRIPTOS
FROM inscripcion 
GROUP BY ESTUDIANTE_legajo
HAVING count(*)>1;

#3
SELECT
		e.*
FROM estudiante AS e
WHERE 
NOT EXISTS (SELECT 1
			FROM inscripcion AS insc
			WHERE insc.ESTUDIANTE_legajo=e.legajo
			);

#4
CREATE CLUSTERED INDEX pk_id ON profesor (id);
CREATE CLUSTERED INDEX pk_codigo ON curso (codigo);
CREATE CLUSTERED INDEX pk_legajo ON estudiante (legajo);
CREATE CLUSTERED INDEX pk_numero ON inscripcion (numero);

CREATE NONCLUSTERED INDEX fk_profesor_id ON curso (PROFESOR_id);
CREATE NONCLUSTERED INDEX fk_estudiante_legajo ON inscripcion (ESTUDIANTE_legajo);
CREATE NONCLUSTERED INDEX fk_curso_codigo ON inscripcion (CURSO_legajo);

#5
SELECT
		e.*
FROM estudiante AS e
WHERE 
EXISTS (SELECT 1
		FROM inscripcion AS insc,curso AS c,profesor AS p
		WHERE insc.ESTUDIANTE_legajo=e.legajo AND
		insc.CURSO_codigo=c.codigo AND
		c.PROFESOR_id=p.id AND
		p.apellido='Perez'
		)
UNION
SELECT
		e.*
FROM estudiante AS e
WHERE 
EXISTS (SELECT 1
		FROM inscripcion AS insc,curso AS c,profesor AS p
		WHERE insc.ESTUDIANTE_legajo=e.legajo AND
		insc.CURSO_codigo=c.codigo AND
		c.PROFESOR_id=p.id AND
		p.apellido='Paz'
		);