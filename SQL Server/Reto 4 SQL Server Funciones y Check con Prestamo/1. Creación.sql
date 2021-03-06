USE [INSERTAR_BasedeDatosXXXXXXX]
GO
/****** Object:  Table [bco].[Prestamos]    Script Date: 05/03/2019 10:37:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO

CREATE SCHEMA bco
GO

CREATE TABLE [bco].[Prestamos](
	[idPrestamo] [int] NOT NULL,
	[idTitular] [int] NOT NULL,
	[importe] [money] NOT NULL,
	[vencimiento] [date] NOT NULL,
 CONSTRAINT [PK_Prestamos] PRIMARY KEY CLUSTERED 
(
	[idPrestamo] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [bco].[titulares]    Script Date: 05/03/2019 10:37:28 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [bco].[titulares](
	[idTitular] [int] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[limiteRiesgo] [money] NOT NULL,
 CONSTRAINT [PK_titulares] PRIMARY KEY CLUSTERED 
(
	[idTitular] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [bco].[Prestamos] ([idPrestamo], [idTitular], [importe], [vencimiento]) VALUES (1, 2, 8000.0000, CAST(N'2020-03-31' AS Date))
INSERT [bco].[Prestamos] ([idPrestamo], [idTitular], [importe], [vencimiento]) VALUES (2, 1, 13000.0000, CAST(N'2019-04-30' AS Date))
INSERT [bco].[Prestamos] ([idPrestamo], [idTitular], [importe], [vencimiento]) VALUES (3, 3, 15000.0000, CAST(N'2019-12-31' AS Date))
INSERT [bco].[Prestamos] ([idPrestamo], [idTitular], [importe], [vencimiento]) VALUES (4, 3, 10000.0000, CAST(N'2021-02-28' AS Date))
INSERT [bco].[titulares] ([idTitular], [nombre], [limiteRiesgo]) VALUES (1, N'Julian', 10000.0000)
INSERT [bco].[titulares] ([idTitular], [nombre], [limiteRiesgo]) VALUES (2, N'Nekane', 20000.0000)
INSERT [bco].[titulares] ([idTitular], [nombre], [limiteRiesgo]) VALUES (3, N'Ostaiska', 30000.0000)
ALTER TABLE [bco].[Prestamos]  WITH CHECK ADD  CONSTRAINT [FK_Prestamos_titulares] FOREIGN KEY([idTitular])
REFERENCES [bco].[titulares] ([idTitular])
GO
ALTER TABLE [bco].[Prestamos] CHECK CONSTRAINT [FK_Prestamos_titulares]
GO
