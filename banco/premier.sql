USE [master]
GO
/****** Object:  Database [PremierSilo2]    Script Date: 24/04/2018 23:19:37 ******/
CREATE DATABASE [PremierSilo2]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'PremierSilo2', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS14\MSSQL\DATA\PremierSilo2.mdf' , SIZE = 5120KB , MAXSIZE = UNLIMITED, FILEGROWTH = 1024KB )
 LOG ON 
( NAME = N'PremierSilo2_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL12.SQLEXPRESS14\MSSQL\DATA\PremierSilo2_log.ldf' , SIZE = 2048KB , MAXSIZE = 2048GB , FILEGROWTH = 10%)
GO
ALTER DATABASE [PremierSilo2] SET COMPATIBILITY_LEVEL = 120
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [PremierSilo2].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [PremierSilo2] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [PremierSilo2] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [PremierSilo2] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [PremierSilo2] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [PremierSilo2] SET ARITHABORT OFF 
GO
ALTER DATABASE [PremierSilo2] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [PremierSilo2] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [PremierSilo2] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [PremierSilo2] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [PremierSilo2] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [PremierSilo2] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [PremierSilo2] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [PremierSilo2] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [PremierSilo2] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [PremierSilo2] SET  DISABLE_BROKER 
GO
ALTER DATABASE [PremierSilo2] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [PremierSilo2] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [PremierSilo2] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [PremierSilo2] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [PremierSilo2] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [PremierSilo2] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [PremierSilo2] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [PremierSilo2] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [PremierSilo2] SET  MULTI_USER 
GO
ALTER DATABASE [PremierSilo2] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [PremierSilo2] SET DB_CHAINING OFF 
GO
ALTER DATABASE [PremierSilo2] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [PremierSilo2] SET TARGET_RECOVERY_TIME = 0 SECONDS 
GO
ALTER DATABASE [PremierSilo2] SET DELAYED_DURABILITY = DISABLED 
GO
USE [PremierSilo2]
GO
/****** Object:  Table [dbo].[tb_composto_history]    Script Date: 24/04/2018 23:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_composto_history](
	[IDProdutoComposto] [int] NOT NULL,
	[NomeProdutoComposto] [varchar](100) NOT NULL,
	[VendaComposto] [real] NOT NULL,
	[IDProditoSimples] [int] NOT NULL,
	[NomeProduto] [varchar](100) NOT NULL,
	[CustoProduto] [real] NOT NULL,
	[CustoTotalProduto] [real] NOT NULL,
	[VendaProduto] [real] NOT NULL,
	[VendaTotal] [real] NOT NULL,
 CONSTRAINT [PK_tb_composto_history] PRIMARY KEY CLUSTERED 
(
	[IDProdutoComposto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_composto_stage4]    Script Date: 24/04/2018 23:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_composto_stage4](
	[Cod] [int] NOT NULL,
	[Nome] [varchar](100) NOT NULL,
	[Und] [int] NOT NULL,
	[Custo] [real] NOT NULL,
	[Venda] [real] NOT NULL,
 CONSTRAINT [PK_tb_composto_stage4] PRIMARY KEY CLUSTERED 
(
	[Cod] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_produto]    Script Date: 24/04/2018 23:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_produto](
	[IDProduto] [int] IDENTITY(1,1) NOT NULL,
	[NomeProduto] [varchar](100) NOT NULL,
	[CustoProduto] [real] NOT NULL,
	[VendaProduto] [real] NOT NULL,
	[QuantidadeProduto] [int] NULL,
	[Tipo] [varchar](2) NOT NULL,
 CONSTRAINT [PK_tb_produto] PRIMARY KEY CLUSTERED 
(
	[IDProduto] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_saida_history3]    Script Date: 24/04/2018 23:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_saida_history3](
	[IDSaida] [int] IDENTITY(1,1) NOT NULL,
	[DataPedido] [date] NOT NULL,
	[Funcionario] [varchar](100) NOT NULL,
	[Cod] [int] NOT NULL,
	[Produto] [varchar](100) NOT NULL,
	[Quantidade] [int] NOT NULL,
	[Custo] [real] NOT NULL,
	[Venda] [real] NOT NULL,
 CONSTRAINT [PK_tb_saida_history3] PRIMARY KEY CLUSTERED 
(
	[IDSaida] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tb_saida_stage4]    Script Date: 24/04/2018 23:19:38 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tb_saida_stage4](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[IDProdutoS] [int] NOT NULL,
	[Produto] [varchar](100) NOT NULL,
	[Und] [int] NOT NULL,
	[Custo] [real] NOT NULL,
	[SubTotal] [real] NOT NULL,
	[Venda] [real] NOT NULL,
 CONSTRAINT [PK_tb_saida_stage4] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
USE [master]
GO
ALTER DATABASE [PremierSilo2] SET  READ_WRITE 
GO
