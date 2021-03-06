USE [Che_Dev]
GO
/****** Object:  Schema [Kanban]    Script Date: 27/09/2019 10:43:42 ******/
CREATE SCHEMA [Kanban]
GO
/****** Object:  Table [Kanban].[Contenedores]    Script Date: 27/09/2019 10:43:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Kanban].[Contenedores](
	[IDContenedor] [char](4) NOT NULL,
	[ProvedorID] [int] NULL,
	[NombredeProvedor] [varchar](50) NULL,
	[Color] [nchar](10) NULL,
 CONSTRAINT [PK_Contenedores] PRIMARY KEY CLUSTERED 
(
	[IDContenedor] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [Kanban].[Tarjetas]    Script Date: 27/09/2019 10:43:42 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [Kanban].[Tarjetas](
	[IDTarjeta] [int] IDENTITY(1,1) NOT NULL,
	[Cantidad] [int] NULL,
	[FechadePedido] [date] NULL,
	[FechadeEntrega] [date] NULL,
	[IDContenedor] [char](4) NULL,
 CONSTRAINT [PK_Tarjetas] PRIMARY KEY CLUSTERED 
(
	[IDTarjeta] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [Kanban].[Tarjetas]  WITH CHECK ADD  CONSTRAINT [FK_Tarjetas_Contenedores] FOREIGN KEY([IDContenedor])
REFERENCES [Kanban].[Contenedores] ([IDContenedor])
GO
ALTER TABLE [Kanban].[Tarjetas] CHECK CONSTRAINT [FK_Tarjetas_Contenedores]
GO
