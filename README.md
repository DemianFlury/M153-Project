# M153-Project

## 📔 Short Description
In a group work (max. two learners) you will design and create a database on a freely chosen topic. The database will be created under MS-SQL(T-SQL)so that all scripts work with the "SQL-Server Management Studio".

The project includes:
- a documentation with ER-diagram, database description
- SQL code with which the database incl. trigger, stored procedure and function can be created.
- SQL code with which the data is entered into the database
- SQL code for queries/manipulation or tests, including a short test description for checking the trigger, stored procedure and function.
- A simple work report (with date, duration, description, person per work carried out). 

## 🔢 Database
The database theme can be freely chosen and must be approved by the teacher before the start of the project.The theme must be unique, i.e. it may only occur once within the class or year.The database must fulfil the following conditions:
- The ER model has at least four tables.
- One of the relationships in the ER model must be an n-n relationship.
- The following data types must be used at least once:
    - String, e.g. varchar, etc.
    - Integer, e.g. integer, etc.
    - Floating and/or fixed point number: e.g. float,etc.
    - Truth value, e.g. bit, etc.
    - Date and/or time value, e.g. dateusw.
- All primary keys automatically increment from 1 to n.
- The referential integrity is defined by the foreign key relationships via the system (FOREIGN KEY ... REFERENCES...).
- At least one own trigger must be used
- At least one stored procedure must be used.
- At least one function must be used
- At least three different queries/manipulations or tests must be executed per trigger, stored procedure or function.
- At least 20 test data sets must be used per table.

## 📓 SQL-Code
SQL code is expected for the following functionalities:
- to create the database incl. triggers and stored procedures/functions
- to fill the database with test data
- for each query/ manipulation/ test

## ✅ Expected result
A documentation with:
- Brief description of the topic
- ER diagram of the database
- RelationalModel of the database incl. data type and description of the individual fields
- Description of the queries/manipulations or tests
- Description of the stored procedures/functions and the trigger and their application

The trigger, the stored procedure or the function should have a simple error handling, i.e.:-wrong or empty arguments are intercepted-blank results are displayed e.g. by an error message or return zero-the return value of the stored procedure returns the number of affected data records-appropriate error messages are generated for the errors, as usual in the Management Studio-each error leads to a defined abort

Each page of the documentation must contain the following information:
- the surnames and first names of the group members or the surname and first name in the case of an individual assignment
- the class
- Number of the current page and the total number of pages. 

A corresponding Word template can be requested if necessary.

## 🔄 Work report
The work report (with at least date, duration, description, personper work carried out) must be kept continuously. The teacher must be granted permanent access to the work report. The system used for this (e.g. GitHub, etc.) is free.

## ➡️ Project submission
### Scope:
A zipped file with the name of the two group members or names in case of an individual work in the following form:
- M153_Project_LastName1_FirstName1_LastName2_FirstName2.zip. 
or 
- M153_Project_LastName_FirstName.zip

which contains the following files:
- Documentation as pdf-file(M153_Project.pdf)
-SQL script for creating the database:M153_Projekt_Create.sql
-SQL script for inserting the data: M153_Project_Insert.sql
-SQL script with the queries/manipulations or tests: 153_Project_Query.sql

### Art:

Send the zipped file as an attachment to a Teams Chat message directly to peter.kaufmann@sluz.ch. 

### Deadline: 
No later than Friday, 23 December 2022 at 23:59. Date and time of the chat message is valid! Submissions that are not on time will be marked with a 1! 
