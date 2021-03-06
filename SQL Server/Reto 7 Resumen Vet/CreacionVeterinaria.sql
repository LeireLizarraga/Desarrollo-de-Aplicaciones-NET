USE XXXXXXXXXXXXXX
GO
/****** Object:  Schema [VET]    Script Date: 25/04/2018 14:59:46 ******/
CREATE SCHEMA [VET]
GO
/****** Object:  Table [VET].[animales]    Script Date: 25/04/2018 14:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VET].[animales](
	[codigoDueno] [smallint] NOT NULL,
	[CodigoAnimal] [tinyint] NOT NULL,
	[nombreAnimal] [varchar](25) NOT NULL,
	[raza] [tinyint] NULL,
	[fechaAlta] [date] NULL,
	[sexo] [char](1) NOT NULL,
	[fechaNacimiento] [smallint] NULL,
	[fechaFallecimiento] [date] NULL,
	[ultimaRevision] [date] NULL,
	[proximaRevision] [date] NULL,
 CONSTRAINT [PK_animales_1] PRIMARY KEY CLUSTERED 
(
	[codigoDueno] ASC,
	[CodigoAnimal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VET].[clientes]    Script Date: 25/04/2018 14:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VET].[clientes](
	[codDueno] [smallint] NOT NULL,
	[nombre] [varchar](20) NOT NULL,
	[apellido1] [varchar](25) NOT NULL,
	[apellido2] [varchar](25) NULL,
	[telefono] [char](9) NULL,
	[direccion] [varchar](60) NULL,
	[email] [varchar](60) NULL,
	[fechaNacimiento] [date] NULL,
	[fechaAlta] [date] NULL,
	[sexo] [char](1) NOT NULL,
	[estadoCivil] [char](1) NULL,
 CONSTRAINT [PK_clientes_1] PRIMARY KEY CLUSTERED 
(
	[codDueno] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VET].[razas]    Script Date: 25/04/2018 14:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VET].[razas](
	[codigoRaza] [tinyint] NOT NULL,
	[nombre] [varchar](50) NULL,
	[caracteristicas] [varchar](500) NULL,
 CONSTRAINT [PK_razas] PRIMARY KEY CLUSTERED 
(
	[codigoRaza] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [VET].[revisiones]    Script Date: 25/04/2018 14:59:46 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [VET].[revisiones](
	[numRevision] [int] IDENTITY(1,1) NOT NULL,
	[codDueno] [smallint] NOT NULL,
	[codAnimal] [tinyint] NOT NULL,
	[fechaRevision] [date] NOT NULL,
	[datosRevision] [varchar](4000) NOT NULL,
	[precioRevision] [smallmoney] NULL,
 CONSTRAINT [PK_revisiones] PRIMARY KEY CLUSTERED 
(
	[numRevision] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [VET].[animales] ([codigoDueno], [CodigoAnimal], [nombreAnimal], [raza], [fechaAlta], [sexo], [fechaNacimiento], [fechaFallecimiento], [ultimaRevision], [proximaRevision]) VALUES (1, 1, N'Kika', 6, CAST(N'2016-05-14' AS Date), N'H', 2014, NULL, CAST(N'2017-12-27' AS Date), CAST(N'2018-06-27' AS Date))
INSERT [VET].[animales] ([codigoDueno], [CodigoAnimal], [nombreAnimal], [raza], [fechaAlta], [sexo], [fechaNacimiento], [fechaFallecimiento], [ultimaRevision], [proximaRevision]) VALUES (1, 2, N'Pumba', 7, CAST(N'2017-06-27' AS Date), N'M', 2017, NULL, CAST(N'2018-01-14' AS Date), CAST(N'2018-07-14' AS Date))
INSERT [VET].[animales] ([codigoDueno], [CodigoAnimal], [nombreAnimal], [raza], [fechaAlta], [sexo], [fechaNacimiento], [fechaFallecimiento], [ultimaRevision], [proximaRevision]) VALUES (3, 1, N'Fanta', 1, CAST(N'2017-05-01' AS Date), N'M', 2017, NULL, CAST(N'2018-01-11' AS Date), CAST(N'2018-07-11' AS Date))
INSERT [VET].[animales] ([codigoDueno], [CodigoAnimal], [nombreAnimal], [raza], [fechaAlta], [sexo], [fechaNacimiento], [fechaFallecimiento], [ultimaRevision], [proximaRevision]) VALUES (4, 1, N'Lassie', 5, CAST(N'2012-02-03' AS Date), N'H', 2011, NULL, CAST(N'2017-09-13' AS Date), CAST(N'2018-03-14' AS Date))
INSERT [VET].[animales] ([codigoDueno], [CodigoAnimal], [nombreAnimal], [raza], [fechaAlta], [sexo], [fechaNacimiento], [fechaFallecimiento], [ultimaRevision], [proximaRevision]) VALUES (7, 1, N'Korrikalari', 15, CAST(N'2017-12-11' AS Date), N'M', 2017, NULL, CAST(N'2018-03-16' AS Date), CAST(N'2018-10-20' AS Date))
INSERT [VET].[animales] ([codigoDueno], [CodigoAnimal], [nombreAnimal], [raza], [fechaAlta], [sexo], [fechaNacimiento], [fechaFallecimiento], [ultimaRevision], [proximaRevision]) VALUES (7, 2, N'Susi', 10, CAST(N'2018-03-07' AS Date), N'H', 2018, NULL, CAST(N'2018-03-07' AS Date), CAST(N'2018-09-28' AS Date))
INSERT [VET].[animales] ([codigoDueno], [CodigoAnimal], [nombreAnimal], [raza], [fechaAlta], [sexo], [fechaNacimiento], [fechaFallecimiento], [ultimaRevision], [proximaRevision]) VALUES (11, 1, N'Ramsés', 8, CAST(N'2015-05-23' AS Date), N'M', 2011, CAST(N'2017-01-01' AS Date), NULL, NULL)
INSERT [VET].[animales] ([codigoDueno], [CodigoAnimal], [nombreAnimal], [raza], [fechaAlta], [sexo], [fechaNacimiento], [fechaFallecimiento], [ultimaRevision], [proximaRevision]) VALUES (12, 1, N'Harry', 1, CAST(N'2012-07-18' AS Date), N'M', 2010, CAST(N'2016-01-17' AS Date), NULL, NULL)
INSERT [VET].[animales] ([codigoDueno], [CodigoAnimal], [nombreAnimal], [raza], [fechaAlta], [sexo], [fechaNacimiento], [fechaFallecimiento], [ultimaRevision], [proximaRevision]) VALUES (15, 1, N'Mauri', 2, CAST(N'2018-01-02' AS Date), N'M', 2018, NULL, CAST(N'2018-01-02' AS Date), CAST(N'2018-09-01' AS Date))
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (1, N'Calixta', N'Garcedo', N'García', N'111111111', N'D1', N'calixta57@gmail.com', CAST(N'1957-04-14' AS Date), CAST(N'2012-02-29' AS Date), N'H', N'S')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (2, N'Venancio', N'Maneiro', N'Fornás', N'222222222', N'D2', N'venancio@gmail.com', CAST(N'1978-12-12' AS Date), CAST(N'2016-01-15' AS Date), N'V', N'C')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (3, N'Remigio', N'Aramburu', N'Etxeandía', N'333333333', N'D3', N'remi.gio@hotmail.es', CAST(N'1981-07-09' AS Date), CAST(N'2017-05-01' AS Date), N'V', N'V')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (4, N'Sigfrido', N'Eceiza', N'Gonzalez', N'444444444', N'D4', N'ecegon@gmail.com', CAST(N'1943-11-17' AS Date), CAST(N'2012-02-03' AS Date), N'V', N'C')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (5, N'Sonsoles', N'Soledad', N'Somera', N'555555555', N'D5', N'rameso@hotmail.es', CAST(N'1973-10-09' AS Date), CAST(N'2014-01-17' AS Date), N'H', N'C')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (6, N'Richard', N'Almansa', N'Etxeberria', N'666666666', N'D6', N'samanla@gmail.com', CAST(N'1989-07-18' AS Date), CAST(N'2012-02-08' AS Date), N'V', N'S')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (7, N'Eleonor', N'Rico', N'Buen', N'777777777', N'D7', N'ronoel@hotmail.com', CAST(N'1986-11-11' AS Date), CAST(N'2017-12-11' AS Date), N'H', N'D')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (8, N'Emilio', N'Sánchez', N'Almandoz', N'888888888', N'D8', N'emilio@eman.com', CAST(N'1976-08-04' AS Date), CAST(N'2011-06-12' AS Date), N'V', N'C')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (9, N'Sara', N'Momo', N'Grande', N'999999999', N'D9', N'sara1987@hotmail.com', CAST(N'1987-04-22' AS Date), CAST(N'2016-11-27' AS Date), N'H', N'S')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (10, N'Porfidio', N'Amor', N'Casto', N'101010101', N'D10', N'porficasto@gmail.com', CAST(N'1943-06-29' AS Date), CAST(N'2015-08-17' AS Date), N'V', N'V')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (11, N'Cesárea', N'Fuertes', N'Martinez', N'110101011', N'D11', N'cesarfuer@hotmail.es', CAST(N'1949-03-17' AS Date), CAST(N'2015-05-23' AS Date), N'H', N'V')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (12, N'Celedonio', N'Calzacorta', N'Cebollada', N'120101011', N'D12', N'calzones@hotmail.es', CAST(N'1962-03-31' AS Date), CAST(N'2012-07-18' AS Date), N'V', N'S')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (13, N'Ciriaco', N'Enamorado', N'De la Bella', N'130101013', N'D13', N'bellacir@hotmail.es', CAST(N'1962-04-30' AS Date), CAST(N'2014-02-26' AS Date), N'V', N'C')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (14, N'Eustasia', N'Zatarain', N'Zuzuarregi', N'140101014', N'D14', N'eustazu@gmail.com', CAST(N'1965-04-11' AS Date), CAST(N'2013-10-13' AS Date), N'H', N'D')
INSERT [VET].[clientes] ([codDueno], [nombre], [apellido1], [apellido2], [telefono], [direccion], [email], [fechaNacimiento], [fechaAlta], [sexo], [estadoCivil]) VALUES (15, N'Bartolomé', N'Virumbrales', N'Vivaracho', N'150101015', N'D15', N'bartolofeliz@hotmail.es', CAST(N'1945-12-25' AS Date), CAST(N'2014-08-12' AS Date), N'H', N'V')
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (1, N'Mastín', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (2, N'schnauzer gigante', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (3, N'schnauzer mediano', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (4, N'schnauzer pequeño', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (5, N'pastor vasco', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (6, N'fosterrier', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (7, N'labrador', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (8, N'pastor alemán', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (9, N'gran danés', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (10, N'bulldog', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (11, N'caniche', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (12, N'doberman', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (13, N'Chihuahua', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (14, N'Yorkshire terrier', NULL)
INSERT [VET].[razas] ([codigoRaza], [nombre], [caracteristicas]) VALUES (15, N'galgo', NULL)
SET IDENTITY_INSERT [VET].[revisiones] ON 

INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (1, 4, 1, CAST(N'2012-02-03' AS Date), N'Ejemplar raza pastor vasco con 1 año de edad. Se le aplica vacunación anti ...', 80.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (2, 12, 1, CAST(N'2012-07-18' AS Date), N'mastín de 2 años (primera visita). Se le detecta síntomas de parásitos ...', 80.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (3, 12, 1, CAST(N'2013-01-14' AS Date), N'Pata lastimada por clavo ...', 100.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (4, 4, 1, CAST(N'2014-05-20' AS Date), N'Detección de mucosa en el estómago con apliación de tratamiento ...', 100.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (5, 11, 1, CAST(N'2015-05-23' AS Date), N'Primera visita de pastor alemán de aproximadamente 4 años. Se le ...', 80.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (6, 12, 1, CAST(N'2016-03-31' AS Date), N'Tiene problemas en el ojo izquierdo. Le aplicamos ...', 150.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (7, 1, 1, CAST(N'2016-05-14' AS Date), N'Hembra de fosterrier en primera visita. Se le realizaun chequeo ...', 80.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (8, 11, 1, CAST(N'2016-09-14' AS Date), N'Revisión rutinaria ...', 70.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (9, 4, 1, CAST(N'2016-11-19' AS Date), N'Infección en las vías ...', 150.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (10, 12, 1, CAST(N'2016-12-28' AS Date), N'Tiene problemas cardiovasculares graves ...', 300.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (11, 11, 1, CAST(N'2017-01-01' AS Date), N'Fallece como consecuencia ...', 120.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (12, 12, 1, CAST(N'2017-01-27' AS Date), N'Fallece por atropello ...', NULL)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (13, 3, 1, CAST(N'2017-05-01' AS Date), N'Nacimiento de mastín ...', 100.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (14, 1, 2, CAST(N'2017-06-27' AS Date), N'Cachorro de labrador para realizarle pruebas ...', 200.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (15, 4, 1, CAST(N'2017-09-13' AS Date), N'Revisión realizada con scaner ...', 400.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (16, 7, 1, CAST(N'2017-12-11' AS Date), N'Cachorro apenas unos días. Se le lleva a cabo exploración ...', 80.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (17, 1, 1, CAST(N'2017-12-27' AS Date), N'Tratamiento de inflamación ojo izquierdo motivado por ...', 120.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (18, 15, 1, CAST(N'2018-01-02' AS Date), N'Cachorro schnauzer gigante. Exploración inicial ...', 80.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (19, 3, 1, CAST(N'2018-01-11' AS Date), N'Revisión planificada de ...', 80.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (20, 1, 2, CAST(N'2018-01-14' AS Date), N'Revisión del aparato motor ...', 120.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (21, 7, 2, CAST(N'2018-03-07' AS Date), N'Cachorro Buldog. Bien formado. Vacunación de ...', 100.0000)
INSERT [VET].[revisiones] ([numRevision], [codDueno], [codAnimal], [fechaRevision], [datosRevision], [precioRevision]) VALUES (22, 7, 1, CAST(N'2018-03-16' AS Date), N'Revisión planificada. No se ha detectado ningún síntoma de ...', 70.0000)
SET IDENTITY_INSERT [VET].[revisiones] OFF
ALTER TABLE [VET].[animales]  WITH CHECK ADD  CONSTRAINT [FK_animales_clientes] FOREIGN KEY([codigoDueno])
REFERENCES [VET].[clientes] ([codDueno])
GO
ALTER TABLE [VET].[animales] CHECK CONSTRAINT [FK_animales_clientes]
GO
ALTER TABLE [VET].[animales]  WITH CHECK ADD  CONSTRAINT [FK_animales_razas] FOREIGN KEY([raza])
REFERENCES [VET].[razas] ([codigoRaza])
GO
ALTER TABLE [VET].[animales] CHECK CONSTRAINT [FK_animales_razas]
GO
ALTER TABLE [VET].[revisiones]  WITH CHECK ADD  CONSTRAINT [FK_revisiones_animales] FOREIGN KEY([codDueno], [codAnimal])
REFERENCES [VET].[animales] ([codigoDueno], [CodigoAnimal])
GO
ALTER TABLE [VET].[revisiones] CHECK CONSTRAINT [FK_revisiones_animales]
GO
ALTER TABLE [VET].[animales]  WITH CHECK ADD  CONSTRAINT [CK_SexoAnimal] CHECK  (([sexo]='H' OR [sexo]='M'))
GO
ALTER TABLE [VET].[animales] CHECK CONSTRAINT [CK_SexoAnimal]
GO
ALTER TABLE [VET].[clientes]  WITH CHECK ADD  CONSTRAINT [CK_Civil] CHECK  (([estadocivil]='D' OR [estadocivil]='S' OR [estadocivil]='C' OR [estadocivil]='V'))
GO
ALTER TABLE [VET].[clientes] CHECK CONSTRAINT [CK_Civil]
GO
ALTER TABLE [VET].[clientes]  WITH CHECK ADD  CONSTRAINT [CK_Sexo] CHECK  (([sexo]='H' OR [sexo]='V'))
GO
ALTER TABLE [VET].[clientes] CHECK CONSTRAINT [CK_Sexo]
GO
