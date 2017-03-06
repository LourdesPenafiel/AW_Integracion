/*CREACION BDD*/
CREATE DATABASE AW_PROYECTO
USE AW_PROYECTO

/*CREACI�N TABLAS*/
CREATE TABLE USUARIOS(
id int IDENTITY(1,1) primary key,
usuario varchar(25),
contrasena varchar (25),
tipo_usuario varchar (25)
)

CREATE TABLE MATERIAS(
id int IDENTITY(1,1) primary key,
nombre varchar (25),
)

CREATE TABLE PREGUNTAS(
id int IDENTITY(1,1) primary key, 
pregunta varchar (100),
calificacion int,
id_materia int, 
id_usuario int,
FOREIGN KEY (id_materia) REFERENCES MATERIAS(id),
FOREIGN KEY (id_usuario) REFERENCES USUARIOS(id),
respuesta varchar (100)
)


CREATE TABLE OPCIONES_RESPUESTA(
id int IDENTITY(1,1) primary key, 
opcion varchar (100),
id_pregunta int REFERENCES PREGUNTAS(id)
)

CREATE TABLE RESPUESTA_USUARIO (
id int IDENTITY(1,1) primary key, 
id_usuario int REFERENCES USUARIOS(id),
id_opciones_respuesta int REFERENCES OPCIONES_RESPUESTA(id)
)

select * from PREGUNTAS


/*CREAR USUARIOS*/
CREATE PROCEDURE crearUsuario
(
	@usuario varchar (25),
	@contrasena varchar (25),
	@tipo_usuario varchar(25)
)
	as
	insert into USUARIOS(usuario, contrasena, tipo_usuario)
	Values (@usuario, @contrasena, @tipo_usuario)

/* LISTAR USUARIOS */		
create procedure listarUsuarios
as
	select id, usuario, contrasena, tipo_usuario from USUARIOS

/*MODIFICAR USUAIOS */
create procedure modificarUsuarios(
	@id int,	
	@usuario varchar (25),
	@contrasena varchar (25),
	@tipo_usuario varchar(25)
)

as
	update USUARIOS 
	set usuario=@usuario,contrasena=@contrasena, tipo_usuario =@tipo_usuario
	where id=@id

/*LISTAR USUARIOS POR ID*/
CREATE PROCEDURE listarUsuariosID(
	@id int
)
as
	select usuario,contrasena, tipo_usuario from USUARIOS
	where id = @id


/* CREAR MATERIAS */
CREATE PROCEDURE crearMateria
(
	@nombre varchar (25)
)
	as
	insert into MATERIAS(nombre)
	Values (@nombre)

/*LISTAR MATERIAS*/		
create procedure listarMaterias
as
	select id, nombre from MATERIAS

/*MODIFICAR MATERIAS*/
create procedure modificarMaterias(
	@id int,	
	@nombre varchar (25)
)

as
	update MATERIAS 
	set nombre=@nombre
	where id=@id

/*LISTAR MATERIAS POR ID*/
CREATE PROCEDURE listarMateriasID(
	@id int
)
as
	select nombre from MATERIAS
	where id = @id

/* CREAR PREGUNTAS */
CREATE PROCEDURE crearPregunta
(
	@pregunta varchar (100),
	@calificacion int,
	@id_materia int, 
	@id_usuario int
)
	as
	insert into PREGUNTAS(pregunta,  calificacion, id_materia, id_usuario)
	Values (@pregunta, @calificacion, @id_materia, @id_usuario)


ALTER PROCEDURE crearRespuesta
(
	@pregunta varchar (100),
	@opcion1 varchar (100),
	@opcion2 varchar (100),
	@opcion3 varchar (100),
	@respuesta varchar (10),
	@calificacion int,
	@id_materia int, 
	@id_usuario int,
	@id_pregunta int output
)

as 


	insert into PREGUNTAS(pregunta,  calificacion, id_materia, id_usuario, respuesta)
	Values (@pregunta, @calificacion, @id_materia, @id_usuario, @respuesta)
select @id_pregunta = SCOPE_IDENTITY()
insert into OPCIONES_RESPUESTA (opcion, id_pregunta)
values(@opcion1, @id_pregunta),(@opcion2, @id_pregunta), (@opcion3, @id_pregunta)


select * from MATERIAS
select * from USUARIOS
select * from PREGUNTAS
select * from OPCIONES_RESPUESTA

DELETE FROM OPCIONES_RESPUESTA
/*LISTAR PREGUNTAS POR MATERIA */
ALTER PROCEDURE listarPreguntasID_Materia(
	@id_materia int
)
as
	select pregunta, id_materia from PREGUNTAS
	where id_materia = @id_materia
exec listarPreguntasID_Materia 1

ALTER PROCEDURE listarPreguntas_ID(
	@id int
)
as
	select id ,opcion1, opcion2, opcion3 from PREGUNTAS
	where id = @id
exec listarPreguntasID_Materia 1

CREATE PROCEDURE LoginUser(
	@usuario varchar (25),
	@contrasena varchar (25)
)
as 
	select * from USUARIOS
	where @usuario = usuario and @contrasena = contrasena 

DELETE FROM PREGUNTAS
DELETE FROM OPCIONES_RESPUESTA