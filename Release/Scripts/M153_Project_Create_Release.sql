/*
	Create Script for FitnessCourse-Database
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		None
*/

USE master;
go
DROP DATABASE IF EXISTS FitnessCourse;
go
CREATE DATABASE FitnessCourse;
go
use FitnessCourse;
go

/*Create Tables and Foreign Keys*/
CREATE TABLE Customer(
	CustomerID int identity primary key,
	FirstName varchar(25),
	LastName varchar(25),
	Age int,
	Email varchar(50),
	Passwd varchar(50),
);
go

CREATE TABLE Creator(
	CreatorID int identity primary key,
	FirstName varchar(25),
	LastName varchar(25),
	Age int,
	Email varchar(50),
	Passwd varchar(50),
);
go

CREATE TABLE Course(
	CourseID int identity primary key,
	CourseName varchar(50),
	CourseDescription varchar(255),
	CreationDate datetime,
	Price float,
	fk_CreatorID int foreign key references Creator(CreatorID)
);
go

CREATE TABLE Visit(
	VisitID int identity primary key,
	VisitDate datetime,
	Paid bit not null,
	fk_CourseID int foreign key references Course(CourseID),
	fk_CustomerID int foreign key references Customer(CustomerID),
);
go

/*Functions*/

/*
	Email-Formatter Function
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		None
*/
CREATE FUNCTION dbo.FormatEmail(@email VARCHAR(255))
RETURNS VARCHAR(255)
AS
BEGIN
  DECLARE @formattedEmail VARCHAR(255)
  
  SET @formattedEmail = LOWER(@email)
  
  RETURN @formattedEmail
END
Go

/*
	Password-Hash Function
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		None
*/
CREATE FUNCTION dbo.HashPassword(@password NVARCHAR(MAX))
RETURNS NVARCHAR(MAX)
AS
BEGIN
    DECLARE @hash NVARCHAR(MAX)
    SET @hash = HASHBYTES('SHA2_256', @password)
    RETURN @hash
END
Go

/*Stored Procedure*/

/*
	Stored Procedure to get all visits via CustomerID
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		None
*/
CREATE PROCEDURE GetVisitsByCustomerId
@CustomerID int
AS
BEGIN
    SELECT *
    FROM Visit
    WHERE fk_CustomerID = @CustomerID;
END
Go

/*Triggers*/

/*
	Triggers for CreatorPasswordHash
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		None
*/
CREATE TRIGGER HashPasswordTriggerCreator ON Creator
AFTER INSERT
AS
BEGIN
    UPDATE Creator
    SET Passwd = dbo.HashPassword(i.Passwd)
    FROM Inserted i
    WHERE Creator.CreatorID = i.CreatorID
END
Go

/*
	Trigger to Format the Email on the Creator table whenever a update executes.
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		None
*/
CREATE TRIGGER dbo.FormatEmailAddressCreator
ON dbo.Creator
AFTER UPDATE
AS
BEGIN
  SET NOCOUNT ON;
  
  UPDATE dbo.Creator
  SET Email = dbo.FormatEmail(Email)
  WHERE CreatorID IN (SELECT CreatorID FROM inserted)
END
Go

/*
	Triggers for CustomerPasswordHash
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		None
*/
CREATE TRIGGER HashPasswordTriggerCustomer ON Customer
AFTER INSERT
AS
BEGIN
    UPDATE Customer
    SET Passwd = dbo.HashPassword(i.Passwd)
    FROM Inserted i
    WHERE Customer.CustomerID = i.CustomerID
END
Go

/*
	Trigger to Format the Email on the Customer table whenever a update executes.
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		None
*/
CREATE TRIGGER dbo.FormatEmailAddressCustomer
ON dbo.Customer
AFTER UPDATE
AS
BEGIN
  SET NOCOUNT ON;
  
  UPDATE dbo.Customer
  SET Email = dbo.FormatEmail(Email)
  WHERE CustomerID IN (SELECT CustomerID FROM inserted)
END
Go