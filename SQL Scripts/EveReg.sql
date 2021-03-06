USE [EveRegSports]
GO
/****** Object:  ForeignKey [FK_Equipo_Torneo]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Equipo_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Equipo]'))
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [FK_Equipo_Torneo]
GO
/****** Object:  ForeignKey [FK_Jugador_Equipo]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador] DROP CONSTRAINT [FK_Jugador_Equipo]
GO
/****** Object:  ForeignKey [FK_Jugador_Estado]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador] DROP CONSTRAINT [FK_Jugador_Estado]
GO
/****** Object:  ForeignKey [FK_Jugador_PieHabil]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_PieHabil]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador] DROP CONSTRAINT [FK_Jugador_PieHabil]
GO
/****** Object:  ForeignKey [FK_Torneo_EstadoTorneo]    Script Date: 07/04/2018 17:50:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_EstadoTorneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_EstadoTorneo]
GO
/****** Object:  ForeignKey [FK_Torneo_PrimeraRonda]    Script Date: 07/04/2018 17:50:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_PrimeraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_PrimeraRonda]
GO
/****** Object:  ForeignKey [FK_Torneo_SegundaRonda]    Script Date: 07/04/2018 17:50:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_SegundaRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_SegundaRonda]
GO
/****** Object:  ForeignKey [FK_Torneo_TerceraRonda]    Script Date: 07/04/2018 17:50:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_TerceraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_TerceraRonda]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador] DROP CONSTRAINT [FK_Jugador_Equipo]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador] DROP CONSTRAINT [FK_Jugador_Estado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_PieHabil]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador] DROP CONSTRAINT [FK_Jugador_PieHabil]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Jugador]') AND type in (N'U'))
DROP TABLE [dbo].[Jugador]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Equipo_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Equipo]'))
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [FK_Equipo_Torneo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Equipo]') AND type in (N'U'))
DROP TABLE [dbo].[Equipo]
GO
/****** Object:  Table [dbo].[Torneo]    Script Date: 07/04/2018 17:50:13 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_EstadoTorneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_EstadoTorneo]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_PrimeraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_PrimeraRonda]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_SegundaRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_SegundaRonda]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_TerceraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_TerceraRonda]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Torneo]') AND type in (N'U'))
DROP TABLE [dbo].[Torneo]
GO
/****** Object:  Table [dbo].[Cuota]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cuota]') AND type in (N'U'))
DROP TABLE [dbo].[Cuota]
GO
/****** Object:  Table [dbo].[EstadoJugador]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EstadoJugador]') AND type in (N'U'))
DROP TABLE [dbo].[EstadoJugador]
GO
/****** Object:  Table [dbo].[EstadoTorneo]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EstadoTorneo]') AND type in (N'U'))
DROP TABLE [dbo].[EstadoTorneo]
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pago]') AND type in (N'U'))
DROP TABLE [dbo].[Pago]
GO
/****** Object:  Table [dbo].[PieHabil]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PieHabil]') AND type in (N'U'))
DROP TABLE [dbo].[PieHabil]
GO
/****** Object:  Table [dbo].[PrimeraRonda]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PrimeraRonda]') AND type in (N'U'))
DROP TABLE [dbo].[PrimeraRonda]
GO
/****** Object:  Table [dbo].[SegundaRonda]    Script Date: 07/04/2018 17:50:12 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SegundaRonda]') AND type in (N'U'))
DROP TABLE [dbo].[SegundaRonda]
GO
/****** Object:  Table [dbo].[Seguro]    Script Date: 07/04/2018 17:50:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seguro]') AND type in (N'U'))
DROP TABLE [dbo].[Seguro]
GO
/****** Object:  Table [dbo].[TerceraRonda]    Script Date: 07/04/2018 17:50:13 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TerceraRonda]') AND type in (N'U'))
DROP TABLE [dbo].[TerceraRonda]
GO
/****** Object:  User [scarlett\Lucho]    Script Date: 07/04/2018 17:50:13 ******/
IF  EXISTS (SELECT * FROM sys.database_principals WHERE name = N'scarlett\Lucho')
DROP USER [scarlett\Lucho]
GO
/****** Object:  User [scarlett\Lucho]    Script Date: 07/04/2018 17:50:13 ******/
IF NOT EXISTS (SELECT * FROM sys.database_principals WHERE name = N'scarlett\Lucho')
CREATE USER [scarlett\Lucho] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Table [dbo].[TerceraRonda]    Script Date: 07/04/2018 17:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TerceraRonda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TerceraRonda](
	[idTerceraRonda] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_TerceraRonda] PRIMARY KEY CLUSTERED 
