USE [master]
GO
/****** Object:  Database [HayEquipo]    Script Date: 31/07/2019 21:20:06 ******/
CREATE DATABASE [HayEquipo]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'HayEquipo', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\HayEquipo.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'HayEquipo_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL14.SQLEXPRESS\MSSQL\DATA\HayEquipo_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
GO
ALTER DATABASE [HayEquipo] SET COMPATIBILITY_LEVEL = 140
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [HayEquipo].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [HayEquipo] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [HayEquipo] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [HayEquipo] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [HayEquipo] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [HayEquipo] SET ARITHABORT OFF 
GO
ALTER DATABASE [HayEquipo] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [HayEquipo] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [HayEquipo] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [HayEquipo] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [HayEquipo] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [HayEquipo] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [HayEquipo] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [HayEquipo] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [HayEquipo] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [HayEquipo] SET  DISABLE_BROKER 
GO
ALTER DATABASE [HayEquipo] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [HayEquipo] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [HayEquipo] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [HayEquipo] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [HayEquipo] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [HayEquipo] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [HayEquipo] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [HayEquipo] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [HayEquipo] SET  MULTI_USER 
GO
ALTER DATABASE [HayEquipo] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [HayEquipo] SET DB_CHAINING OFF 
GO
ALTER DATABASE [HayEquipo] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [HayEquipo] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [HayEquipo] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [HayEquipo] SET QUERY_STORE = OFF
GO
USE [HayEquipo]
GO
/****** Object:  Table [dbo].[Administrador]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Administrador](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nroLegajo] [int] NULL,
	[apellido] [nvarchar](50) NULL,
	[nombres] [nvarchar](50) NULL,
	[idTipoDoc] [int] NULL,
	[nroDoc] [int] NULL,
	[fechaNacimiento] [date] NULL,
	[calle] [nvarchar](50) NULL,
	[nroCalle] [int] NULL,
	[idBarrio] [int] NULL,
	[nroTelefono] [int] NULL,
	[fechaIngreso] [date] NULL,
	[idUsuario] [int] NULL,
 CONSTRAINT [PK_Administrador] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[AmigosPorDeportistas]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[AmigosPorDeportistas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDeportista] [int] NULL,
	[idAmigo] [int] NULL,
 CONSTRAINT [PK_AmigosPorDeportistas_1] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Barrio]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Barrio](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[idZona] [int] NULL,
 CONSTRAINT [PK_Barrio] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Cancha]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Cancha](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDeporte] [int] NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
	[idTipoCancha] [int] NULL,
 CONSTRAINT [PK_Cancha] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanchasPorComplejos]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanchasPorComplejos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idComplejo] [int] NULL,
	[idCancha] [int] NULL,
 CONSTRAINT [PK_CanchasPorComplejos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[CanchasPorHorarios]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[CanchasPorHorarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idHorario] [int] NULL,
	[idCancha] [int] NULL,
 CONSTRAINT [PK_CanchasPorHorarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ComplejoDeportivo]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ComplejoDeportivo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
	[idTipoComplejo] [int] NULL,
	[calle] [nvarchar](50) NULL,
	[nroCalle] [int] NULL,
	[idBarrio] [int] NULL,
	[nroTelefono] [int] NULL,
	[idResponsable] [int] NULL,
	[idUsuario] [int] NULL,
	[promedioEstrellas] [float] NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_ComplejoDeportivo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deporte]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deporte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_Deporte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeportesPorDeportistas]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeportesPorDeportistas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDeportista] [int] NULL,
	[idDeporte] [int] NULL,
 CONSTRAINT [PK_DeportesPorDeportistas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Deportista]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Deportista](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[apellido] [nvarchar](50) NULL,
	[nombres] [nvarchar](50) NULL,
	[idTipoDoc] [int] NULL,
	[nroDoc] [int] NULL,
	[fechaNacimiento] [date] NULL,
	[nroTelefono] [int] NULL,
	[idUsuario] [int] NULL,
	[promedioEstrellas] [float] NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_Deportista] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DeportistasPorEquipos]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DeportistasPorEquipos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDeportista] [int] NULL,
	[idEquipo] [int] NULL,
 CONSTRAINT [PK_DeportistasPorEquipo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleValoracionComplejo]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleValoracionComplejo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nroEstrellas] [int] NULL,
	[idTipoValoracion] [int] NULL,
	[idValoracion] [int] NULL,
 CONSTRAINT [PK_DetalleValoracionComplejo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DetalleValoracionDeportista]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DetalleValoracionDeportista](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nroEstrellas] [int] NULL,
	[idTipoValoracion] [int] NULL,
	[idValoracion] [int] NULL,
 CONSTRAINT [PK_DetalleValoracion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EncuentroDeportivo]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EncuentroDeportivo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idAdmin] [int] NULL,
	[fechaCreacionEncuentro] [smalldatetime] NULL,
	[fechaDestruccionEncuentro] [smalldatetime] NULL,
	[idDeporte] [int] NULL,
	[idComplejo] [int] NULL,
	[calle] [nvarchar](50) NULL,
	[nroCalle] [int] NULL,
	[idEquipo] [int] NULL,
	[fechaInicioEncuentro] [smalldatetime] NULL,
	[fechaFinEncuentro] [smalldatetime] NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_EncuentroDeportivo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Equipo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[capacidad] [int] NULL,
	[nroDeportistasActual] [int] NULL,
	[promedioEstrellas] [float] NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_Equipo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Estado](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Horario]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Horario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[fecha] [date] NULL,
	[horaInicio] [time](7) NULL,
	[horaFin] [time](7) NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_Horario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[InvitacionEncuentro]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[InvitacionEncuentro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[fechaHora] [smalldatetime] NULL,
	[idEncuentro] [int] NULL,
	[idInvitado] [int] NULL,
 CONSTRAINT [PK_InvitacionEncuentro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Localidad]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Localidad](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[idProvincia] [int] NULL,
 CONSTRAINT [PK_Localidad] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Mensaje]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Mensaje](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idEncuentro] [int] NULL,
	[texto] [nvarchar](50) NULL,
	[fechaHora] [smalldatetime] NULL,
	[idUsuario] [int] NULL,
 CONSTRAINT [PK_Mensaje] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Pais]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Pais](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[bandera] [image] NULL,
 CONSTRAINT [PK_Pais] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Permiso]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Permiso](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Permiso] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PermisosPorRoles]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PermisosPorRoles](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRol] [int] NULL,
	[idPermiso] [int] NULL,
 CONSTRAINT [PK_PermisosPorRoles] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Posicion]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Posicion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
	[idDeporte] [int] NULL,
 CONSTRAINT [PK_Posicion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[PosicionesPorDeportistas]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[PosicionesPorDeportistas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idPosicion] [int] NULL,
	[idDeportista] [int] NULL,
 CONSTRAINT [PK_PosicionesPorDeportistas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Provincia]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Provincia](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[idPais] [int] NULL,
 CONSTRAINT [PK_Provincia] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Publicacion]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Publicacion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idSponsor] [int] NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
	[fechaInicio] [smalldatetime] NULL,
	[fechaFin] [smalldatetime] NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_Publicacion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Responsable]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Responsable](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[apellido] [nvarchar](50) NULL,
	[nombres] [nvarchar](50) NULL,
	[idTipoDoc] [int] NULL,
	[nroDoc] [int] NULL,
	[fechaNacimiento] [date] NULL,
	[nroTelefono] [int] NULL,
	[email] [nvarchar](50) NULL,
 CONSTRAINT [PK_Responsable] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rol]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rol](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descipcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rol] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[RolesPorUsuarios]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[RolesPorUsuarios](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idRol] [int] NULL,
	[idUsuario] [int] NULL,
 CONSTRAINT [PK_RolesPorUsuarios] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Rubro]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Rubro](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_Rubro] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServicioExtra]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServicioExtra](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_ServicioExtra] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ServiciosPorComplejos]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ServiciosPorComplejos](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idComplejo] [int] NULL,
	[idServicio] [int] NULL,
 CONSTRAINT [PK_ServiciosPorComplejos] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sesion]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sesion](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idUsuario] [int] NULL,
	[horaInicio] [smalldatetime] NULL,
	[horaFin] [smalldatetime] NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_Sesion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sponsor]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sponsor](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
	[idRubro] [int] NULL,
	[idResponsable] [int] NULL,
	[fechaInicioContrato] [smalldatetime] NULL,
	[fechaFinContrato] [smalldatetime] NULL,
	[idEstado] [int] NULL,
 CONSTRAINT [PK_Es] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoCancha]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoCancha](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoCancha] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoComplejo]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoComplejo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoComplejo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDeporte]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDeporte](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoDeporte] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoDocumento]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoDocumento](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoDocumento] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TiposPorDeportes]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TiposPorDeportes](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idTipoDeporte] [int] NULL,
	[idDeporte] [int] NULL,
 CONSTRAINT [PK_TiposPorDeportes] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoValoracionComplejo]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoValoracionComplejo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoValoracionComplejo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TipoValoracionDeportista]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TipoValoracionDeportista](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[descripcion] [nvarchar](50) NULL,
 CONSTRAINT [PK_TipoValoracion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Usuario](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[contraseña] [nvarchar](50) NULL,
	[email] [nvarchar](50) NULL,
	[avatar] [image] NULL,
	[fechaAlta] [smalldatetime] NULL,
	[fechaBaja] [smalldatetime] NULL,
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValoracionComplejo]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValoracionComplejo](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idComplejo] [int] NULL,
	[reseña] [nvarchar](50) NULL,
	[promedioEstrellas] [float] NULL,
	[fechaHora] [smalldatetime] NULL,
 CONSTRAINT [PK_ValoracionComplejo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ValoracionDeportista]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ValoracionDeportista](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idDeportista] [int] NULL,
	[reseña] [nvarchar](50) NULL,
	[promedioEstrellas] [float] NULL,
	[fechaHora] [smalldatetime] NULL,
 CONSTRAINT [PK_Valoracion] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Zona]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Zona](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[nombre] [nvarchar](50) NULL,
	[idLocalidad] [int] NULL,
 CONSTRAINT [PK_Zona] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ZonasPorDeportistas]    Script Date: 31/07/2019 21:20:06 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ZonasPorDeportistas](
	[id] [int] IDENTITY(1,1) NOT NULL,
	[idZona] [int] NULL,
	[idDeportista] [int] NULL,
 CONSTRAINT [PK_ZonasPorDeportistas] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Administrador]  WITH CHECK ADD  CONSTRAINT [FK_Administrador_Barrio] FOREIGN KEY([idBarrio])
REFERENCES [dbo].[Barrio] ([id])
GO
ALTER TABLE [dbo].[Administrador] CHECK CONSTRAINT [FK_Administrador_Barrio]
GO
ALTER TABLE [dbo].[Administrador]  WITH CHECK ADD  CONSTRAINT [FK_Administrador_TipoDocumento] FOREIGN KEY([idTipoDoc])
REFERENCES [dbo].[TipoDocumento] ([id])
GO
ALTER TABLE [dbo].[Administrador] CHECK CONSTRAINT [FK_Administrador_TipoDocumento]
GO
ALTER TABLE [dbo].[Administrador]  WITH CHECK ADD  CONSTRAINT [FK_Administrador_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Administrador] CHECK CONSTRAINT [FK_Administrador_Usuario]
GO
ALTER TABLE [dbo].[AmigosPorDeportistas]  WITH CHECK ADD  CONSTRAINT [FK_AmigosPorDeportistas_Deportista] FOREIGN KEY([idDeportista])
REFERENCES [dbo].[Deportista] ([id])
GO
ALTER TABLE [dbo].[AmigosPorDeportistas] CHECK CONSTRAINT [FK_AmigosPorDeportistas_Deportista]
GO
ALTER TABLE [dbo].[AmigosPorDeportistas]  WITH CHECK ADD  CONSTRAINT [FK_AmigosPorDeportistas_Deportista1] FOREIGN KEY([idAmigo])
REFERENCES [dbo].[Deportista] ([id])
GO
ALTER TABLE [dbo].[AmigosPorDeportistas] CHECK CONSTRAINT [FK_AmigosPorDeportistas_Deportista1]
GO
ALTER TABLE [dbo].[Barrio]  WITH CHECK ADD  CONSTRAINT [FK_Barrio_Zona] FOREIGN KEY([idZona])
REFERENCES [dbo].[Zona] ([id])
GO
ALTER TABLE [dbo].[Barrio] CHECK CONSTRAINT [FK_Barrio_Zona]
GO
ALTER TABLE [dbo].[Cancha]  WITH CHECK ADD  CONSTRAINT [FK_Cancha_Deporte] FOREIGN KEY([idDeporte])
REFERENCES [dbo].[Deporte] ([id])
GO
ALTER TABLE [dbo].[Cancha] CHECK CONSTRAINT [FK_Cancha_Deporte]
GO
ALTER TABLE [dbo].[Cancha]  WITH CHECK ADD  CONSTRAINT [FK_Cancha_TipoCancha] FOREIGN KEY([idTipoCancha])
REFERENCES [dbo].[TipoCancha] ([id])
GO
ALTER TABLE [dbo].[Cancha] CHECK CONSTRAINT [FK_Cancha_TipoCancha]
GO
ALTER TABLE [dbo].[CanchasPorComplejos]  WITH CHECK ADD  CONSTRAINT [FK_CanchasPorComplejos_Cancha] FOREIGN KEY([idCancha])
REFERENCES [dbo].[Cancha] ([id])
GO
ALTER TABLE [dbo].[CanchasPorComplejos] CHECK CONSTRAINT [FK_CanchasPorComplejos_Cancha]
GO
ALTER TABLE [dbo].[CanchasPorComplejos]  WITH CHECK ADD  CONSTRAINT [FK_CanchasPorComplejos_ComplejoDeportivo] FOREIGN KEY([idComplejo])
REFERENCES [dbo].[ComplejoDeportivo] ([id])
GO
ALTER TABLE [dbo].[CanchasPorComplejos] CHECK CONSTRAINT [FK_CanchasPorComplejos_ComplejoDeportivo]
GO
ALTER TABLE [dbo].[CanchasPorHorarios]  WITH CHECK ADD  CONSTRAINT [FK_CanchasPorHorarios_Cancha] FOREIGN KEY([idCancha])
REFERENCES [dbo].[Cancha] ([id])
GO
ALTER TABLE [dbo].[CanchasPorHorarios] CHECK CONSTRAINT [FK_CanchasPorHorarios_Cancha]
GO
ALTER TABLE [dbo].[CanchasPorHorarios]  WITH CHECK ADD  CONSTRAINT [FK_CanchasPorHorarios_Horario] FOREIGN KEY([idHorario])
REFERENCES [dbo].[Horario] ([id])
GO
ALTER TABLE [dbo].[CanchasPorHorarios] CHECK CONSTRAINT [FK_CanchasPorHorarios_Horario]
GO
ALTER TABLE [dbo].[ComplejoDeportivo]  WITH CHECK ADD  CONSTRAINT [FK_ComplejoDeportivo_Barrio] FOREIGN KEY([idBarrio])
REFERENCES [dbo].[Barrio] ([id])
GO
ALTER TABLE [dbo].[ComplejoDeportivo] CHECK CONSTRAINT [FK_ComplejoDeportivo_Barrio]
GO
ALTER TABLE [dbo].[ComplejoDeportivo]  WITH CHECK ADD  CONSTRAINT [FK_ComplejoDeportivo_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([id])
GO
ALTER TABLE [dbo].[ComplejoDeportivo] CHECK CONSTRAINT [FK_ComplejoDeportivo_Estado]
GO
ALTER TABLE [dbo].[ComplejoDeportivo]  WITH CHECK ADD  CONSTRAINT [FK_ComplejoDeportivo_Responsable] FOREIGN KEY([idResponsable])
REFERENCES [dbo].[Responsable] ([id])
GO
ALTER TABLE [dbo].[ComplejoDeportivo] CHECK CONSTRAINT [FK_ComplejoDeportivo_Responsable]
GO
ALTER TABLE [dbo].[ComplejoDeportivo]  WITH CHECK ADD  CONSTRAINT [FK_ComplejoDeportivo_TipoComplejo] FOREIGN KEY([idTipoComplejo])
REFERENCES [dbo].[TipoComplejo] ([id])
GO
ALTER TABLE [dbo].[ComplejoDeportivo] CHECK CONSTRAINT [FK_ComplejoDeportivo_TipoComplejo]
GO
ALTER TABLE [dbo].[ComplejoDeportivo]  WITH CHECK ADD  CONSTRAINT [FK_ComplejoDeportivo_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[ComplejoDeportivo] CHECK CONSTRAINT [FK_ComplejoDeportivo_Usuario]
GO
ALTER TABLE [dbo].[DeportesPorDeportistas]  WITH CHECK ADD  CONSTRAINT [FK_DeportesPorDeportistas_Deporte] FOREIGN KEY([idDeporte])
REFERENCES [dbo].[Deporte] ([id])
GO
ALTER TABLE [dbo].[DeportesPorDeportistas] CHECK CONSTRAINT [FK_DeportesPorDeportistas_Deporte]
GO
ALTER TABLE [dbo].[DeportesPorDeportistas]  WITH CHECK ADD  CONSTRAINT [FK_DeportesPorDeportistas_Deportista] FOREIGN KEY([idDeportista])
REFERENCES [dbo].[Deportista] ([id])
GO
ALTER TABLE [dbo].[DeportesPorDeportistas] CHECK CONSTRAINT [FK_DeportesPorDeportistas_Deportista]
GO
ALTER TABLE [dbo].[Deportista]  WITH CHECK ADD  CONSTRAINT [FK_Deportista_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([id])
GO
ALTER TABLE [dbo].[Deportista] CHECK CONSTRAINT [FK_Deportista_Estado]
GO
ALTER TABLE [dbo].[Deportista]  WITH CHECK ADD  CONSTRAINT [FK_Deportista_TipoDocumento] FOREIGN KEY([idTipoDoc])
REFERENCES [dbo].[TipoDocumento] ([id])
GO
ALTER TABLE [dbo].[Deportista] CHECK CONSTRAINT [FK_Deportista_TipoDocumento]
GO
ALTER TABLE [dbo].[Deportista]  WITH CHECK ADD  CONSTRAINT [FK_Deportista_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Deportista] CHECK CONSTRAINT [FK_Deportista_Usuario]
GO
ALTER TABLE [dbo].[DeportistasPorEquipos]  WITH CHECK ADD  CONSTRAINT [FK_DeportistasPorEquipo_Deportista] FOREIGN KEY([idDeportista])
REFERENCES [dbo].[Deportista] ([id])
GO
ALTER TABLE [dbo].[DeportistasPorEquipos] CHECK CONSTRAINT [FK_DeportistasPorEquipo_Deportista]
GO
ALTER TABLE [dbo].[DeportistasPorEquipos]  WITH CHECK ADD  CONSTRAINT [FK_DeportistasPorEquipo_Equipo] FOREIGN KEY([idEquipo])
REFERENCES [dbo].[Equipo] ([id])
GO
ALTER TABLE [dbo].[DeportistasPorEquipos] CHECK CONSTRAINT [FK_DeportistasPorEquipo_Equipo]
GO
ALTER TABLE [dbo].[DetalleValoracionComplejo]  WITH CHECK ADD  CONSTRAINT [FK_DetalleValoracionComplejo_TipoValoracionComplejo] FOREIGN KEY([idTipoValoracion])
REFERENCES [dbo].[TipoValoracionComplejo] ([id])
GO
ALTER TABLE [dbo].[DetalleValoracionComplejo] CHECK CONSTRAINT [FK_DetalleValoracionComplejo_TipoValoracionComplejo]
GO
ALTER TABLE [dbo].[DetalleValoracionComplejo]  WITH CHECK ADD  CONSTRAINT [FK_DetalleValoracionComplejo_ValoracionComplejo] FOREIGN KEY([idValoracion])
REFERENCES [dbo].[ValoracionComplejo] ([id])
GO
ALTER TABLE [dbo].[DetalleValoracionComplejo] CHECK CONSTRAINT [FK_DetalleValoracionComplejo_ValoracionComplejo]
GO
ALTER TABLE [dbo].[DetalleValoracionDeportista]  WITH CHECK ADD  CONSTRAINT [FK_DetalleValoracion_TipoValoracion] FOREIGN KEY([idTipoValoracion])
REFERENCES [dbo].[TipoValoracionDeportista] ([id])
GO
ALTER TABLE [dbo].[DetalleValoracionDeportista] CHECK CONSTRAINT [FK_DetalleValoracion_TipoValoracion]
GO
ALTER TABLE [dbo].[DetalleValoracionDeportista]  WITH CHECK ADD  CONSTRAINT [FK_DetalleValoracion_Valoracion] FOREIGN KEY([idValoracion])
REFERENCES [dbo].[ValoracionDeportista] ([id])
GO
ALTER TABLE [dbo].[DetalleValoracionDeportista] CHECK CONSTRAINT [FK_DetalleValoracion_Valoracion]
GO
ALTER TABLE [dbo].[EncuentroDeportivo]  WITH CHECK ADD  CONSTRAINT [FK_EncuentroDeportivo_ComplejoDeportivo] FOREIGN KEY([idComplejo])
REFERENCES [dbo].[ComplejoDeportivo] ([id])
GO
ALTER TABLE [dbo].[EncuentroDeportivo] CHECK CONSTRAINT [FK_EncuentroDeportivo_ComplejoDeportivo]
GO
ALTER TABLE [dbo].[EncuentroDeportivo]  WITH CHECK ADD  CONSTRAINT [FK_EncuentroDeportivo_Deporte] FOREIGN KEY([idDeporte])
REFERENCES [dbo].[Deporte] ([id])
GO
ALTER TABLE [dbo].[EncuentroDeportivo] CHECK CONSTRAINT [FK_EncuentroDeportivo_Deporte]
GO
ALTER TABLE [dbo].[EncuentroDeportivo]  WITH CHECK ADD  CONSTRAINT [FK_EncuentroDeportivo_Deportista] FOREIGN KEY([idAdmin])
REFERENCES [dbo].[Deportista] ([id])
GO
ALTER TABLE [dbo].[EncuentroDeportivo] CHECK CONSTRAINT [FK_EncuentroDeportivo_Deportista]
GO
ALTER TABLE [dbo].[EncuentroDeportivo]  WITH CHECK ADD  CONSTRAINT [FK_EncuentroDeportivo_Equipo] FOREIGN KEY([idEquipo])
REFERENCES [dbo].[Equipo] ([id])
GO
ALTER TABLE [dbo].[EncuentroDeportivo] CHECK CONSTRAINT [FK_EncuentroDeportivo_Equipo]
GO
ALTER TABLE [dbo].[EncuentroDeportivo]  WITH CHECK ADD  CONSTRAINT [FK_EncuentroDeportivo_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([id])
GO
ALTER TABLE [dbo].[EncuentroDeportivo] CHECK CONSTRAINT [FK_EncuentroDeportivo_Estado]
GO
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([id])
GO
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Estado]
GO
ALTER TABLE [dbo].[Horario]  WITH CHECK ADD  CONSTRAINT [FK_Horario_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([id])
GO
ALTER TABLE [dbo].[Horario] CHECK CONSTRAINT [FK_Horario_Estado]
GO
ALTER TABLE [dbo].[InvitacionEncuentro]  WITH CHECK ADD  CONSTRAINT [FK_InvitacionEncuentro_Deportista] FOREIGN KEY([idInvitado])
REFERENCES [dbo].[Deportista] ([id])
GO
ALTER TABLE [dbo].[InvitacionEncuentro] CHECK CONSTRAINT [FK_InvitacionEncuentro_Deportista]
GO
ALTER TABLE [dbo].[InvitacionEncuentro]  WITH CHECK ADD  CONSTRAINT [FK_InvitacionEncuentro_EncuentroDeportivo] FOREIGN KEY([idEncuentro])
REFERENCES [dbo].[EncuentroDeportivo] ([id])
GO
ALTER TABLE [dbo].[InvitacionEncuentro] CHECK CONSTRAINT [FK_InvitacionEncuentro_EncuentroDeportivo]
GO
ALTER TABLE [dbo].[Localidad]  WITH CHECK ADD  CONSTRAINT [FK_Localidad_Provincia] FOREIGN KEY([idProvincia])
REFERENCES [dbo].[Provincia] ([id])
GO
ALTER TABLE [dbo].[Localidad] CHECK CONSTRAINT [FK_Localidad_Provincia]
GO
ALTER TABLE [dbo].[Mensaje]  WITH CHECK ADD  CONSTRAINT [FK_Mensaje_EncuentroDeportivo] FOREIGN KEY([idEncuentro])
REFERENCES [dbo].[EncuentroDeportivo] ([id])
GO
ALTER TABLE [dbo].[Mensaje] CHECK CONSTRAINT [FK_Mensaje_EncuentroDeportivo]
GO
ALTER TABLE [dbo].[Mensaje]  WITH CHECK ADD  CONSTRAINT [FK_Mensaje_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Mensaje] CHECK CONSTRAINT [FK_Mensaje_Usuario]
GO
ALTER TABLE [dbo].[PermisosPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_PermisosPorRoles_Permiso] FOREIGN KEY([idPermiso])
REFERENCES [dbo].[Permiso] ([id])
GO
ALTER TABLE [dbo].[PermisosPorRoles] CHECK CONSTRAINT [FK_PermisosPorRoles_Permiso]
GO
ALTER TABLE [dbo].[PermisosPorRoles]  WITH CHECK ADD  CONSTRAINT [FK_PermisosPorRoles_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([id])
GO
ALTER TABLE [dbo].[PermisosPorRoles] CHECK CONSTRAINT [FK_PermisosPorRoles_Rol]
GO
ALTER TABLE [dbo].[Posicion]  WITH CHECK ADD  CONSTRAINT [FK_Posicion_Deporte] FOREIGN KEY([idDeporte])
REFERENCES [dbo].[Deporte] ([id])
GO
ALTER TABLE [dbo].[Posicion] CHECK CONSTRAINT [FK_Posicion_Deporte]
GO
ALTER TABLE [dbo].[PosicionesPorDeportistas]  WITH CHECK ADD  CONSTRAINT [FK_PosicionesPorDeportistas_Deportista] FOREIGN KEY([idDeportista])
REFERENCES [dbo].[Deportista] ([id])
GO
ALTER TABLE [dbo].[PosicionesPorDeportistas] CHECK CONSTRAINT [FK_PosicionesPorDeportistas_Deportista]
GO
ALTER TABLE [dbo].[PosicionesPorDeportistas]  WITH CHECK ADD  CONSTRAINT [FK_PosicionesPorDeportistas_Posicion] FOREIGN KEY([idPosicion])
REFERENCES [dbo].[Posicion] ([id])
GO
ALTER TABLE [dbo].[PosicionesPorDeportistas] CHECK CONSTRAINT [FK_PosicionesPorDeportistas_Posicion]
GO
ALTER TABLE [dbo].[Provincia]  WITH CHECK ADD  CONSTRAINT [FK_Provincia_Pais] FOREIGN KEY([idPais])
REFERENCES [dbo].[Pais] ([id])
GO
ALTER TABLE [dbo].[Provincia] CHECK CONSTRAINT [FK_Provincia_Pais]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([id])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Estado]
GO
ALTER TABLE [dbo].[Publicacion]  WITH CHECK ADD  CONSTRAINT [FK_Publicacion_Sponsor] FOREIGN KEY([idSponsor])
REFERENCES [dbo].[Sponsor] ([id])
GO
ALTER TABLE [dbo].[Publicacion] CHECK CONSTRAINT [FK_Publicacion_Sponsor]
GO
ALTER TABLE [dbo].[Responsable]  WITH CHECK ADD  CONSTRAINT [FK_Responsable_TipoDocumento] FOREIGN KEY([idTipoDoc])
REFERENCES [dbo].[TipoDocumento] ([id])
GO
ALTER TABLE [dbo].[Responsable] CHECK CONSTRAINT [FK_Responsable_TipoDocumento]
GO
ALTER TABLE [dbo].[RolesPorUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_RolesPorUsuarios_Rol] FOREIGN KEY([idRol])
REFERENCES [dbo].[Rol] ([id])
GO
ALTER TABLE [dbo].[RolesPorUsuarios] CHECK CONSTRAINT [FK_RolesPorUsuarios_Rol]
GO
ALTER TABLE [dbo].[RolesPorUsuarios]  WITH CHECK ADD  CONSTRAINT [FK_RolesPorUsuarios_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[RolesPorUsuarios] CHECK CONSTRAINT [FK_RolesPorUsuarios_Usuario]
GO
ALTER TABLE [dbo].[ServiciosPorComplejos]  WITH CHECK ADD  CONSTRAINT [FK_ServiciosPorComplejos_ComplejoDeportivo] FOREIGN KEY([idComplejo])
REFERENCES [dbo].[ComplejoDeportivo] ([id])
GO
ALTER TABLE [dbo].[ServiciosPorComplejos] CHECK CONSTRAINT [FK_ServiciosPorComplejos_ComplejoDeportivo]
GO
ALTER TABLE [dbo].[ServiciosPorComplejos]  WITH CHECK ADD  CONSTRAINT [FK_ServiciosPorComplejos_ServicioExtra] FOREIGN KEY([idServicio])
REFERENCES [dbo].[ServicioExtra] ([id])
GO
ALTER TABLE [dbo].[ServiciosPorComplejos] CHECK CONSTRAINT [FK_ServiciosPorComplejos_ServicioExtra]
GO
ALTER TABLE [dbo].[Sesion]  WITH CHECK ADD  CONSTRAINT [FK_Sesion_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([id])
GO
ALTER TABLE [dbo].[Sesion] CHECK CONSTRAINT [FK_Sesion_Estado]
GO
ALTER TABLE [dbo].[Sesion]  WITH CHECK ADD  CONSTRAINT [FK_Sesion_Usuario] FOREIGN KEY([idUsuario])
REFERENCES [dbo].[Usuario] ([id])
GO
ALTER TABLE [dbo].[Sesion] CHECK CONSTRAINT [FK_Sesion_Usuario]
GO
ALTER TABLE [dbo].[Sponsor]  WITH CHECK ADD  CONSTRAINT [FK_Sponsor_Estado] FOREIGN KEY([idEstado])
REFERENCES [dbo].[Estado] ([id])
GO
ALTER TABLE [dbo].[Sponsor] CHECK CONSTRAINT [FK_Sponsor_Estado]
GO
ALTER TABLE [dbo].[Sponsor]  WITH CHECK ADD  CONSTRAINT [FK_Sponsor_Responsable] FOREIGN KEY([idResponsable])
REFERENCES [dbo].[Responsable] ([id])
GO
ALTER TABLE [dbo].[Sponsor] CHECK CONSTRAINT [FK_Sponsor_Responsable]
GO
ALTER TABLE [dbo].[Sponsor]  WITH CHECK ADD  CONSTRAINT [FK_Sponsor_Rubro] FOREIGN KEY([idRubro])
REFERENCES [dbo].[Rubro] ([id])
GO
ALTER TABLE [dbo].[Sponsor] CHECK CONSTRAINT [FK_Sponsor_Rubro]
GO
ALTER TABLE [dbo].[TiposPorDeportes]  WITH CHECK ADD  CONSTRAINT [FK_TiposPorDeportes_Deporte] FOREIGN KEY([idDeporte])
REFERENCES [dbo].[Deporte] ([id])
GO
ALTER TABLE [dbo].[TiposPorDeportes] CHECK CONSTRAINT [FK_TiposPorDeportes_Deporte]
GO
ALTER TABLE [dbo].[TiposPorDeportes]  WITH CHECK ADD  CONSTRAINT [FK_TiposPorDeportes_TipoDeporte] FOREIGN KEY([idTipoDeporte])
REFERENCES [dbo].[TipoDeporte] ([id])
GO
ALTER TABLE [dbo].[TiposPorDeportes] CHECK CONSTRAINT [FK_TiposPorDeportes_TipoDeporte]
GO
ALTER TABLE [dbo].[ValoracionComplejo]  WITH CHECK ADD  CONSTRAINT [FK_ValoracionComplejo_ComplejoDeportivo] FOREIGN KEY([idComplejo])
REFERENCES [dbo].[ComplejoDeportivo] ([id])
GO
ALTER TABLE [dbo].[ValoracionComplejo] CHECK CONSTRAINT [FK_ValoracionComplejo_ComplejoDeportivo]
GO
ALTER TABLE [dbo].[ValoracionDeportista]  WITH CHECK ADD  CONSTRAINT [FK_ValoracionDeportista_Deportista] FOREIGN KEY([idDeportista])
REFERENCES [dbo].[Deportista] ([id])
GO
ALTER TABLE [dbo].[ValoracionDeportista] CHECK CONSTRAINT [FK_ValoracionDeportista_Deportista]
GO
ALTER TABLE [dbo].[Zona]  WITH CHECK ADD  CONSTRAINT [FK_Zona_Localidad] FOREIGN KEY([idLocalidad])
REFERENCES [dbo].[Localidad] ([id])
GO
ALTER TABLE [dbo].[Zona] CHECK CONSTRAINT [FK_Zona_Localidad]
GO
ALTER TABLE [dbo].[ZonasPorDeportistas]  WITH CHECK ADD  CONSTRAINT [FK_ZonasPorDeportistas_Deportista] FOREIGN KEY([idDeportista])
REFERENCES [dbo].[Deportista] ([id])
GO
ALTER TABLE [dbo].[ZonasPorDeportistas] CHECK CONSTRAINT [FK_ZonasPorDeportistas_Deportista]
GO
ALTER TABLE [dbo].[ZonasPorDeportistas]  WITH CHECK ADD  CONSTRAINT [FK_ZonasPorDeportistas_Zona] FOREIGN KEY([idZona])
REFERENCES [dbo].[Zona] ([id])
GO
ALTER TABLE [dbo].[ZonasPorDeportistas] CHECK CONSTRAINT [FK_ZonasPorDeportistas_Zona]
GO
USE [master]
GO
ALTER DATABASE [HayEquipo] SET  READ_WRITE 
GO
