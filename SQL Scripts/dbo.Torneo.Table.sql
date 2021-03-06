USE [FutSalLog]
GO

CREATE TABLE [dbo].[Torneo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[IdPrimeraRonda] [int] NOT NULL,
	[IdSegundaRonda] [int] NULL,
	[IdTerceraRonda] [int] NULL,
	[FechaCreacion] [varchar](100) NOT NULL,
	[Borrado] [bit] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Default [DF_Torneo_Borrado]    Script Date: 10/19/2016 12:16:08 ******/
ALTER TABLE [dbo].[Torneo] ADD  CONSTRAINT [DF_Torneo_Borrado]  DEFAULT ((0)) FOR [Borrado]
GO

SET NOCOUNT ON

INSERT INTO Torneo (Nombre, IdPrimeraRonda, IdSegundaRonda, IdTerceraRonda, FechaCreacion, Borrado) VALUES('Premier League', 1, 1, NULL, '18/10/2016', 0)
INSERT INTO Torneo (Nombre, IdPrimeraRonda, IdSegundaRonda, IdTerceraRonda, FechaCreacion, Borrado) VALUES('Liga BBVA', 1, 1, NULL, '18/10/2016', 0)

SET NOCOUNT OFF

GO