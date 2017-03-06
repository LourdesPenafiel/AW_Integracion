USE [master]
GO
/****** Object:  Database [AulaVirtual]    Script Date: 03/06/2017 09:50:48 ******/
CREATE DATABASE [AulaVirtual] ON  PRIMARY 
( NAME = N'AulaVirtual', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\AulaVirtual.mdf' , SIZE = 2304KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AulaVirtual_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL10_50.SQLEXPRESS\MSSQL\DATA\AulaVirtual_log.LDF' , SIZE = 576KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AulaVirtual] SET COMPATIBILITY_LEVEL = 100
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AulaVirtual].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AulaVirtual] SET ANSI_NULL_DEFAULT OFF
GO
ALTER DATABASE [AulaVirtual] SET ANSI_NULLS OFF
GO
ALTER DATABASE [AulaVirtual] SET ANSI_PADDING OFF
GO
ALTER DATABASE [AulaVirtual] SET ANSI_WARNINGS OFF
GO
ALTER DATABASE [AulaVirtual] SET ARITHABORT OFF
GO
ALTER DATABASE [AulaVirtual] SET AUTO_CLOSE ON
GO
ALTER DATABASE [AulaVirtual] SET AUTO_CREATE_STATISTICS ON
GO
ALTER DATABASE [AulaVirtual] SET AUTO_SHRINK OFF
GO
ALTER DATABASE [AulaVirtual] SET AUTO_UPDATE_STATISTICS ON
GO
ALTER DATABASE [AulaVirtual] SET CURSOR_CLOSE_ON_COMMIT OFF
GO
ALTER DATABASE [AulaVirtual] SET CURSOR_DEFAULT  GLOBAL
GO
ALTER DATABASE [AulaVirtual] SET CONCAT_NULL_YIELDS_NULL OFF
GO
ALTER DATABASE [AulaVirtual] SET NUMERIC_ROUNDABORT OFF
GO
ALTER DATABASE [AulaVirtual] SET QUOTED_IDENTIFIER OFF
GO
ALTER DATABASE [AulaVirtual] SET RECURSIVE_TRIGGERS OFF
GO
ALTER DATABASE [AulaVirtual] SET  ENABLE_BROKER
GO
ALTER DATABASE [AulaVirtual] SET AUTO_UPDATE_STATISTICS_ASYNC OFF
GO
ALTER DATABASE [AulaVirtual] SET DATE_CORRELATION_OPTIMIZATION OFF
GO
ALTER DATABASE [AulaVirtual] SET TRUSTWORTHY OFF
GO
ALTER DATABASE [AulaVirtual] SET ALLOW_SNAPSHOT_ISOLATION OFF
GO
ALTER DATABASE [AulaVirtual] SET PARAMETERIZATION SIMPLE
GO
ALTER DATABASE [AulaVirtual] SET READ_COMMITTED_SNAPSHOT OFF
GO
ALTER DATABASE [AulaVirtual] SET HONOR_BROKER_PRIORITY OFF
GO
ALTER DATABASE [AulaVirtual] SET  READ_WRITE
GO
ALTER DATABASE [AulaVirtual] SET RECOVERY SIMPLE
GO
ALTER DATABASE [AulaVirtual] SET  MULTI_USER
GO
ALTER DATABASE [AulaVirtual] SET PAGE_VERIFY CHECKSUM
GO
ALTER DATABASE [AulaVirtual] SET DB_CHAINING OFF
GO
USE [AulaVirtual]
GO
/****** Object:  Table [dbo].[USUARIOS]    Script Date: 03/06/2017 09:50:49 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[USUARIOS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[fotografia] [image] NOT NULL,
	[rol] [varchar](20) NOT NULL,
	[usuario] [varchar](25) NOT NULL,
	[contrasena] [varchar](25) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[sesionUsuario]    Script Date: 03/06/2017 09:51:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[sesionUsuario]
(
	@usuario  VARCHAR(25),
    @contrasena  VARCHAR(20)
)
as 
	select * from USUARIOS where usuario=@usuario and contrasena =@contrasena
GO
/****** Object:  StoredProcedure [dbo].[mostrarUsuarioID]    Script Date: 03/06/2017 09:51:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*MOSTRAR USUARIOS*/
CREATE PROCEDURE [dbo].[mostrarUsuarioID]
(
	@idUsuario  int
)
as 
	select * from USUARIOS where id=@idUsuario
GO
/****** Object:  StoredProcedure [dbo].[mostrarTodosUsuario]    Script Date: 03/06/2017 09:51:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[mostrarTodosUsuario]
as 
	select * from USUARIOS
GO
/****** Object:  Table [dbo].[MATERIAS]    Script Date: 03/06/2017 09:51:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[MATERIAS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](25) NOT NULL,
	[id_usuario] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[crearUsuario]    Script Date: 03/06/2017 09:51:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
/*CREAR USUARIOS*/
CREATE PROCEDURE [dbo].[crearUsuario]
(
	@nombre varchar (50),
	@fotografia image,
	@rol varchar(20),
	@usuario varchar (25),
	@contrasena varchar (25)
)
as
	insert into USUARIOS values (@nombre,@fotografia,@rol,@usuario,@contrasena)
GO
/****** Object:  StoredProcedure [dbo].[crearMateria]    Script Date: 03/06/2017 09:51:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE PROCEDURE [dbo].[crearMateria]
(
	@nombre nvarchar (25),
	@id_usuario int
)
	as
	insert into MATERIAS values (@nombre,@id_usuario)
GO
/****** Object:  Table [dbo].[PREGUNTAS]    Script Date: 03/06/2017 09:51:00 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PREGUNTAS](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[pregunta] [varchar](100) NOT NULL,
	[respuesta] [varchar](100) NOT NULL,
	[puntaje] [int] NOT NULL,
	[id_materia] [int] NULL,
PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Default [DF__USUARIOS__rol__014935CB]    Script Date: 03/06/2017 09:50:49 ******/
ALTER TABLE [dbo].[USUARIOS] ADD  DEFAULT ('Estudiante') FOR [rol]
GO
/****** Object:  ForeignKey [FK__MATERIAS__id_usu__060DEAE8]    Script Date: 03/06/2017 09:51:00 ******/
ALTER TABLE [dbo].[MATERIAS]  WITH CHECK ADD FOREIGN KEY([id_usuario])
REFERENCES [dbo].[USUARIOS] ([id])
GO
/****** Object:  ForeignKey [FK__PREGUNTAS__id_ma__0AD2A005]    Script Date: 03/06/2017 09:51:00 ******/
ALTER TABLE [dbo].[PREGUNTAS]  WITH CHECK ADD FOREIGN KEY([id_materia])
REFERENCES [dbo].[MATERIAS] ([id])
GO
