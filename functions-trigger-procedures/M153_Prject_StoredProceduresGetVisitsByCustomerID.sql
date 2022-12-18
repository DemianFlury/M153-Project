CREATE PROCEDURE GetVisitsByCustomerId
@CustomerID int
AS
BEGIN
    SELECT *
    FROM Visit
    WHERE fk_CustomerID = @CustomerID;
END

EXEC GetVisitsByCustomerId 3;

