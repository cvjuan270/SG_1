USE [SG_1]
GO
ALTER TABLE [dbo].[Medicina] DROP CONSTRAINT [FK_Medicina_Atenciones]
GO
/****** Object:  Table [dbo].[Medicina]    Script Date: 11/03/2021 10:20:39 ******/
DROP TABLE [dbo].[Medicina]
GO
/****** Object:  Table [dbo].[Interconsulta]    Script Date: 11/03/2021 10:20:39 ******/
DROP TABLE [dbo].[Interconsulta]
GO
/****** Object:  Table [dbo].[Auditoria]    Script Date: 11/03/2021 10:20:39 ******/
DROP TABLE [dbo].[Auditoria]
GO
/****** Object:  Table [dbo].[Atenciones]    Script Date: 11/03/2021 10:20:39 ******/
DROP TABLE [dbo].[Atenciones]
GO
/****** Object:  Table [dbo].[Admision]    Script Date: 11/03/2021 10:20:39 ******/
DROP TABLE [dbo].[Admision]
GO

CREATE TABLE [dbo].[Medicos]
(	[id] [int]  identity(1,1),
	[Medico] [varchar](250) primary key 

)

/****** Object:  Table [dbo].[Atenciones]    Script Date: 11/03/2021 10:20:39 ******/
CREATE TABLE [dbo].[Atenciones](
	[Id] [int] IDENTITY(1,1) primary key NOT NULL,
	[Local0] [varchar](20) NULL,
	[TipExa] [varchar](20) NULL,
	[FecAte] [date] NULL,
	[NomApe] [varchar](100) NULL,
	[DocIde] [varchar](20) NULL,
	[Empres] [varchar](100) NULL,
	[SubCon] [varchar](100) NULL,
	[Proyec] [varchar](100) NULL,
	[Perfil] [varchar](100) NULL,
	[Area] [varchar](100) NULL,
	[PueTra] [varchar](100) NULL,
	[PeReAd] [varchar](50) NULL,
	[Hora] [time](7) NULL,
	[Medico] [varchar](250) unique foreign key references Medicos(Medico)
)
/****** Object:  Table [dbo].[Admision]    Script Date: 11/03/2021 10:20:39 ******/

CREATE TABLE [dbo].[Admision](
	[Id] [int] IDENTITY(1,1) primary key  NOT NULL,
	[AtenId] [int] unique foreign key references [dbo].[Atenciones](Id),
	[HorIng] [time](7) NULL,
	[HorSal] [time](7) NULL,
	[Usuari] [varchar](10) NOT NULL,
	[Pendie] [varchar](200) NULL,
	[UserName] [varchar](100) null
) 
GO

/****** Object:  Table [dbo].[Auditoria]    Script Date: 11/03/2021 10:20:39 ******/

CREATE TABLE [dbo].[Auditoria](
	[Id] [int] IDENTITY(1,1) primary key NOT NULL,
	[AtenId] [int] unique foreign key references [dbo].[Atenciones](Id),
	[ExaCom] [bit] NOT NULL,
	[ExaCom1] [varchar](20) NULL,
	[DatInc] [bit] NOT NULL,
	[DatInc1] [varchar](20) NULL,
	[AptErr] [bit] NOT NULL,
	[AptErr1] [varchar](20) NULL,
	[FaFiMe] [bit] NOT NULL,
	[FaFiMe1] [varchar](20) NULL,
	[FaFiPa] [bit] NOT NULL,
	[FaFiPa1] [varchar](20) NULL,
	[Restri] [bit] NOT NULL,
	[Restri1] [varchar](20) NULL,
	[Contro] [bit] NOT NULL,
	[Contro1] [varchar](20) NULL,
	[Diagno] [bit] NOT NULL,
	[Diagno1] [varchar](20) NULL,
	[ErrLle] [bit] NOT NULL,
	[ErrLle1] [varchar](20) NULL,
	[ObNoRe] [varchar](100) NULL,
	[EmSnOb] [bit] NOT NULL,
	[EmSnOb1] [varchar](20) NULL,
	[HorAud] [time](7) NULL,
	[FecAud] [date] NULL,
	[Alerta] [int] NULL,
	[UserName] [varchar](100) null
) 
GO
/****** Object:  Table [dbo].[Interconsulta]    Script Date: 11/03/2021 10:20:39 ******/

CREATE TABLE [dbo].[Interconsulta](
	[Id] [int] IDENTITY(1,1) primary key NOT NULL,
	[AtenId] [int] foreign key references Atenciones(Id),
	[NumLine] [int] NULL,
	[IntCon] [varchar](50) NULL,
	[FecEnv] [date] NULL,
	[PeEnCo] [varchar](50) NULL,
	[EnHoIn] [bit] not NULL,
	[FeCoPa] [date] NULL,
	[PeCoPa] [varchar](50) NULL,
	[FeLeObs] [date] NULL,
	[UserName] [varchar](100) null
) 
GO
/****** Object:  Table [dbo].[Medicina]    Script Date: 11/03/2021 10:20:39 ******/

CREATE TABLE [dbo].[Medicina](
	[Id] [int] identity(1,1) primary key NOT NULL,
	[AtenId] int unique foreign key references Atenciones(Id),
	[HorIng] [time](7) NULL,
	[HorSal] [time](7) NULL,
	[Medico] [varchar](50) NULL,
	[Aptitu] [varchar](50) NULL,
	[FecApt] [date] NULL,
	[FecEnv] [date] NULL,
	[Coment] [varchar](100) NULL,
	[Observ] [varchar](100) NULL,
	[Alerta] [int] NULL,
	[UserName] [varchar](100) null
)

