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