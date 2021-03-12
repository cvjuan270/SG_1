USE [SG_1]
GO


DROP TABLE [dbo].[Admision];
DROP TABLE Medicina
DROP TABLE Auditoria
DROP TABLE Interconsulta
DROP TABLE Atenciones

CREATE TABLE [dbo].[Admision] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [AtenId]   INT           NULL,
    [HorIng]   TIME (7)      NULL,
    [HorSal]   TIME (7)      NULL,
    [Usuari]   VARCHAR (10)  NOT NULL,
    [Pendie]   VARCHAR (200) NULL,
    [UserName] VARCHAR (100) NULL
);


CREATE TABLE [dbo].[Auditoria] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [AtenId]   INT           NULL,
    [ExaCom]   BIT           NOT NULL,
    [ExaCom1]  VARCHAR (20)  NULL,
    [DatInc]   BIT           NOT NULL,
    [DatInc1]  VARCHAR (20)  NULL,
    [AptErr]   BIT           NOT NULL,
    [AptErr1]  VARCHAR (20)  NULL,
    [FaFiMe]   BIT           NOT NULL,
    [FaFiMe1]  VARCHAR (20)  NULL,
    [FaFiPa]   BIT           NOT NULL,
    [FaFiPa1]  VARCHAR (20)  NULL,
    [Restri]   BIT           NOT NULL,
    [Restri1]  VARCHAR (20)  NULL,
    [Contro]   BIT           NOT NULL,
    [Contro1]  VARCHAR (20)  NULL,
    [Diagno]   BIT           NOT NULL,
    [Diagno1]  VARCHAR (20)  NULL,
    [ErrLle]   BIT           NOT NULL,
    [ErrLle1]  VARCHAR (20)  NULL,
    [ObNoRe]   VARCHAR (100) NULL,
    [EmSnOb]   BIT           NOT NULL,
    [EmSnOb1]  VARCHAR (20)  NULL,
    [HorAud]   TIME (7)      NULL,
    [FecAud]   DATE          NULL,
    [Alerta]   INT           NULL,
    [UserName] VARCHAR (100) NULL
);


CREATE TABLE [dbo].[Interconsulta] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [AtenId]   INT           NULL,
    [NumLine]  INT           NULL,
    [IntCon]   VARCHAR (50)  NULL,
    [FecEnv]   DATE          NULL,
    [PeEnCo]   VARCHAR (50)  NULL,
    [EnHoIn]   BIT           NOT NULL,
    [FeCoPa]   DATE          NULL,
    [PeCoPa]   VARCHAR (50)  NULL,
    [FeLeObs]  DATE          NULL,
    [UserName] VARCHAR (100) NULL
);


CREATE TABLE [dbo].[Medicina] (
    [Id]       INT           IDENTITY (1, 1) NOT NULL,
    [AtenId]   INT           NULL,
    [HorIng]   TIME (7)      NULL,
    [HorSal]   TIME (7)      NULL,
    [Medico]   VARCHAR (50)  NULL,
    [Aptitu]   VARCHAR (50)  NULL,
    [FecApt]   DATE          NULL,
    [FecEnv]   DATE          NULL,
    [Coment]   VARCHAR (100) NULL,
    [Observ]   VARCHAR (100) NULL,
    [Alerta]   INT           NULL,
    [UserName] VARCHAR (100) NULL
);



CREATE TABLE [dbo].[Atenciones] (
    [Id]     INT           IDENTITY (1, 1) NOT NULL,
    [Local0] VARCHAR (20)  NULL,
    [TipExa] VARCHAR (20)  NULL,
    [FecAte] DATE          NULL,
    [NomApe] VARCHAR (100) NULL,
    [DocIde] VARCHAR (20)  NULL,
    [Empres] VARCHAR (100) NULL,
    [SubCon] VARCHAR (100) NULL,
    [Proyec] VARCHAR (100) NULL,
    [Perfil] VARCHAR (100) NULL,
    [Area]   VARCHAR (100) NULL,
    [PueTra] VARCHAR (100) NULL,
    [PeReAd] VARCHAR (50)  NULL,
    [Hora]   TIME (7)      NULL,
    [Medico] VARCHAR (250) NULL
);


