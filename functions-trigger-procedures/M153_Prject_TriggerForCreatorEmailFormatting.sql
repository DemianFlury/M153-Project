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