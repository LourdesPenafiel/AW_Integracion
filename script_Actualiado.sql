USE [master]
GO
/****** Object:  Database [AW_PROYECTO]    Script Date: 09/03/2017 2:57:43 ******/
CREATE DATABASE [AW_PROYECTO]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AW_PROYECTO', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AW_PROYECTO.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AW_PROYECTO_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.MSSQLSERVER\MSSQL\DATA\AW_PROYECTO_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AW_PROYECTO] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AW_PROYECTO].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AW_PROYECTO] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET ARITHABORT OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AW_PROYECTO] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AW_PROYECTO] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AW_PROYECTO] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AW_PROYECTO] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET RECOVERY FULL 
GO
ALTER DATABASE [AW_PROYECTO] SET  MULTI_USER 
GO
ALTER DATABASE [AW_PROYECTO] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AW_PROYECTO] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AW_PROYECTO] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AW_PROYECTO] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AW_PROYECTO] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AW_PROYECTO]
GO
/****** Object:  Table [dbo].[MATERIAS]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATERIAS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PREGUNTAS]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PREGUNTAS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pregunta] [varchar](100) NULL,
	[opcion1] [varchar](100) NULL,
	[opcion2] [varchar](100) NULL,
	[opcion3] [varchar](100) NULL,
	[respuesta] [varchar](100) NULL,
	[calificacion] [int] NULL,
	[id_materia] [int] NULL,
	[id_usuario] [int] NULL,
	[respondio] [int] NOT NULL CONSTRAINT [DF_PREGUNTAS_respondio]  DEFAULT ((0)),
 CONSTRAINT [PK__PREGUNTA__3213E83F276EDEB3] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RESPUESTA_USUARIO]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RESPUESTA_USUARIO](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[id_usuario] [int] NULL,
	[id_pregunta] [int] NULL,
	[preguntarespondida] [bit] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NULL,
	[apellido] [varchar](25) NULL,
	[foto] [image] NULL,
	[usuario] [varchar](25) NULL,
	[contrasena] [varchar](25) NULL,
	[tipo_usuario] [varchar](25) NULL,
 CONSTRAINT [PK__USUARIOS__3213E83F7F60ED59] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[RESPUESTA_USUARIO] ADD  CONSTRAINT [DF_RESPUESTA_USUARIO_preguntarespondida]  DEFAULT ((0)) FOR [preguntarespondida]
GO
ALTER TABLE [dbo].[PREGUNTAS]  WITH CHECK ADD  CONSTRAINT [FK__PREGUNTAS__id_ma__29572725] FOREIGN KEY([id_materia])
REFERENCES [dbo].[MATERIAS] ([id])
GO
ALTER TABLE [dbo].[PREGUNTAS] CHECK CONSTRAINT [FK__PREGUNTAS__id_ma__29572725]
GO
ALTER TABLE [dbo].[PREGUNTAS]  WITH CHECK ADD  CONSTRAINT [FK__PREGUNTAS__id_us__2A4B4B5E] FOREIGN KEY([id_usuario])
REFERENCES [dbo].[USUARIOS] ([id])
GO
ALTER TABLE [dbo].[PREGUNTAS] CHECK CONSTRAINT [FK__PREGUNTAS__id_us__2A4B4B5E]
GO
/****** Object:  StoredProcedure [dbo].[ContarPreguntasPorID_Materia]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[ContarPreguntasPorID_Materia](
	@id_materia int
)
as
	select totalPreguntas = count(id_materia) from PREGUNTAS
	where id_materia = @id_materia
	GROUP BY  id_materia

GO
/****** Object:  StoredProcedure [dbo].[crearMateria]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[crearMateria]
(
	@nombre varchar (25)
)
	as
	insert into MATERIAS(nombre)
	Values (@nombre)

GO
/****** Object:  StoredProcedure [dbo].[crearRespuesta]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[crearRespuesta]
(
	@pregunta varchar (100),
	@opcion1 varchar (100),
	@opcion2 varchar (100),
	@opcion3 varchar (100),
	@respuesta varchar (10),
	@calificacion int,
	@id_materia int, 
	@id_usuario int
)

as 
	insert into PREGUNTAS(pregunta, opcion1, opcion2, opcion3, respuesta, calificacion, id_materia, id_usuario)
	Values (@pregunta, @opcion1, @opcion2, @opcion3, @respuesta, @calificacion, @id_materia, @id_usuario)

GO
/****** Object:  StoredProcedure [dbo].[crearUsuario]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[crearUsuario]
(
    @nombre varchar (25),
	@apellido varchar (25),
	@foto image,
	@usuario varchar (25),
	@contrasena varchar (25),
	@tipo_usuario varchar(25)
)
	as
	if not exists (select usuario from usuarios where usuario=@usuario  )
	begin
	insert into USUARIOS values (@nombre, @apellido,@foto,@usuario, @contrasena, @tipo_usuario)
	end

GO
/****** Object:  StoredProcedure [dbo].[listarMaterias]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[listarMaterias]
as
	select id, nombre from MATERIAS

GO
/****** Object:  StoredProcedure [dbo].[listarMateriasID]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listarMateriasID](
	@id int
)
as
	select nombre from MATERIAS
	where id = @id

GO
/****** Object:  StoredProcedure [dbo].[listarPreguntas_ID]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listarPreguntas_ID](
	@id int
)
as
	select * from PREGUNTAS
	where id = @id

GO
/****** Object:  StoredProcedure [dbo].[listarPreguntasID_Materia]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listarPreguntasID_Materia](
	@id_materia int
)
as
	select pregunta, id_materia from PREGUNTAS
	where id_materia = @id_materia

GO
/****** Object:  StoredProcedure [dbo].[listarUsuarios]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE procedure [dbo].[listarUsuarios]
as
	select * from USUARIOS

GO
/****** Object:  StoredProcedure [dbo].[listarUsuariosID]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[listarUsuariosID](
	@id int
)
as
	select *from USUARIOS
	where id = @id

GO
/****** Object:  StoredProcedure [dbo].[LoginUser]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[LoginUser](
	@usuario varchar (25),
	@contrasena varchar (25)
)
as 
	select * from USUARIOS
	where @usuario = usuario and @contrasena = contrasena

GO
/****** Object:  StoredProcedure [dbo].[modificarMaterias]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[modificarMaterias](
	@id int,	
	@nombre varchar (25)
)

as
	update MATERIAS 
	set nombre=@nombre
	where id=@id

GO
/****** Object:  StoredProcedure [dbo].[modificarUsuarios]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*MODIFICAR USUAIOS */
CREATE procedure [dbo].[modificarUsuarios](
	@id int,	
	@nombre varchar (25),
	@apellido varchar (25),
	@foto image,
	@usuario varchar (25),
	@contrasena varchar (25),
	@tipo_usuario varchar(25)
)

