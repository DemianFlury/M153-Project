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
