USE [DataFutsal]
GO
/****** Object:  ForeignKey [FK_Evento_Equipo]    Script Date: 07/30/2018 14:12:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Equipo]
GO
/****** Object:  ForeignKey [FK_Evento_Jugador]    Script Date: 07/30/2018 14:12:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Jugador]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Jugador]
GO
/****** Object:  ForeignKey [FK_Evento_Partido]    Script Date: 07/30/2018 14:12:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Partido]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Partido]
GO
/****** Object:  ForeignKey [FK_Evento_TipoEvento]    Script Date: 07/30/2018 14:12:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_TipoEvento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_TipoEvento]
GO
/****** Object:  ForeignKey [FK_Evento_Torneo]    Script Date: 07/30/2018 14:12:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Torneo]
GO
/****** Object:  ForeignKey [FK_JET_Equipo]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] DROP CONSTRAINT [FK_JET_Equipo]
GO
/****** Object:  ForeignKey [FK_JET_Estado]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] DROP CONSTRAINT [FK_JET_Estado]
GO
/****** Object:  ForeignKey [FK_JET_Jugador]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Jugador]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] DROP CONSTRAINT [FK_JET_Jugador]
GO
/****** Object:  ForeignKey [FK_JET_Torneo]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] DROP CONSTRAINT [FK_JET_Torneo]
GO
/****** Object:  ForeignKey [FK_Partido_Torneo]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partido_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partido]'))
ALTER TABLE [dbo].[Partido] DROP CONSTRAINT [FK_Partido_Torneo]
GO
/****** Object:  ForeignKey [FK_Torneo_PrimeraRonda]    Script Date: 07/30/2018 14:12:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_PrimeraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_PrimeraRonda]
GO
/****** Object:  ForeignKey [FK_Torneo_SegundaRonda]    Script Date: 07/30/2018 14:12:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_SegundaRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_SegundaRonda]
GO
/****** Object:  ForeignKey [FK_Torneo_TerceraRonda]    Script Date: 07/30/2018 14:12:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_TerceraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_TerceraRonda]
GO
/****** Object:  ForeignKey [FK_Usuario_RolUsuario]    Script Date: 07/30/2018 14:12:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_RolUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario]'))
ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT [FK_Usuario_RolUsuario]
GO
/****** Object:  UserDefinedFunction [dbo].[getGoleadores]    Script Date: 07/30/2018 14:12:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getGoleadores]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getGoleadores]
GO
/****** Object:  UserDefinedFunction [dbo].[getTablaPosiciones]    Script Date: 07/30/2018 14:12:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getTablaPosiciones]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getTablaPosiciones]
GO
/****** Object:  UserDefinedFunction [dbo].[getUltimosResultados]    Script Date: 07/30/2018 14:12:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getUltimosResultados]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getUltimosResultados]
GO
/****** Object:  UserDefinedFunction [dbo].[getVallaMenosVencida]    Script Date: 07/30/2018 14:12:21 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getVallaMenosVencida]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
DROP FUNCTION [dbo].[getVallaMenosVencida]
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 07/30/2018 14:12:16 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Equipo]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Jugador]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Jugador]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Partido]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Partido]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_TipoEvento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_TipoEvento]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] DROP CONSTRAINT [FK_Evento_Torneo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Evento]') AND type in (N'U'))
DROP TABLE [dbo].[Evento]
GO
/****** Object:  Table [dbo].[JET]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] DROP CONSTRAINT [FK_JET_Equipo]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] DROP CONSTRAINT [FK_JET_Estado]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Jugador]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] DROP CONSTRAINT [FK_JET_Jugador]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] DROP CONSTRAINT [FK_JET_Torneo]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_JET_Estado]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[JET] DROP CONSTRAINT [DF_JET_Estado]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JET]') AND type in (N'U'))
DROP TABLE [dbo].[JET]
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partido_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partido]'))
ALTER TABLE [dbo].[Partido] DROP CONSTRAINT [FK_Partido_Torneo]
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Partido]') AND type in (N'U'))
DROP TABLE [dbo].[Partido]
GO
/****** Object:  Table [dbo].[Torneo]    Script Date: 07/30/2018 14:12:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_PrimeraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_PrimeraRonda]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_SegundaRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_SegundaRonda]
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_TerceraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [FK_Torneo_TerceraRonda]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Torneo_Borrado]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Torneo] DROP CONSTRAINT [DF_Torneo_Borrado]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Torneo]') AND type in (N'U'))
DROP TABLE [dbo].[Torneo]
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 07/30/2018 14:12:18 ******/
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_RolUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario]'))
ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT [FK_Usuario_RolUsuario]
GO
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Usuario_Borrado]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Usuario] DROP CONSTRAINT [DF_Usuario_Borrado]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
DROP TABLE [dbo].[Usuario]
GO
/****** Object:  Table [dbo].[PrimeraRonda]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PrimeraRonda]') AND type in (N'U'))
DROP TABLE [dbo].[PrimeraRonda]
GO
/****** Object:  StoredProcedure [dbo].[realizarBackup]    Script Date: 07/30/2018 14:12:10 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[realizarBackup]') AND type in (N'P', N'PC'))
DROP PROCEDURE [dbo].[realizarBackup]
GO
/****** Object:  Table [dbo].[RolUsuario]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolUsuario]') AND type in (N'U'))
DROP TABLE [dbo].[RolUsuario]
GO
/****** Object:  Table [dbo].[SegundaRonda]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SegundaRonda]') AND type in (N'U'))
DROP TABLE [dbo].[SegundaRonda]
GO
/****** Object:  Table [dbo].[TerceraRonda]    Script Date: 07/30/2018 14:12:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TerceraRonda]') AND type in (N'U'))
DROP TABLE [dbo].[TerceraRonda]
GO
/****** Object:  Table [dbo].[TipoEvento]    Script Date: 07/30/2018 14:12:18 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoEvento]') AND type in (N'U'))
DROP TABLE [dbo].[TipoEvento]
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 07/30/2018 14:12:17 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Jugador_Borrado]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Jugador] DROP CONSTRAINT [DF_Jugador_Borrado]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Jugador]') AND type in (N'U'))
DROP TABLE [dbo].[Jugador]
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 07/30/2018 14:12:16 ******/
IF  EXISTS (SELECT * FROM dbo.sysobjects WHERE id = OBJECT_ID(N'[DF_Equipo_Borrado]') AND type = 'D')
BEGIN
ALTER TABLE [dbo].[Equipo] DROP CONSTRAINT [DF_Equipo_Borrado]
END
GO
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Equipo]') AND type in (N'U'))
DROP TABLE [dbo].[Equipo]
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 07/30/2018 14:12:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
DROP TABLE [dbo].[Estado]
GO
/****** Object:  Table [dbo].[EstadoJET]    Script Date: 07/30/2018 14:12:16 ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EstadoJET]') AND type in (N'U'))
DROP TABLE [dbo].[EstadoJET]
GO
/****** Object:  Table [dbo].[EstadoJET]    Script Date: 07/30/2018 14:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[EstadoJET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[EstadoJET](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Estado] [varchar](100) NOT NULL,
 CONSTRAINT [PK_EstadoJET] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Estado]    Script Date: 07/30/2018 14:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Estado]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Estado](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
 CONSTRAINT [PK_Estado] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Equipo]    Script Date: 07/30/2018 14:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Equipo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Equipo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[NombreLargo] [varchar](100) NOT NULL,
	[NombreCorto] [varchar](100) NOT NULL,
	[EscudoUrl] [varchar](100) NULL,
	[FechaAfiliacion] [varchar](100) NOT NULL,
	[Borrado] [bit] NOT NULL CONSTRAINT [DF_Equipo_Borrado]  DEFAULT ((0)),
 CONSTRAINT [PK_Equipo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Jugador]    Script Date: 07/30/2018 14:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Jugador]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Jugador](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [bigint] NOT NULL,
	[Nombres] [varchar](100) NOT NULL,
	[Apellidos] [varchar](100) NOT NULL,
	[FechaNacimiento] [varchar](100) NOT NULL,
	[Direccion] [varchar](200) NOT NULL,
	[Telefono] [varchar](100) NOT NULL,
	[TelefonoEmergencia] [varchar](100) NOT NULL,
	[FotoUrl] [varchar](500) NULL,
	[IdPieHabil] [int] NOT NULL,
	[FechaAfiliacion] [varchar](100) NOT NULL,
	[Borrado] [bit] NOT NULL CONSTRAINT [DF_Jugador_Borrado]  DEFAULT ((0)),
 CONSTRAINT [PK_Jugador] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Jugador__C03085751367E606] UNIQUE NONCLUSTERED 
(
	[Dni] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TipoEvento]    Script Date: 07/30/2018 14:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TipoEvento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TipoEvento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Evento] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TipoEvento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TerceraRonda]    Script Date: 07/30/2018 14:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TerceraRonda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TerceraRonda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_TerceraRonda] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[SegundaRonda]    Script Date: 07/30/2018 14:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[SegundaRonda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[SegundaRonda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_SegundaRonda] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[RolUsuario]    Script Date: 07/30/2018 14:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[RolUsuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[RolUsuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Rol] [varchar](100) NOT NULL,
 CONSTRAINT [PK_RolUsuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  StoredProcedure [dbo].[realizarBackup]    Script Date: 07/30/2018 14:12:10 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[realizarBackup]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'


CREATE PROCEDURE [dbo].[realizarBackup] (
	@ruta [varchar](500),
	@nombre [varchar](500)
)
AS
BEGIN
	BACKUP DATABASE FutSalLog  
	TO DISK = @ruta 
	   WITH FORMAT,  
		  MEDIANAME = ''Z_SQLServerBackups'',  
		  NAME = @nombre
END		



' 
END
GO
/****** Object:  Table [dbo].[PrimeraRonda]    Script Date: 07/30/2018 14:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[PrimeraRonda]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[PrimeraRonda](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Descripcion] [varchar](100) NOT NULL,
 CONSTRAINT [PK_PrimeraRonda] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Usuario]    Script Date: 07/30/2018 14:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Usuario]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Usuario](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Dni] [bigint] NOT NULL,
	[Nombres] [varchar](100) NOT NULL,
	[Apellidos] [varchar](100) NOT NULL,
	[FechaNacimiento] [varchar](100) NOT NULL,
	[Direccion] [varchar](200) NOT NULL,
	[Telefono] [varchar](100) NOT NULL,
	[FotoUrl] [varchar](500) NULL,
	[Email] [varchar](100) NOT NULL,
	[Usuario] [varchar](100) NOT NULL,
	[Contrasena] [varchar](100) NOT NULL,
	[Rol] [int] NOT NULL,
	[FechaCreacion] [varchar](100) NOT NULL,
	[Borrado] [bit] NOT NULL CONSTRAINT [DF_Usuario_Borrado]  DEFAULT ((0)),
 CONSTRAINT [PK_Usuario] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY],
 CONSTRAINT [UQ__Usuario__C0308575267ABA7A] UNIQUE NONCLUSTERED 
(
	[Dni] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Torneo]    Script Date: 07/30/2018 14:12:18 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Torneo]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Torneo](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[Nombre] [varchar](100) NOT NULL,
	[IdPrimeraRonda] [int] NOT NULL,
	[IdSegundaRonda] [int] NULL,
	[IdTerceraRonda] [int] NULL,
	[TiempoDeJuego] [int] NOT NULL,
	[FechaCreacion] [varchar](100) NOT NULL,
	[Borrado] [bit] NOT NULL CONSTRAINT [DF_Torneo_Borrado]  DEFAULT ((0)),
 CONSTRAINT [PK_Torneo] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Partido]    Script Date: 07/30/2018 14:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Partido]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Partido](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTorneo] [int] NOT NULL,
	[Ronda] [int] NOT NULL,
	[Fase] [int] NULL,
	[Llave] [int] NULL,
	[FechaNumero] [int] NOT NULL,
	[IdEquipoLocal] [int] NOT NULL,
	[IdEquipoVisitante] [int] NOT NULL,
	[Jugado] [bit] NOT NULL,
	[FechaJugado] [varchar](100) NULL,
	[GolesLocal] [int] NULL,
	[GolesVisitante] [int] NULL,
 CONSTRAINT [PK_Partido] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[JET]    Script Date: 07/30/2018 14:12:17 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[JET]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[JET](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdJugador] [int] NULL,
	[IdEquipo] [int] NULL,
	[IdTorneo] [int] NULL,
	[Goles] [int] NULL,
	[Faltas] [int] NULL,
	[AmarillasAcumuladas] [int] NULL,
	[AmarillasTotales] [int] NULL,
	[AzulesAcumuladas] [int] NULL,
	[AzulesTotales] [int] NULL,
	[Estado] [int] NOT NULL CONSTRAINT [DF_JET_Estado]  DEFAULT ((1)),
 CONSTRAINT [PK_JET] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
/****** Object:  Table [dbo].[Evento]    Script Date: 07/30/2018 14:12:16 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Evento]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[Evento](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[IdTorneo] [int] NOT NULL,
	[IdPartido] [int] NOT NULL,
	[IdEquipo] [int] NOT NULL,
	[IdJugador] [int] NOT NULL,
	[TipoEvento] [int] NOT NULL,
	[Tiempo] [int] NOT NULL,
	[Minuto] [varchar](200) NOT NULL,
 CONSTRAINT [PK_Evento] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_PADDING OFF
GO
/****** Object:  UserDefinedFunction [dbo].[getVallaMenosVencida]    Script Date: 07/30/2018 14:12:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getVallaMenosVencida]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[getVallaMenosVencida] (
	@idTorneo [int]
)
RETURNS TABLE
AS
RETURN SELECT TOP 4
			e.Id AS IdEquipo,
			e.NombreCorto AS Equipo,
			SUM(CASE
				WHEN e.Id = p.IdEquipoLocal THEN p.GolesVisitante 
				WHEN e.Id = p.IdEquipoVisitante THEN p.GolesLocal 
				ELSE 0
				END
			) AS golesEnContra
		FROM JET
		LEFT JOIN Partido p ON p.IdTorneo = JET.IdTorneo AND p.Jugado = 1
		INNER JOIN Equipo e ON JET.IdEquipo = e.Id
		WHERE JET.IdTorneo = @idTorneo AND JET.IdJugador IS NULL
		GROUP BY e.Id, e.NombreCorto
		ORDER BY golesEnContra ASC, Equipo ASC			

' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[getUltimosResultados]    Script Date: 07/30/2018 14:12:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getUltimosResultados]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'
CREATE FUNCTION [dbo].[getUltimosResultados] (
	@idTorneo [int]
)
RETURNS TABLE
AS
RETURN SELECT TOP 6 p.FechaJugado, el.NombreCorto AS EquipoLocal, p.GolesLocal, p.GolesVisitante, ev.NombreCorto AS EquipoVisitante FROM Partido p
	INNER JOIN Equipo el ON el.Id = p.IdEquipoLocal
	INNER JOIN Equipo ev ON ev.Id = p.IdEquipoVisitante
	WHERE IdTorneo = @idTorneo AND Jugado = 1
	ORDER BY p.FechaJugado DESC
			

' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[getTablaPosiciones]    Script Date: 07/30/2018 14:12:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getTablaPosiciones]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'CREATE FUNCTION [dbo].[getTablaPosiciones] (
	@idTorneo [int]
)
RETURNS TABLE
AS
RETURN SELECT Id, 
			Pos = ROW_NUMBER() OVER (ORDER BY PTS DESC, DG DESC, GF DESC, Equipo ASC),
			Equipo,
			PTS,
			PJ,
			PG,
			PE,
			PP,
			GF,
			GC,
			DG
			FROM(
			SELECT 
				Id,
				Pos = NULL, 
				Equipo, 
				PTS = ganados * 3 + empatados, 
				PJ = jugados,
				PG = ganados, 
				PE = empatados,
				PP = jugados - (ganados + empatados),  
				GF = golesAFavor, 
				GC = golesEnContra, 
				DG = golesAFavor - golesEnContra
			FROM 
			(
				SELECT 
					e.Id AS Id,
					e.NombreCorto AS Equipo,
					SUM(CASE
						WHEN e.Id = p.IdEquipoLocal THEN 1 
						WHEN e.Id = p.IdEquipoVisitante THEN 1
						ELSE 0
						END
					) AS jugados, 
					SUM(CASE
						WHEN e.Id = p.IdEquipoLocal AND p.GolesLocal > p.GolesVisitante THEN 1 
						WHEN e.Id = p.IdEquipoVisitante AND p.GolesVisitante > p.GolesLocal THEN 1
						ELSE 0
						END
					) AS ganados, 
					SUM(CASE
						WHEN p.GolesVisitante = p.GolesLocal THEN 1
						ELSE 0
						END
					) AS empatados,
					SUM(CASE
						WHEN e.Id = p.IdEquipoLocal THEN p.GolesLocal 
						WHEN e.Id = p.IdEquipoVisitante THEN p.GolesVisitante 
						ELSE 0
						END
					) AS golesAFavor,
					SUM(CASE
						WHEN e.Id = p.IdEquipoLocal THEN p.GolesVisitante 
						WHEN e.Id = p.IdEquipoVisitante THEN p.GolesLocal 
						ELSE 0
						END
					) AS golesEnContra
				FROM JET
				LEFT JOIN Partido p ON p.IdTorneo = JET.IdTorneo AND p.Jugado = 1
				INNER JOIN Equipo e ON JET.IdEquipo = e.Id
				WHERE JET.IdTorneo = @idTorneo AND JET.IdJugador IS NULL
				GROUP BY e.Id, e.NombreCorto
			) AS TablaIntermedia
		)AS TablaPosicion
			
' 
END
GO
/****** Object:  UserDefinedFunction [dbo].[getGoleadores]    Script Date: 07/30/2018 14:12:21 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[getGoleadores]') AND type in (N'FN', N'IF', N'TF', N'FS', N'FT'))
BEGIN
execute dbo.sp_executesql @statement = N'

CREATE FUNCTION [dbo].[getGoleadores] (
	@idTorneo [int]
)
RETURNS TABLE
AS
RETURN SELECT TOP 3 j.Id, Jugador = UPPER(j.Apellidos) + '', '' + j.Nombres, eq.NombreCorto AS Equipo, Cantidad = COUNT(*) FROM Evento e
		INNER JOIN Jugador j ON e.IdJugador = j.Id 
		INNER JOIN Equipo eq ON e.IdEquipo = eq.Id 
		WHERE IdTorneo = @idTorneo AND TipoEvento = 1
		GROUP BY j.Id, eq.NombreCorto, j.Apellidos,  j.Nombres
		ORDER BY Cantidad DESC, Jugador ASC
			


' 
END
GO
/****** Object:  ForeignKey [FK_Evento_Equipo]    Script Date: 07/30/2018 14:12:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Equipo] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Equipo] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Equipo]
GO
/****** Object:  ForeignKey [FK_Evento_Jugador]    Script Date: 07/30/2018 14:12:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Jugador]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Jugador] FOREIGN KEY([IdJugador])
REFERENCES [dbo].[Jugador] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Jugador]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Jugador]
GO
/****** Object:  ForeignKey [FK_Evento_Partido]    Script Date: 07/30/2018 14:12:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Partido]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Partido] FOREIGN KEY([IdPartido])
REFERENCES [dbo].[Partido] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Partido]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Partido]
GO
/****** Object:  ForeignKey [FK_Evento_TipoEvento]    Script Date: 07/30/2018 14:12:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_TipoEvento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_TipoEvento] FOREIGN KEY([TipoEvento])
REFERENCES [dbo].[TipoEvento] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_TipoEvento]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_TipoEvento]
GO
/****** Object:  ForeignKey [FK_Evento_Torneo]    Script Date: 07/30/2018 14:12:16 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento]  WITH CHECK ADD  CONSTRAINT [FK_Evento_Torneo] FOREIGN KEY([IdTorneo])
REFERENCES [dbo].[Torneo] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Evento_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Evento]'))
ALTER TABLE [dbo].[Evento] CHECK CONSTRAINT [FK_Evento_Torneo]
GO
/****** Object:  ForeignKey [FK_JET_Equipo]    Script Date: 07/30/2018 14:12:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET]  WITH CHECK ADD  CONSTRAINT [FK_JET_Equipo] FOREIGN KEY([IdEquipo])
REFERENCES [dbo].[Equipo] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Equipo]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] CHECK CONSTRAINT [FK_JET_Equipo]
GO
/****** Object:  ForeignKey [FK_JET_Estado]    Script Date: 07/30/2018 14:12:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET]  WITH CHECK ADD  CONSTRAINT [FK_JET_Estado] FOREIGN KEY([Estado])
REFERENCES [dbo].[Estado] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Estado]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] CHECK CONSTRAINT [FK_JET_Estado]
GO
/****** Object:  ForeignKey [FK_JET_Jugador]    Script Date: 07/30/2018 14:12:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Jugador]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET]  WITH CHECK ADD  CONSTRAINT [FK_JET_Jugador] FOREIGN KEY([IdJugador])
REFERENCES [dbo].[Jugador] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Jugador]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] CHECK CONSTRAINT [FK_JET_Jugador]
GO
/****** Object:  ForeignKey [FK_JET_Torneo]    Script Date: 07/30/2018 14:12:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET]  WITH CHECK ADD  CONSTRAINT [FK_JET_Torneo] FOREIGN KEY([IdTorneo])
REFERENCES [dbo].[Torneo] ([Id])
ON DELETE CASCADE
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_JET_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[JET]'))
ALTER TABLE [dbo].[JET] CHECK CONSTRAINT [FK_JET_Torneo]
GO
/****** Object:  ForeignKey [FK_Partido_Torneo]    Script Date: 07/30/2018 14:12:17 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partido_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partido]'))
ALTER TABLE [dbo].[Partido]  WITH CHECK ADD  CONSTRAINT [FK_Partido_Torneo] FOREIGN KEY([IdTorneo])
REFERENCES [dbo].[Torneo] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Partido_Torneo]') AND parent_object_id = OBJECT_ID(N'[dbo].[Partido]'))
ALTER TABLE [dbo].[Partido] CHECK CONSTRAINT [FK_Partido_Torneo]
GO
/****** Object:  ForeignKey [FK_Torneo_PrimeraRonda]    Script Date: 07/30/2018 14:12:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_PrimeraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo]  WITH CHECK ADD  CONSTRAINT [FK_Torneo_PrimeraRonda] FOREIGN KEY([IdPrimeraRonda])
REFERENCES [dbo].[PrimeraRonda] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_PrimeraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] CHECK CONSTRAINT [FK_Torneo_PrimeraRonda]
GO
/****** Object:  ForeignKey [FK_Torneo_SegundaRonda]    Script Date: 07/30/2018 14:12:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_SegundaRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo]  WITH CHECK ADD  CONSTRAINT [FK_Torneo_SegundaRonda] FOREIGN KEY([IdSegundaRonda])
REFERENCES [dbo].[SegundaRonda] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_SegundaRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] CHECK CONSTRAINT [FK_Torneo_SegundaRonda]
GO
/****** Object:  ForeignKey [FK_Torneo_TerceraRonda]    Script Date: 07/30/2018 14:12:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_TerceraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo]  WITH CHECK ADD  CONSTRAINT [FK_Torneo_TerceraRonda] FOREIGN KEY([IdTerceraRonda])
REFERENCES [dbo].[TerceraRonda] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Torneo_TerceraRonda]') AND parent_object_id = OBJECT_ID(N'[dbo].[Torneo]'))
ALTER TABLE [dbo].[Torneo] CHECK CONSTRAINT [FK_Torneo_TerceraRonda]
GO
/****** Object:  ForeignKey [FK_Usuario_RolUsuario]    Script Date: 07/30/2018 14:12:18 ******/
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_RolUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario]'))
ALTER TABLE [dbo].[Usuario]  WITH CHECK ADD  CONSTRAINT [FK_Usuario_RolUsuario] FOREIGN KEY([Rol])
REFERENCES [dbo].[RolUsuario] ([Id])
GO
IF  EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_Usuario_RolUsuario]') AND parent_object_id = OBJECT_ID(N'[dbo].[Usuario]'))
ALTER TABLE [dbo].[Usuario] CHECK CONSTRAINT [FK_Usuario_RolUsuario]
GO
