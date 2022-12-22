/*
	Triggers for CustomerPasswordHash
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		None
*/


CREATE TRIGGER HashPasswordTriggerCustomer ON Customer
AFTER INSERT
AS
BEGIN
    UPDATE Customer
    SET Passwd = dbo.HashPassword(i.Passwd)
    FROM Inserted i
    WHERE Customer.CustomerID = i.CustomerID
END