Create Database Demo

use Demo

Create Table Employee
(
Id int not null primary key,
[Name] varchar(50),
Email varchar(50),
Department varchar(50),
Designation varchar(50),
Country varchar(50)
)

select * from Employee

drop table Employee


GO

/****** Object:  Table [dbo].[Department]    Script Date: 18-11-2020 16:34:44 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [Department](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Department] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

select * from Department

insert into Department values(1,'Dot Net')
insert into Department values(2,'Java')
insert into Department values(3,'Hadoop')
insert into Department values(4,'Mainframe')
insert into Department values(5,'IOT')


USE [DotNetFSOnlineBatch_14-10-20]
GO

/****** Object:  Table [dbo].[Designation]    Script Date: 18-11-2020 16:35:01 ******/
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [Designation](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Designation] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

select * from Designation

insert into Designation values(1,'Sr. Programmer')
insert into Designation values(2,'Jr. Programmer')
insert into Designation values(3,'Team Lead')
insert into Designation values(4,'Project Lead')
insert into Designation values(5,'Project Manager')

----
SET ANSI_NULLS ON
GO

SET QUOTED_IDENTIFIER ON
GO

SET ANSI_PADDING ON
GO

CREATE TABLE [Country](
	[Id] [int] NOT NULL,
	[Name] [varchar](50) NOT NULL,
 CONSTRAINT [PK_Country] PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO

SET ANSI_PADDING OFF
GO

select * from Country

insert into Country values(1,'India')
insert into Country values(2,'UAE')
insert into Country values(3,'New Zealand')
insert into Country values(4,'England')
insert into Country values(5,'France')
