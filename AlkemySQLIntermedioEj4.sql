#1
SELECT
    COUNT(*) AS cantidad_profesores
    FROM (SELECT p.id,COUNT(c.codigo)
        FROM profesor AS p INNER JOIN curso AS c
        ON p.id=c.PROFESOR_id 
        WHERE c.turno='noche'
        GROUP BY p.id HAVING count()>1)sql_profesores_noche;
        
#2
Escriba una consulta para obtener la información de todos los estudiantes que no realizan el curso con código 105.

SELECT *
FROM estudiante AS e
where e.legajo IN (select insc.ESTUDIANTE_legajo
                  FROM inscripcion AS insc
                  where insc.CURSO_codigo<>105);