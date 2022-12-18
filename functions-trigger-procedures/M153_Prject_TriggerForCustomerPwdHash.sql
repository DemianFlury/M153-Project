CREATE TRIGGER HashPasswordTriggerCustomer ON Customer
AFTER INSERT
AS
BEGIN
    UPDATE Customer
    SET Passwd = dbo.HashPassword(i.Passwd)
    FROM Inserted i
    WHERE Customer.CustomerID = i.CustomerID
END