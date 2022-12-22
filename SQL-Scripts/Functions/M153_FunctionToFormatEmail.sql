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
