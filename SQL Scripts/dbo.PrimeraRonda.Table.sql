USE [FutSalLog]
GO

CREATE TABLE [dbo].[PrimeraRonda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL
) ON [PRIMARY]
GO

SET NOCOUNT ON

INSERT INTO PrimeraRonda (Descripcion) VALUES('Todos contra Todos')

SET NOCOUNT OFF

GO