USE [EmployeeDB]
GO
/****** Object:  Table [dbo].[EmployeeInfo]    Script Date: 27-03-2025 17:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeeInfo](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmpFname] [varchar](50) NULL,
	[EmpLname] [varchar](50) NULL,
	[Department] [varchar](50) NULL,
	[Project] [varchar](10) NULL,
	[Address] [varchar](200) NULL,
	[DOB] [date] NULL,
	[Gender] [varchar](10) NULL,
	[EmpEmail] [varchar](50) NULL,
	[isActive] [bit] NULL
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[EmployeePosition]    Script Date: 27-03-2025 17:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[EmployeePosition](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EmpID] [int] NULL,
	[EmpPosition] [varchar](50) NULL,
	[DateOfJoining] [date] NULL,
	[Salray] [int] NULL
) ON [PRIMARY]
GO
SET IDENTITY_INSERT [dbo].[EmployeeInfo] ON 

INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (1, N'Sanjay', N'Mehra', N'HR', N'P1', N'Hyderabad(HYD)', CAST(N'1976-12-01' AS Date), N'Male', N'sanjay@mail.com', 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (2, N'Ananya', N'Mishra', N'Admin', N'P2', N'Delhi(DEL)', CAST(N'1968-05-02' AS Date), N'Female', N'mishra@mail.com', 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (3, N'', N'', N'', N'', N'', CAST(N'1900-01-01' AS Date), N'', N'', 0)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (4, N'Sonia', N'Kulkarni', N'HR', N'P1', N'Hyderabad(HYD)', CAST(N'1992-02-05' AS Date), N'Male', NULL, 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (5, N'Ankit', N'Kapoor', N'Admin', N'P2', N'Delhi(DEL)', CAST(N'1994-03-07' AS Date), N'Male', NULL, 0)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (6, N'Pravin', N'Kumar', N'Developer', N'P1', N'Chennai(CHN)', CAST(N'1993-10-10' AS Date), N'Male', N'pravin@mail.com', 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (7, N'Sanjith', N'Kumar', N'IT', N'P7', N'Chennai (CHN)', CAST(N'1993-05-06' AS Date), N'Male', N'sanjith@mail.com', 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (8, N'Dhana', N'Sekar', N'IT', N'P8', N'Chennai (CHN)', CAST(N'1994-02-07' AS Date), N'Male', N'dhana@mail.com', 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (9, N'Abdul', N'Rahuman', N'IT', N'P8', N'Chennai (CHN)', CAST(N'1999-05-08' AS Date), N'Male', NULL, 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (11, N'Sinduja', N'Pradeep', N'IT', N'P9', N'Banglore (BGN)', CAST(N'1993-10-02' AS Date), N'Female', NULL, 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (14, N'Narasimhan', N'Mani', N'IT', N'P8', N'Chennai (CHN)', CAST(N'1980-02-07' AS Date), N'Male', NULL, 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (15, N'Narasimhan', N'Mani', N'IT', N'P8', N'Chennai (CHN)', CAST(N'1980-02-07' AS Date), N'Male', NULL, 0)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (16, N'Dinesh', N'Kumar', N'IT', N'P7', N'Chennai (CHN)', CAST(N'2011-01-05' AS Date), N'Male', NULL, 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (12, N'Saran', N'Kumar', N'IT', N'P9', N'Chennai (CHN)', CAST(N'1992-10-02' AS Date), N'Male', NULL, 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (13, N'Aravind', N'CR', N'IT', N'P9', N'Chennai (CHN)', CAST(N'1991-02-06' AS Date), N'Male', NULL, 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (17, N'Saravanan', N'Kumar', N'IT', N'P9', N'Chennai (CHN)', CAST(N'2003-02-05' AS Date), N'Male', N'saravanan@mail.com', 1)
INSERT [dbo].[EmployeeInfo] ([ID], [EmpFname], [EmpLname], [Department], [Project], [Address], [DOB], [Gender], [EmpEmail], [isActive]) VALUES (18, N'Kumaran', N'Rathanam', N'IT', N'P9', N'Chennai (CHN)', CAST(N'2002-06-02' AS Date), N'Male', N'kumaran@mail.com', 1)
SET IDENTITY_INSERT [dbo].[EmployeeInfo] OFF
GO
SET IDENTITY_INSERT [dbo].[EmployeePosition] ON 

INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (1, 1, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (2, 2, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (3, 3, N'', CAST(N'1900-01-01' AS Date), 0)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (4, 4, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (5, 5, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (6, 6, N'Developer', CAST(N'2014-04-02' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (7, 7, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (8, 8, N'Manager', CAST(N'2014-04-02' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (9, 9, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (11, 12, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (12, 13, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (15, 16, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (10, 11, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (14, 15, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (16, 17, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
INSERT [dbo].[EmployeePosition] ([ID], [EmpID], [EmpPosition], [DateOfJoining], [Salray]) VALUES (17, 18, N'Manager', CAST(N'2014-02-04' AS Date), 10000000)
SET IDENTITY_INSERT [dbo].[EmployeePosition] OFF
GO
/****** Object:  StoredProcedure [dbo].[Get_User_Details]    Script Date: 27-03-2025 17:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Get_User_Details]
as
begin

select * from EmployeeInfo E1 join EmployeePosition E2 on E1.ID = E2.EmpID where isActive = 1

end

-- Exec [dbo].[Get_User_Details]
GO
/****** Object:  StoredProcedure [dbo].[Insert_Emp_Data]    Script Date: 27-03-2025 17:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE Procedure [dbo].[Insert_Emp_Data]
@Flag varchar(10) = null,
@Id Int = 0,
@Fname Varchar(50) = null,
@Lname Varchar(50) = null,
@Department Varchar(50) = null,
@Project Varchar(50) = null,
@Address Varchar(50) = null,
@Dob Varchar(50) = null,
@Gender Varchar(10) = null,
@EmpPosition Varchar(50) = null,
@Doj Varchar(50) = null,
@Salarey Varchar(50) = null,
@email varchar(50) = null
As
Begin
IF(@Flag = 'Insert')
BEGIN
IF EXISTS (SELECT * FROM EmployeeInfo Where EmpEmail = @email)
BEGIN
Select 3 as 'dataResponseCode'
END
ELSE
BEGIN
Insert into EmployeeInfo Values (@Fname,@Lname,@Department,@Project,@Address,CONVERT(date,@Dob,105),@Gender,@email,1)
Declare @EmpID Int
SET @EmpID = (Select top 1 ID from EmployeeInfo order by ID desc)
Insert into EmployeePosition Values(@EmpID,@EmpPosition,CONVERT(date,@Doj,105),CONVERT(int, @Salarey))
Select 1 as 'dataResponseCode'
END
END
ELSE IF(@Flag = 'Delete')
BEGIN
UPDATE EmployeeInfo SET isActive = 0 WHERE ID = @Id
Select 4 as 'dataResponseCode'
END
ELSE
BEGIN
Update EmployeeInfo SET EmpFname = @Fname, EmpLname = @Lname , Department = @Department, Project = @Project, Address = @Address,
DOB = CONVERT(date,@Dob,105), Gender = @Gender, EmpEmail = @email Where ID = @Id
update EmployeePosition Set EmpPosition = @EmpPosition, DateOfJoining = CONVERT(date,@Doj,105), Salray = CONVERT(int, @Salarey) where EmpID = @Id
Select 2 as 'dataResponseCode'
END
end

-- EXEC [dbo].[Insert_Emp_Data] 'Sanjith','Kumar','IT','P7','Chennai (CHN)','18-05-1993','Male','Developer','05-08-2024','900000000'
GO
/****** Object:  StoredProcedure [dbo].[usp_Get_Emp_Details]    Script Date: 27-03-2025 17:32:52 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
create procedure [dbo].[usp_Get_Emp_Details]
@Emp_ID int
as
begin
select * from EmployeeInfo t1 join EmployeePosition t2 on t1.ID=t2.EmpID where t1.ID = @Emp_ID
end
GO
