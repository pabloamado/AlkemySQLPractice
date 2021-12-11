create table persona(
id int,
nombre VARCHAR(30) )

insert into persona VALUES
(541,'Ramon'),
(240,'Pedro'),
(150,'Maria'),
(80,'Juana'),
(40,'Pablo');

SELECT * from persona;

ALTER TABLE persona ADD CONSTRAINT pk_id PRIMARY KEY(id);

SELECT * from persona;