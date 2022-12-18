CREATE TRIGGER HashPasswordTriggerCreator ON Creator
AFTER INSERT
AS
BEGIN
    UPDATE Creator
    SET Passwd = dbo.HashPassword(i.Passwd)
    FROM Inserted i
    WHERE Creator.CreatorID = i.CreatorID
END