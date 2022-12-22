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

CREATE TABLE Customer(
	CustomerID int identity primary key,
	Age int,
	Passwd varchar(50),
	Email varchar(50),
	FirstName varchar(25),
	LastName varchar(25),
);
go

CREATE TABLE Creator(
	CreatorID int identity primary key,
	Age int,
	Passwd varchar(50),
	Email varchar(50),
	FirstName varchar(25),
	LastName varchar(25),
);
go

CREATE TABLE Course(
	CourseID int identity primary key,
	Price float,
	CourseDescription varchar(255),
	CourseName varchar(50),
	CreationDate datetime,
	fk_CreatorID int foreign key references Creator(CreatorID)
);
go

CREATE TABLE Visit(
	fk_CourseID int foreign key references Course(CourseID),
	fk_CustomerID int foreign key references Customer(CustomerID),
	VisitDate datetime,
	VisitID int identity primary key,
	Paid bit not null,
);
go