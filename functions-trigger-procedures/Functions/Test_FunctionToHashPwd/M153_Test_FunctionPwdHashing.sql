/*
	Tests for Password-Hashing Function
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		Please do not execute the whole script at once. Only execute the single tests!
*/

/*
	Test 1
	We want to test: Will the function hash the password?
*/
SELECT dbo.HashPassword('mypassword')


/*
	Test 2
	We want to test: Will the function handle an empty string or a NULL password correctly?
*/
SELECT dbo.HashPassword(''), dbo.HashPassword(NULL)


/*
	Test 3
	We want to test: Will the function handle a very long password?
*/
SELECT dbo.HashPassword(REPLICATE('a', 50))