as
	update USUARIOS 
	set nombre=@nombre, apellido=@apellido, foto=@foto, usuario=@usuario,contrasena=@contrasena, tipo_usuario =@tipo_usuario
	where id=@id

GO
/****** Object:  StoredProcedure [dbo].[PreguntasPorID_Materia]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[PreguntasPorID_Materia](
	@id_materia int
)
as
	select * from PREGUNTAS
	where id_materia = @id_materia
GO
/****** Object:  StoredProcedure [dbo].[preguntasRespondidas_Usuario]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*PREGUNTAS RESPONDIDAS*/
CREATE PROCEDURE [dbo].[preguntasRespondidas_Usuario](
	@id_usuario int,
	@id_pregunta int
)
as 
	select case when exists (
	select * from RESPUESTA_USUARIO 
	where id_usuario = @id_usuario and id_pregunta=@id_pregunta and preguntarespondida = 1
	)
	Then CAST(1 as BIT)
	else CAST(0 as BIT)
	END
GO
/****** Object:  StoredProcedure [dbo].[registroRespuesta]    Script Date: 09/03/2017 2:57:44 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[registroRespuesta](
	@id_usuario int, 
	@id_pregunta int,
	@preguntarespondida bit
)
as
	insert into RESPUESTA_USUARIO(id_usuario, id_pregunta, preguntarespondida)
	values (@id_usuario, @id_pregunta, @preguntarespondida)
GO
USE [master]
GO
ALTER DATABASE [AW_PROYECTO] SET  READ_WRITE 
GO
