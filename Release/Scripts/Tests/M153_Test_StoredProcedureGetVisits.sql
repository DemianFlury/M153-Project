/*
	Tests for Stored Procedure Get-Visits
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		Please do not execute the whole script at once. Only execute the single tests!
*/

/*
	Test 1
	We want to test: Will the stored procedure work with normal input?
*/
EXEC GetVisitsByCustomerId 3;

/*
	Test 2
	We want to test: Will the stored procedure work with a null input?
*/
EXEC GetVisitsByCustomerId NULL;

/*
	Test 3
	We want to test: Will the stored procedure work with a not existing number?
*/
EXEC GetVisitsByCustomerId 99;

