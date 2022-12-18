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