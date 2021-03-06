USE [master]
GO
/****** Object:  Database [AvancaCoPruebaFredyMartinez]    Script Date: 8/05/2018 4:18:17 p.m. ******/
CREATE DATABASE [AvancaCoPruebaFredyMartinez]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'AvancaCoPruebaFredyMartinez', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AvancaCoPruebaFredyMartinez.mdf' , SIZE = 4288KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'AvancaCoPruebaFredyMartinez_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS\MSSQL\DATA\AvancaCoPruebaFredyMartinez_log.ldf' , SIZE = 1072KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [AvancaCoPruebaFredyMartinez].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET ARITHABORT OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET AUTO_CLOSE ON 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET  ENABLE_BROKER 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET  MULTI_USER 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET DB_CHAINING OFF 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET DELAYED_DURABILITY = DISABLED 
GO
USE [AvancaCoPruebaFredyMartinez]
GO
/****** Object:  Table [dbo].[PruCentroCosto]    Script Date: 8/05/2018 4:18:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PruCentroCosto](
	[IdCentroCosto] [int] IDENTITY(1,1) NOT NULL,
	[NombreCentroCosto] [varchar](20) NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdCentroCosto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PruEmpleado]    Script Date: 8/05/2018 4:18:18 p.m. ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[PruEmpleado](
	[IdEmpleado] [int] IDENTITY(1,1) NOT NULL,
	[NombreEmpleado] [varchar](50) NULL,
	[ApellidoEmpleado] [varchar](50) NULL,
	[Documento] [varchar](15) NULL,
	[IdCentroCosto] [int] NULL,
	[Estado] [bit] NULL,
PRIMARY KEY CLUSTERED 
(
	[IdEmpleado] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
ALTER TABLE [dbo].[PruEmpleado]  WITH CHECK ADD FOREIGN KEY([IdCentroCosto])
REFERENCES [dbo].[PruCentroCosto] ([IdCentroCosto])
GO
USE [master]
GO
ALTER DATABASE [AvancaCoPruebaFredyMartinez] SET  READ_WRITE 
GO
