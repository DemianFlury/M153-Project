USE master;
go
DROP DATABASE IF EXISTS FitnessCourse;
CREATE DATABASE FitnessCourse;
go

CREATE TABLE Customer(
	CustomerID int identity primary key not null,
	Age int,
	Passwd varchar(50),
	Email varchar(50),
	FirstName varchar(25),
	LastName varchar(25),
);
go

CREATE TABLE Creator(
	CreatorID int identity primary key not null,
	Age int,
	Passwd varchar(50),
	Email varchar(50),
	FirstName varchar(25),
	LastName varchar(25),
);
go

CREATE TABLE Course(
	CourseID int identity primary key not null,
	Price float,
	CourseDescription varchar(255),
	CourseName varchar(50),
	CreationDate datetime,
	fk_CreatorID int foreign key references Creator.CreatorID
);
go

CREATE TABLE Visit(
	fk_CourseID int foreign key references Course.CourseID,
	fk_CustomerID int foreign key references Customer.CustomerID,
	VisitDate datetime
);
go