USE [DataFutsal]
GO

CREATE TABLE [dbo].[Equipo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreLargo] [varchar](100) NOT NULL,
	[NombreCorto] [varchar](100) NOT NULL,
	[EscudoUrl] [varchar](100) NOT NULL,
	[FechaAfiliacion] [varchar](100) NOT NULL,
	[Borrado] [bit] NOT NULL
) ON [PRIMARY]
GO

/****** Object:  Default [DF_Equipo_Borrado]    Script Date: 10/19/2016 12:16:08 ******/
ALTER TABLE [dbo].[Equipo] ADD  CONSTRAINT [DF_Equipo_Borrado]  DEFAULT ((0)) FOR [Borrado]
GO

SET NOCOUNT ON

INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Arsenal Football Club', 'Arsenal', '/Escudo Equipos/Arsenal Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Everton Football Club', 'Everton', '/Escudo Equipos/Everton Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Manchester City Football Club', 'Manchester City', '/Escudo Equipos/Manchester City Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Tottenham Hotspur Football Club', 'Tottenham', '/Escudo Equipos/Tottenham Hotspur Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Sunderland Association Football Club', 'Sunderland', '/Escudo Equipos/Sunderland Association Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('West Ham United FC', 'West Ham', '/Escudo Equipos/West Ham United FC.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Middlesbrough Football Club', 'Middlesbrough', '/Escudo Equipos/Middlesbrough Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Southampton Football Club', 'Southampton', '/Escudo Equipos/Southampton Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Crystal Palace Football Club', 'Crystal Palace', '/Escudo Equipos/Crystal Palace Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Chelsea Football Club', 'Chelsea', '/Escudo Equipos/Chelsea Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Liverpool Futbol Club', 'Liverpool', '/Escudo Equipos/Liverpool Futbol Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Manchester United Football Club', 'Manchester United', '/Escudo Equipos/Manchester United Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('West Bromwich Albion Football Club', 'West Bromwich Albion', '/Escudo Equipos/West Bromwich Albion Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Leicester City Football Club', 'Leicester', '/Escudo Equipos/Leicester City Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Stoke City Football Club', 'Stoke City', '/Escudo Equipos/Stoke City Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Burnley Football Club', 'Burnley', '/Escudo Equipos/Burnley Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Hull City Association Football Club', 'Hull City', '/Escudo Equipos/Hull City Association Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Swansea City AFC', 'Swansea City', '/Escudo Equipos/Swansea City AFC.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Athletic Football Club Bournemouth', 'AFC Bournemouth', '/Escudo Equipos/Athletic Football Club Bournemouth.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Watford Football Club', 'Watford', '/Escudo Equipos/Watford Football Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Fútbol Club Barcelona', 'Barcelona', '/Escudo Equipos/Fútbol Club Barcelona.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Club Atlético de Madrid', 'Atlético', '/Escudo Equipos/Club Atlético de Madrid.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Athletic Club', 'Athletic', '/Escudo Equipos/Athletic Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Real Club Deportivo de La Coruña SAD', 'Deportivo', '/Escudo Equipos/Real Club Deportivo de La Coruña SAD.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Real Sociedad de Fútbol SAD', 'Real Sociedad', '/Escudo Equipos/Real Sociedad de Fútbol SAD.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Real Sporting de Gijón SAD', 'Sporting', '/Escudo Equipos/Real Sporting de Gijón SAD.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Club Atlético Osasuna', 'Osasuna', '/Escudo Equipos/Club Atlético Osasuna.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Granada Club de Fútbol SAD', 'Granada', '/Escudo Equipos/Granada Club de Fútbol SAD.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Villarreal Club de Fútbol', 'Villareal', '/Escudo Equipos/Villarreal Club de Fútbol.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Club Deportivo Leganés SAD', 'Leganés', '/Escudo Equipos/Club Deportivo Leganés SAD.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Real Madrid Club de Fútbol', 'Real Madrid', '/Escudo Equipos/Real Madrid Club de Fútbol.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Valencia Club de Fútbol', 'Valencia', '/Escudo Equipos/Valencia Club de Fútbol.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Sevilla Fútbol Club', 'Sevilla', '/Escudo Equipos/Sevilla Fútbol Club.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Real Club Deportivo Espanyol', 'Espanyol', '/Escudo Equipos/Real Club Deportivo Espanyol.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Real Club Celta de Vigo SAD', 'Celta', '/Escudo Equipos/Real Club Celta de Vigo SAD.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Real Betis Balompié', 'Real Betis', '/Escudo Equipos/Real Betis Balompié.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Deportivo Alavés S.A.D.', 'Alavés', '/Escudo Equipos/Deportivo Alavés S.A.D..png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Unión Deportiva Las Palmas SAD', 'Las Palmas', '/Escudo Equipos/Unión Deportiva Las Palmas SAD.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Sociedad Deportiva Eibar', 'Eibar', '/Escudo Equipos/Sociedad Deportiva Eibar.png', '18/10/2016', 0)
INSERT INTO Equipo (NombreLargo, NombreCorto, EscudoUrl, FechaAfiliacion, Borrado) VALUES('Málaga Club de Fútbol, S. A. D.', 'Málaga', '/Escudo Equipos/Málaga Club de Fútbol, S. A. D..png', '18/10/2016', 0)

SET NOCOUNT OFF

GO