(
	[idTerceraRonda] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Seguro]    Script Date: 07/04/2018 17:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Seguro]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Seguro](
	[idPago] [bigint] IDENTITY(1,1) NOT NULL,
	[idSeguro] [bigint] NOT NULL,
	[idJugador] [bigint] NOT NULL,
	[idPiehabil] [int] NOT NULL,
	[idMes] [int] NOT NULL,
	[cantidad] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Seguro] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[SegundaRonda]    Script Date: 07/04/2018 17:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SegundaRonda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SegundaRonda](
	[idSegundaRonda] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_SegundaRonda] PRIMARY KEY CLUSTERED 
(
	[idSegundaRonda] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PrimeraRonda]    Script Date: 07/04/2018 17:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PrimeraRonda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PrimeraRonda](
	[idPrimeraRonda] [int] NOT NULL,
	[descripcion] [varchar](50) NULL,
 CONSTRAINT [PK_PrimeraRonda] PRIMARY KEY CLUSTERED 
(
	[idPrimeraRonda] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[PieHabil]    Script Date: 07/04/2018 17:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PieHabil]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PieHabil](
	[idPieHabil] [int] NOT NULL,
	[descripcion] [varchar](50) NOT NULL,
 CONSTRAINT [PK_PieHabil] PRIMARY KEY CLUSTERED 
(
	[idPieHabil] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Pago]    Script Date: 07/04/2018 17:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Pago]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Pago](
	[idPago] [bigint] NOT NULL,
	[idEquipo] [bigint] NOT NULL,
	[idMes] [int] NOT NULL,
	[cantidad] [decimal](18, 0) NOT NULL,
	[fecha] [date] NOT NULL,
 CONSTRAINT [PK_Pago] PRIMARY KEY CLUSTERED 
(
	[idPago] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[EstadoTorneo]    Script Date: 07/04/2018 17:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EstadoTorneo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EstadoTorneo](
	[idEstadoTorneo] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_EstadoTorneo] PRIMARY KEY CLUSTERED 
(
	[idEstadoTorneo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[EstadoJugador]    Script Date: 07/04/2018 17:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EstadoJugador]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EstadoJugador](
	[idEstadoJugador] [int] NOT NULL,
	[nombre] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[idEstadoJugador] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Cuota]    Script Date: 07/04/2018 17:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Cuota]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Cuota](
	[idPago] [bigint] IDENTITY(1,1) NOT NULL,
	[idCuota] [bigint] NOT NULL,
	[idEquipo] [bigint] NOT NULL,
	[idMes] [int] NOT NULL,
	[cantidad] [decimal](18, 0) NOT NULL,
 CONSTRAINT [PK_Cuota] PRIMARY KEY CLUSTERED 
(
	[idCuota] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Torneo]    Script Date: 07/04/2018 17:50:13 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Torneo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Torneo](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[nombre] [varchar](50) NOT NULL,
	[idPrimeraRonda] [int] NOT NULL,
	[idSegundaRonda] [int] NULL,
	[idTerceraRonda] [int] NULL,
	[idEstadoTorneo] [int] NULL,
 CONSTRAINT [PK_Torneo] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 07/04/2018 17:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Equipo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Equipo](
	[idEquipo] [bigint] IDENTITY(1,1) NOT NULL,
	[nombreLargo] [varchar](50) NOT NULL,
	[nombreCorto] [varchar](15) NOT NULL,
	[idDelegado] [bigint] NOT NULL,
	[idDt] [bigint] NOT NULL,
	[idTorneo] [bigint] NULL,
	[foto] [varchar](max) NOT NULL,
	[fechaAfiliacion] [date] NOT NULL,
 CONSTRAINT [PK_Equipo] PRIMARY KEY CLUSTERED 
(
	[idEquipo] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 07/04/2018 17:50:12 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Jugador]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Jugador](
	[id] [bigint] IDENTITY(1,1) NOT NULL,
	[dni] [bigint] NOT NULL,
	[nombres] [varchar](50) NOT NULL,
	[apellidos] [varchar](50) NOT NULL,
	[direccion] [varchar](max) NOT NULL,
	[telefono] [bigint] NOT NULL,
	[telefonoEmergencia] [bigint] NOT NULL,
	[foto] [varchar](max) NOT NULL,
	[idPieHabil] [int] NOT NULL,
	[idEquipo] [bigint] NULL,
	[fechaAfiliacion] [date] NOT NULL,
	[amarillasAcumuladas] [int] NOT NULL,
	[amarillasTotales] [int] NOT NULL,
	[azulesAcumuladas] [int] NOT NULL,
	[azulesTotales] [int] NOT NULL,
	[idEstadoJugador] [int] NOT NULL,
 CONSTRAINT [PK_Jugador] PRIMARY KEY CLUSTERED 
(
	[id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  ForeignKey [FK_Equipo_Torneo]    Script Date: 07/04/2018 17:50:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Equipo_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Equipo]'))
ALTER TABLE [dbo].[Equipo]  WITH CHECK ADD  CONSTRAINT [FK_Equipo_Torneo] FOREIGN KEY([idTorneo])
REFERENCES [dbo].[Torneo] ([id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Equipo_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Equipo]'))
ALTER TABLE [dbo].[Equipo] CHECK CONSTRAINT [FK_Equipo_Torneo]
GO
/****** Object:  ForeignKey [FK_Jugador_Equipo]    Script Date: 07/04/2018 17:50:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_Equipo] FOREIGN KEY([idEquipo])
REFERENCES [dbo].[Equipo] ([idEquipo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_Equipo]
GO
/****** Object:  ForeignKey [FK_Jugador_Estado]    Script Date: 07/04/2018 17:50:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_Estado] FOREIGN KEY([idEstadoJugador])
REFERENCES [dbo].[EstadoJugador] ([idEstadoJugador])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_Estado]
GO
/****** Object:  ForeignKey [FK_Jugador_PieHabil]    Script Date: 07/04/2018 17:50:12 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_PieHabil]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador]  WITH CHECK ADD  CONSTRAINT [FK_Jugador_PieHabil] FOREIGN KEY([idPieHabil])
REFERENCES [dbo].[PieHabil] ([idPieHabil])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Jugador_PieHabil]') AND parent_object_id = OBJECT_ID(N'[dbo].[Jugador]'))
ALTER TABLE [dbo].[Jugador] CHECK CONSTRAINT [FK_Jugador_PieHabil]
GO
/****** Object:  ForeignKey [FK_Torneo_EstadoTorneo]    Script Date: 07/04/2018 17:50:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_EstadoTorneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo]  WITH CHECK ADD  CONSTRAINT [FK_Torneo_EstadoTorneo] FOREIGN KEY([idEstadoTorneo])
REFERENCES [dbo].[EstadoTorneo] ([idEstadoTorneo])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_EstadoTorneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] CHECK CONSTRAINT [FK_Torneo_EstadoTorneo]
GO
/****** Object:  ForeignKey [FK_Torneo_PrimeraRonda]    Script Date: 07/04/2018 17:50:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_PrimeraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo]  WITH CHECK ADD  CONSTRAINT [FK_Torneo_PrimeraRonda] FOREIGN KEY([idPrimeraRonda])
REFERENCES [dbo].[PrimeraRonda] ([idPrimeraRonda])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_PrimeraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] CHECK CONSTRAINT [FK_Torneo_PrimeraRonda]
GO
/****** Object:  ForeignKey [FK_Torneo_SegundaRonda]    Script Date: 07/04/2018 17:50:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_SegundaRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo]  WITH CHECK ADD  CONSTRAINT [FK_Torneo_SegundaRonda] FOREIGN KEY([idSegundaRonda])
REFERENCES [dbo].[SegundaRonda] ([idSegundaRonda])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_SegundaRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] CHECK CONSTRAINT [FK_Torneo_SegundaRonda]
GO
/****** Object:  ForeignKey [FK_Torneo_TerceraRonda]    Script Date: 07/04/2018 17:50:13 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_TerceraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo]  WITH CHECK ADD  CONSTRAINT [FK_Torneo_TerceraRonda] FOREIGN KEY([idTerceraRonda])
REFERENCES [dbo].[TerceraRonda] ([idTerceraRonda])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_TerceraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] CHECK CONSTRAINT [FK_Torneo_TerceraRonda]
GO
