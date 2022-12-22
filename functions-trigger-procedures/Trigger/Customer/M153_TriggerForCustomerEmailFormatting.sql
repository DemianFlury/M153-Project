/*
	Trigger to Format the Email on the Customer table whenever a update executes.
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		None
*/


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