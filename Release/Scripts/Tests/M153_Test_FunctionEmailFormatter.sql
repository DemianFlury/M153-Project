/*
	Tests for Email-Formatting Function
	Module:			M153
	Authors:		Tim Bernhard
					Demian Flury
	Language:		T-SQL
	Database:		FitnessCourse

	Indication:		Please do not execute the whole script at once. Only execute the single tests!
*/

/*
	Test 1
	We want to test: Will the function put the characters into the lower case?
*/
Select dbo.FormatEmail('Tim.Bernhard@GuGu.cOm')


/*
	Test 2
	We want to test: Will the function handle an empty string or a NULL Email correctly?
*/
SELECT dbo.FormatEmail(''), dbo.FormatEmail(NULL)


/*
	Test 3
	We want to test: Will the function fail with a "Select" in its paramter?
*/
Insert into Creator (FirstName, LastName, Email, Passwd, Age)
Values ('Tim', 'Bernhard', 'TimBernhard@GuGu.cOm', 'sml12345', 20);
Go

Select Creator.Email
From Creator
Where Email = dbo.FormatEmail((Select Creator.Email From Creator Where FirstName = 'Tim' AND LastName = 'Bernhard'));


/*Damit man der erstellte Creator wieder gelöscht werden kann, um es mehrmals zu testen.*/
Delete From Creator
Where FirstName = 'Tim' AND LastName = 'Bernhard'

Select Creator.Email From Creator Where FirstName = 'Tim' AND LastName = 'Bernhard'