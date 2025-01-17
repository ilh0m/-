USE [master]
GO
/****** Object:  Database [kkadri]    Script Date: 05.04.2023 16:15:30 ******/
CREATE DATABASE [kkadri]
 CONTAINMENT = NONE
 ON  PRIMARY 
( NAME = N'kkadri', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\kkadri.mdf' , SIZE = 8192KB , MAXSIZE = UNLIMITED, FILEGROWTH = 65536KB )
 LOG ON 
( NAME = N'kkadri_log', FILENAME = N'C:\Program Files\Microsoft SQL Server\MSSQL15.SQLEXPRESS\MSSQL\DATA\kkadri_log.ldf' , SIZE = 8192KB , MAXSIZE = 2048GB , FILEGROWTH = 65536KB )
 WITH CATALOG_COLLATION = DATABASE_DEFAULT
GO
ALTER DATABASE [kkadri] SET COMPATIBILITY_LEVEL = 150
GO
IF (1 = FULLTEXTSERVICEPROPERTY('IsFullTextInstalled'))
begin
EXEC [kkadri].[dbo].[sp_fulltext_database] @action = 'enable'
end
GO
ALTER DATABASE [kkadri] SET ANSI_NULL_DEFAULT OFF 
GO
ALTER DATABASE [kkadri] SET ANSI_NULLS OFF 
GO
ALTER DATABASE [kkadri] SET ANSI_PADDING OFF 
GO
ALTER DATABASE [kkadri] SET ANSI_WARNINGS OFF 
GO
ALTER DATABASE [kkadri] SET ARITHABORT OFF 
GO
ALTER DATABASE [kkadri] SET AUTO_CLOSE OFF 
GO
ALTER DATABASE [kkadri] SET AUTO_SHRINK OFF 
GO
ALTER DATABASE [kkadri] SET AUTO_UPDATE_STATISTICS ON 
GO
ALTER DATABASE [kkadri] SET CURSOR_CLOSE_ON_COMMIT OFF 
GO
ALTER DATABASE [kkadri] SET CURSOR_DEFAULT  GLOBAL 
GO
ALTER DATABASE [kkadri] SET CONCAT_NULL_YIELDS_NULL OFF 
GO
ALTER DATABASE [kkadri] SET NUMERIC_ROUNDABORT OFF 
GO
ALTER DATABASE [kkadri] SET QUOTED_IDENTIFIER OFF 
GO
ALTER DATABASE [kkadri] SET RECURSIVE_TRIGGERS OFF 
GO
ALTER DATABASE [kkadri] SET  DISABLE_BROKER 
GO
ALTER DATABASE [kkadri] SET AUTO_UPDATE_STATISTICS_ASYNC OFF 
GO
ALTER DATABASE [kkadri] SET DATE_CORRELATION_OPTIMIZATION OFF 
GO
ALTER DATABASE [kkadri] SET TRUSTWORTHY OFF 
GO
ALTER DATABASE [kkadri] SET ALLOW_SNAPSHOT_ISOLATION OFF 
GO
ALTER DATABASE [kkadri] SET PARAMETERIZATION SIMPLE 
GO
ALTER DATABASE [kkadri] SET READ_COMMITTED_SNAPSHOT OFF 
GO
ALTER DATABASE [kkadri] SET HONOR_BROKER_PRIORITY OFF 
GO
ALTER DATABASE [kkadri] SET RECOVERY SIMPLE 
GO
ALTER DATABASE [kkadri] SET  MULTI_USER 
GO
ALTER DATABASE [kkadri] SET PAGE_VERIFY CHECKSUM  
GO
ALTER DATABASE [kkadri] SET DB_CHAINING OFF 
GO
ALTER DATABASE [kkadri] SET FILESTREAM( NON_TRANSACTED_ACCESS = OFF ) 
GO
ALTER DATABASE [kkadri] SET TARGET_RECOVERY_TIME = 60 SECONDS 
GO
ALTER DATABASE [kkadri] SET DELAYED_DURABILITY = DISABLED 
GO
ALTER DATABASE [kkadri] SET ACCELERATED_DATABASE_RECOVERY = OFF  
GO
ALTER DATABASE [kkadri] SET QUERY_STORE = OFF
GO
USE [kkadri]
GO
/****** Object:  Table [dbo].[Education]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Education](
	[ID_education] [int] NOT NULL,
	[contents] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Education] PRIMARY KEY CLUSTERED 
(
	[ID_education] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Employee]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Employee](
	[ID_employee] [int] IDENTITY(1,1) NOT NULL,
	[TNumber] [int] NOT NULL,
	[id_post] [int] NOT NULL,
	[id_work_schedule] [int] NOT NULL,
	[date_of_employment] [date] NOT NULL,
	[date_of_dismissal] [date] NULL,
	[id_reason_for_dismissal] [int] NULL,
	[id_individual] [int] NOT NULL,
 CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED 
(
	[ID_employee] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Family_position]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Family_position](
	[ID_family_position] [int] NOT NULL,
	[contents] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Family_position] PRIMARY KEY CLUSTERED 
(
	[ID_family_position] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Individual]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Individual](
	[ID_individual] [int] IDENTITY(1,1) NOT NULL,
	[name] [nvarchar](50) NOT NULL,
	[surname] [nvarchar](50) NOT NULL,
	[patronymic] [nvarchar](50) NULL,
	[id_education] [int] NOT NULL,
	[id_family_position] [int] NOT NULL,
	[birthdate] [date] NOT NULL,
	[place_of_living] [nvarchar](100) NULL,
	[registration_address] [nvarchar](100) NOT NULL,
	[id_sex] [int] NOT NULL,
	[telephone] [nvarchar](11) NULL,
	[TIN] [nchar](12) NOT NULL,
	[INIPA] [nchar](11) NOT NULL,
	[id_passport] [int] NOT NULL,
 CONSTRAINT [PK_Individual] PRIMARY KEY CLUSTERED 
(
	[ID_individual] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Passport]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Passport](
	[ID_passport] [int] IDENTITY(1,1) NOT NULL,
	[number] [int] NOT NULL,
	[series] [int] NOT NULL,
	[issued_by_whom] [nvarchar](100) NOT NULL,
	[data_references] [date] NOT NULL,
 CONSTRAINT [PK_Passport] PRIMARY KEY CLUSTERED 
(
	[ID_passport] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Post]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Post](
	[ID_post] [int] NOT NULL,
	[contents] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Post] PRIMARY KEY CLUSTERED 
(
	[ID_post] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Reason_for_dismissal]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Reason_for_dismissal](
	[ID_reason_for_dismissal] [int] NOT NULL,
	[contens] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Reason_for_dismissal] PRIMARY KEY CLUSTERED 
(
	[ID_reason_for_dismissal] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Role]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Role](
	[ID_Role] [int] NOT NULL,
	[role_name] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK_Role] PRIMARY KEY CLUSTERED 
(
	[ID_Role] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sex]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sex](
	[ID_sex] [int] NOT NULL,
	[contents] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK_Sex] PRIMARY KEY CLUSTERED 
(
	[ID_sex] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Staffing_table]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Staffing_table](
	[ID_staffing_table] [int] NOT NULL,
	[id_post] [int] NOT NULL,
	[number_of_bids] [int] NOT NULL,
	[salary] [int] NOT NULL,
 CONSTRAINT [PK_Staffing_table] PRIMARY KEY CLUSTERED 
(
	[ID_staffing_table] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Users]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Users](
	[ID_user] [int] IDENTITY(1,1) NOT NULL,
	[login] [nvarchar](50) NOT NULL,
	[password] [nvarchar](50) NOT NULL,
	[id_role] [int] NOT NULL,
	[id_employee] [int] NULL,
 CONSTRAINT [PK_Users] PRIMARY KEY CLUSTERED 
(
	[ID_user] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Work_schedule]    Script Date: 05.04.2023 16:15:31 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Work_schedule](
	[ID_work_schedule] [int] NOT NULL,
	[contents] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_Work schedule] PRIMARY KEY CLUSTERED 
(
	[ID_work_schedule] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Education] ([ID_education], [contents]) VALUES (1, N'высшее')
INSERT [dbo].[Education] ([ID_education], [contents]) VALUES (2, N'среднее')
GO
SET IDENTITY_INSERT [dbo].[Employee] ON 

INSERT [dbo].[Employee] ([ID_employee], [TNumber], [id_post], [id_work_schedule], [date_of_employment], [date_of_dismissal], [id_reason_for_dismissal], [id_individual]) VALUES (1, 23432, 1, 1, CAST(N'2023-01-06' AS Date), CAST(N'2023-04-07' AS Date), 5, 9)
INSERT [dbo].[Employee] ([ID_employee], [TNumber], [id_post], [id_work_schedule], [date_of_employment], [date_of_dismissal], [id_reason_for_dismissal], [id_individual]) VALUES (4, 2344, 1, 1, CAST(N'2023-01-01' AS Date), NULL, 1, 8)
INSERT [dbo].[Employee] ([ID_employee], [TNumber], [id_post], [id_work_schedule], [date_of_employment], [date_of_dismissal], [id_reason_for_dismissal], [id_individual]) VALUES (9, 234234, 1, 1, CAST(N'0001-01-01' AS Date), CAST(N'2023-03-08' AS Date), 1, 7)
INSERT [dbo].[Employee] ([ID_employee], [TNumber], [id_post], [id_work_schedule], [date_of_employment], [date_of_dismissal], [id_reason_for_dismissal], [id_individual]) VALUES (10, 4422, 3, 2, CAST(N'0001-01-01' AS Date), CAST(N'2023-03-21' AS Date), 1, 2)
INSERT [dbo].[Employee] ([ID_employee], [TNumber], [id_post], [id_work_schedule], [date_of_employment], [date_of_dismissal], [id_reason_for_dismissal], [id_individual]) VALUES (11, 76856, 1, 1, CAST(N'0001-01-01' AS Date), NULL, NULL, 2)
INSERT [dbo].[Employee] ([ID_employee], [TNumber], [id_post], [id_work_schedule], [date_of_employment], [date_of_dismissal], [id_reason_for_dismissal], [id_individual]) VALUES (12, 1231233, 4, 1, CAST(N'0001-01-01' AS Date), NULL, NULL, 2)
SET IDENTITY_INSERT [dbo].[Employee] OFF
GO
INSERT [dbo].[Family_position] ([ID_family_position], [contents]) VALUES (1, N'в браке')
INSERT [dbo].[Family_position] ([ID_family_position], [contents]) VALUES (2, N'не в браке')
GO
SET IDENTITY_INSERT [dbo].[Individual] ON 

INSERT [dbo].[Individual] ([ID_individual], [name], [surname], [patronymic], [id_education], [id_family_position], [birthdate], [place_of_living], [registration_address], [id_sex], [telephone], [TIN], [INIPA], [id_passport]) VALUES (2, N'Иван', N'Иванов', N'Иванович', 1, 1, CAST(N'1999-01-01' AS Date), N'Чергонорск', N'a', 1, NULL, N'12112312    ', N'1231223    ', 1)
INSERT [dbo].[Individual] ([ID_individual], [name], [surname], [patronymic], [id_education], [id_family_position], [birthdate], [place_of_living], [registration_address], [id_sex], [telephone], [TIN], [INIPA], [id_passport]) VALUES (7, N'Светлана', N'Артюхова', N'Артемьевна', 1, 1, CAST(N'1999-01-11' AS Date), N'Чергонорск', N'Чергонорск', 2, NULL, N'123         ', N'123        ', 2)
INSERT [dbo].[Individual] ([ID_individual], [name], [surname], [patronymic], [id_education], [id_family_position], [birthdate], [place_of_living], [registration_address], [id_sex], [telephone], [TIN], [INIPA], [id_passport]) VALUES (8, N'Дмитрий', N'Иванов', N'Иванович', 1, 1, CAST(N'1999-01-01' AS Date), N'Чергонорск', N'b', 2, N'', N'22222       ', N'22222      ', 3)
INSERT [dbo].[Individual] ([ID_individual], [name], [surname], [patronymic], [id_education], [id_family_position], [birthdate], [place_of_living], [registration_address], [id_sex], [telephone], [TIN], [INIPA], [id_passport]) VALUES (9, N'1', N'2', N'1', 1, 1, CAST(N'0001-01-01' AS Date), N'1', N'1', 1, N'89628432005', N'123456789123', N'12345678912', 7)
SET IDENTITY_INSERT [dbo].[Individual] OFF
GO
SET IDENTITY_INSERT [dbo].[Passport] ON 

INSERT [dbo].[Passport] ([ID_passport], [number], [series], [issued_by_whom], [data_references]) VALUES (1, 1111, 1111, N'УФМС ', CAST(N'2023-01-01' AS Date))
INSERT [dbo].[Passport] ([ID_passport], [number], [series], [issued_by_whom], [data_references]) VALUES (2, 123, 123, N'УФМС', CAST(N'2023-03-10' AS Date))
INSERT [dbo].[Passport] ([ID_passport], [number], [series], [issued_by_whom], [data_references]) VALUES (3, 2222, 2222, N'УФМС', CAST(N'2023-02-28' AS Date))
INSERT [dbo].[Passport] ([ID_passport], [number], [series], [issued_by_whom], [data_references]) VALUES (4, 111111, 1111, N'ФМС', CAST(N'2021-08-12' AS Date))
INSERT [dbo].[Passport] ([ID_passport], [number], [series], [issued_by_whom], [data_references]) VALUES (5, 111111, 1111, N'ФМС', CAST(N'2023-03-17' AS Date))
INSERT [dbo].[Passport] ([ID_passport], [number], [series], [issued_by_whom], [data_references]) VALUES (6, 111, 111, N'1111', CAST(N'2023-03-10' AS Date))
INSERT [dbo].[Passport] ([ID_passport], [number], [series], [issued_by_whom], [data_references]) VALUES (7, 111111, 1111, N'1', CAST(N'2023-03-12' AS Date))
SET IDENTITY_INSERT [dbo].[Passport] OFF
GO
INSERT [dbo].[Post] ([ID_post], [contents]) VALUES (1, N'Повар')
INSERT [dbo].[Post] ([ID_post], [contents]) VALUES (2, N'Официант')
INSERT [dbo].[Post] ([ID_post], [contents]) VALUES (3, N'Уборщик')
INSERT [dbo].[Post] ([ID_post], [contents]) VALUES (4, N'Кассир')
GO
INSERT [dbo].[Reason_for_dismissal] ([ID_reason_for_dismissal], [contens]) VALUES (1, N'Статья 77 ТК РФ')
INSERT [dbo].[Reason_for_dismissal] ([ID_reason_for_dismissal], [contens]) VALUES (2, N'Статья 78 ТК РФ')
INSERT [dbo].[Reason_for_dismissal] ([ID_reason_for_dismissal], [contens]) VALUES (3, N'Статья 79 ТК РФ')
INSERT [dbo].[Reason_for_dismissal] ([ID_reason_for_dismissal], [contens]) VALUES (4, N'Статья 80 ТК РФ')
INSERT [dbo].[Reason_for_dismissal] ([ID_reason_for_dismissal], [contens]) VALUES (5, N'Статья 81 ТК РФ')
INSERT [dbo].[Reason_for_dismissal] ([ID_reason_for_dismissal], [contens]) VALUES (6, N'Статья 82 ТК РФ')
INSERT [dbo].[Reason_for_dismissal] ([ID_reason_for_dismissal], [contens]) VALUES (7, N'Статья 83 ТК РФ')
INSERT [dbo].[Reason_for_dismissal] ([ID_reason_for_dismissal], [contens]) VALUES (8, N'Статья 84 ТК РФ')
GO
INSERT [dbo].[Role] ([ID_Role], [role_name]) VALUES (1, N'Администратор')
INSERT [dbo].[Role] ([ID_Role], [role_name]) VALUES (2, N'Пользователь')
GO
INSERT [dbo].[Sex] ([ID_sex], [contents]) VALUES (1, N'мужской')
INSERT [dbo].[Sex] ([ID_sex], [contents]) VALUES (2, N'женский')
GO
INSERT [dbo].[Staffing_table] ([ID_staffing_table], [id_post], [number_of_bids], [salary]) VALUES (1, 1, 3, 100)
INSERT [dbo].[Staffing_table] ([ID_staffing_table], [id_post], [number_of_bids], [salary]) VALUES (2, 2, 4, 200)
GO
SET IDENTITY_INSERT [dbo].[Users] ON 

INSERT [dbo].[Users] ([ID_user], [login], [password], [id_role], [id_employee]) VALUES (1, N'1', N'1', 1, 1)
INSERT [dbo].[Users] ([ID_user], [login], [password], [id_role], [id_employee]) VALUES (2, N'2', N'2', 2, 1)
INSERT [dbo].[Users] ([ID_user], [login], [password], [id_role], [id_employee]) VALUES (5, N'admin', N'admin', 1, NULL)
SET IDENTITY_INSERT [dbo].[Users] OFF
GO
INSERT [dbo].[Work_schedule] ([ID_work_schedule], [contents]) VALUES (1, N'5/2')
INSERT [dbo].[Work_schedule] ([ID_work_schedule], [contents]) VALUES (2, N'2/2')
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Individual] FOREIGN KEY([id_individual])
REFERENCES [dbo].[Individual] ([ID_individual])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Individual]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Post] FOREIGN KEY([id_post])
REFERENCES [dbo].[Post] ([ID_post])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Post]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Reason_for_dismissal] FOREIGN KEY([id_reason_for_dismissal])
REFERENCES [dbo].[Reason_for_dismissal] ([ID_reason_for_dismissal])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Reason_for_dismissal]
GO
ALTER TABLE [dbo].[Employee]  WITH CHECK ADD  CONSTRAINT [FK_Employee_Work_schedule] FOREIGN KEY([id_work_schedule])
REFERENCES [dbo].[Work_schedule] ([ID_work_schedule])
GO
ALTER TABLE [dbo].[Employee] CHECK CONSTRAINT [FK_Employee_Work_schedule]
GO
ALTER TABLE [dbo].[Individual]  WITH CHECK ADD  CONSTRAINT [FK_Individual_Education] FOREIGN KEY([id_education])
REFERENCES [dbo].[Education] ([ID_education])
GO
ALTER TABLE [dbo].[Individual] CHECK CONSTRAINT [FK_Individual_Education]
GO
ALTER TABLE [dbo].[Individual]  WITH CHECK ADD  CONSTRAINT [FK_Individual_Family_position] FOREIGN KEY([id_family_position])
REFERENCES [dbo].[Family_position] ([ID_family_position])
GO
ALTER TABLE [dbo].[Individual] CHECK CONSTRAINT [FK_Individual_Family_position]
GO
ALTER TABLE [dbo].[Individual]  WITH CHECK ADD  CONSTRAINT [FK_Individual_Passport] FOREIGN KEY([id_passport])
REFERENCES [dbo].[Passport] ([ID_passport])
GO
ALTER TABLE [dbo].[Individual] CHECK CONSTRAINT [FK_Individual_Passport]
GO
ALTER TABLE [dbo].[Individual]  WITH CHECK ADD  CONSTRAINT [FK_Individual_Sex] FOREIGN KEY([id_sex])
REFERENCES [dbo].[Sex] ([ID_sex])
GO
ALTER TABLE [dbo].[Individual] CHECK CONSTRAINT [FK_Individual_Sex]
GO
ALTER TABLE [dbo].[Staffing_table]  WITH CHECK ADD  CONSTRAINT [FK_Staffing_table_Post] FOREIGN KEY([id_post])
REFERENCES [dbo].[Post] ([ID_post])
GO
ALTER TABLE [dbo].[Staffing_table] CHECK CONSTRAINT [FK_Staffing_table_Post]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Employee] FOREIGN KEY([id_employee])
REFERENCES [dbo].[Employee] ([ID_employee])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Employee]
GO
ALTER TABLE [dbo].[Users]  WITH CHECK ADD  CONSTRAINT [FK_Users_Role] FOREIGN KEY([id_role])
REFERENCES [dbo].[Role] ([ID_Role])
GO
ALTER TABLE [dbo].[Users] CHECK CONSTRAINT [FK_Users_Role]
GO
USE [master]
GO
ALTER DATABASE [kkadri] SET  READ_WRITE 
GO
