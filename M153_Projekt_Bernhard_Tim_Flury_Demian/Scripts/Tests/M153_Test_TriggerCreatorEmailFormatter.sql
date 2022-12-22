/*
	Tests for Triggers for CreatorEmailFormatting
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
UPDATE dbo.Creator
SET Email = 'UnForMattEd@eMaIl.com'
WHERE CreatorID = 1;

SELECT * FROM dbo.Creator WHERE CreatorID = 1;

/*
	Test 2
	We want to test: Will the trigger work with multiple rows in the creator table?
*/
UPDATE dbo.Creator
SET Email = 'UnForMattEd@eMaIl.com'
WHERE CreatorID IN (1, 2, 3);

SELECT * FROM dbo.Creator WHERE CreatorID IN (1, 2, 3);

/*
	Test 3
	We want to test: Will the trigger work with a NULL value?
*/
UPDATE dbo.Creator
SET Email = NULL
WHERE CreatorID = 1;

SELECT * FROM dbo.Creator WHERE CreatorID = 1;