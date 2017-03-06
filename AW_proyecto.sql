/*CREACIÓN BDD*/
CREATE DATABASE AulaVirtual
GO
USE AulaVirtual
GO

/*CREACIÓN TABLAS*/
CREATE TABLE USUARIOS(
	id int identity (1,1) primary key,
	nombre varchar(50) not null,
	fotografia image not null,
	rol varchar(20)not null default 'Estudiante',
	usuario varchar(25)not null,
	contrasena varchar (25)not null
)

CREATE TABLE MATERIAS(
	id int identity (1,1) primary key,
	nombre varchar (25) not null,
	id_usuario int not null REFERENCES USUARIOS(id)
)

CREATE TABLE PREGUNTAS(
	id int identity (1,1) primary key, 
	pregunta varchar (100) not null,
	respuesta varchar (100) not null,
	puntaje int not null,
	id_materia int REFERENCES MATERIAS(id)
)

/*CREAR USUARIOS*/
CREATE PROCEDURE crearUsuario
(
	@nombre varchar (50),
	@fotografia image,
	@rol varchar(20),
	@usuario varchar (25),
	@contrasena varchar (25)
)
as
	insert into USUARIOS values (@nombre,@fotografia,@rol,@usuario,@contrasena)
	
/*MOSTRAR USUARIOS*/
CREATE PROCEDURE mostrarTodosUsuario
as 
	select * from USUARIOS

/*SESION USUARIOS*/
CREATE PROCEDURE sesionUsuario
(
	@usuario  VARCHAR(25),
    @contrasena  VARCHAR(20)
)
as 
	select * from USUARIO where usuario=@usuario and contrasena =@contrasena

/*CREAR MATERIA-USUARIOS*/
CREATE PROCEDURE crearMateria
(
	@nombre nvarchar (25),
	@id_usuario int
)
	as
	insert into MATERIAS values (@nombre,@id_usuario)

/*PREGUNTAS USUARIOS*/
CREATE PROCEDURE crearPreguntas
(
	@pregunta nvarchar (100),
	@respuesta nvarchar (100)
)
	as
	insert into PREGUNTAS values (@pregunta,@respuesta)
