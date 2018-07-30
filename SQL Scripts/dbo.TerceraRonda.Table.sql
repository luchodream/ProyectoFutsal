USE [FutSalLog]
GO

CREATE TABLE [dbo].[TerceraRonda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL
) ON [PRIMARY]
GO

SET NOCOUNT ON

INSERT INTO PrimeraRonda (Descripcion) VALUES('Playoffs de los 4 primeros')
INSERT INTO PrimeraRonda (Descripcion) VALUES('Playoffs de los 8 primeros')

SET NOCOUNT OFF

GO