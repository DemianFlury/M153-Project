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