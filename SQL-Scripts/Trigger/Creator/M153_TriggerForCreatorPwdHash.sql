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