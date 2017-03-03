/*CREACIÓN TABLAS*/
CREATE TABLE USUARIOS(
id int primary key,
usuario varchar(25),
contrasena varchar (25)
)


CREATE TABLE MATERIAS(
id int primary key,
nombre varchar (25),
id_usuario int,
FOREIGN KEY (id_usuario) REFERENCES USUARIOS(id)
)

CREATE TABLE PREGUNTAS(
id int primary key, 
pregunta varchar (100),
respuesta varchar (100),
calificacion varchar (100),
id_materia int, 
FOREIGN KEY (id_materia) REFERENCES MATERIAS(id)
)

/*CREAR USUARIOS*/
CREATE PROCEDURE crearUsuarario
(
	@id int,
	@usuario nvarchar (25),
	@contrasena nvarchar (25)
)
	as
	insert into USUARIOS(					
			id,
			usuario,
			contrasena
			)
	Values (
			@id, 
			@usuario,
			@contrasena
			)

CREATE PROCEDURE crearMateria
(
	@id int,
	@nombre nvarchar (25),
	@id_usuario int
)
	as
	insert into MATERIAS(					
			id,
			nombre,
			id_usuario
			)
	Values (
			@id, 
			@nombre,
			@id_usuario
			)

CREATE PROCEDURE crearPreguntas
(
	@id int,
	@pregunta nvarchar (100),
	@respuesta nvarchar (100)
)
	as
	insert into PREGUNTAS(					
			id,
			pregunta,
			respuesta
			)
	Values (
			@id, 
			@pregunta,
			@respuesta
			)
