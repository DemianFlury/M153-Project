/*
	Tests for Triggers for CustomerPasswordHash
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		Please do not execute the whole script at once. Only execute the single tests!
*/

/*
	Test 1
	We want to test: Will the trigger work?
*/
INSERT INTO dbo.Customer (Passwd) VALUES ('mypassword');

SELECT * FROM dbo.Customer WHERE CustomerID = SCOPE_IDENTITY();


/*
	Test 2
	We want to test: Will the trigger work with multiple rows?
*/
INSERT INTO dbo.Customer (Passwd) VALUES ('password1'), ('password2'), ('password3');

SELECT * FROM dbo.Customer WHERE CustomerID IN (SCOPE_IDENTITY() - 2, SCOPE_IDENTITY() - 1, SCOPE_IDENTITY());


/*
	Test 3
	We want to test: Will the trigger work with a NULL value?
*/
INSERT INTO dbo.Customer (Passwd) VALUES (NULL);

SELECT * FROM dbo.Customer WHERE CustomerID = SCOPE_IDENTITY();
