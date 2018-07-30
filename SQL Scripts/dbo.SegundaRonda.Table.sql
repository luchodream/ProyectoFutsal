USE [FutSalLog]
GO

CREATE TABLE [dbo].[SegundaRonda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL
) ON [PRIMARY]
GO

SET NOCOUNT ON

INSERT INTO PrimeraRonda (Descripcion) VALUES('Todos contra Todos')
INSERT INTO PrimeraRonda (Descripcion) VALUES('Pares e Impares')
INSERT INTO PrimeraRonda (Descripcion) VALUES('Mitad y Mitad')

SET NOCOUNT OFF

GO