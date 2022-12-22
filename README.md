# M153-Project

## 💁 Our Description
### 📓 Project Description
Our topic is a fitness database for a company that offers various fitness courses. There is a buyer and a seller. The buyer can buy the courses that the seller (creator) offers. The idea behind this company is that the buyer and the seller will have all their courses in the same place and thus have constant access to their courses with an internet connection. The buyer will practice the courses and the seller can offer his products/services through this platform. These courses basically include a creation date and a description with a suitable title and the price.

### 🧮 Stored Procedures, Functions & Trigger

#### - Functions
Our e-mail function formats the e-mail address passed as a string via the parameter. It formats it by checking the e-mail for capitalised characters and writing those in lower case.
Our second function is a password hash function. This means that a password is passed as a string and replaced by randomly chosen characters. This makes the password unreadable and provides more security in the database.

#### - Stored Procedures
Our stored procedure is about using the select command to give us a table of all visits about a particular person.

#### - Trigger
We have created four triggers, two of them for the "Customer" and the other two are for the "Creator". The triggers for the "Customer" and the "Creator" do not differ in their functionality. 
The first trigger reacts to an update command from the e-mail address. The specially created function is called up directly and the e-mail address is formatted. 
The second trigger also reacts to an update command, but to the password. Here, as soon as a password is entered, it is converted into a hashed string. 

<br>

### 🧪 Project Tests
#### - Function Tests
For our email function, we tested whether the function itself works. As a second test, we checked what an empty string and a NULL value trigger in the function. In the last test, we tried to wrap a select command in the function as a parameter.
With our password hash function, we tested whether the function itself works. In the second test, we also checked what would happen if an empty string or a NULL value was entered into the function. Finally, we tried to find out with the maximum character length of the input whether the function can also hash such a large string.
- All tests were successful.

#### - Stored Procedures Tests
Here we have tested what happens with different inputs. We tested the SP for a normal value. Then, in the second test, we tested it for a NULL value. Last but not least, we tested how it behaves when a value is given, even if the entry does not exist.
- All tests were successful.

#### - Trigger Tests
For all triggers, we wrote all the tests for "Customer" and "Creator", but we were able to basically copy the tests from one to the other and only adjust the variables.
For the email trigger, we tested whether the function itself worked again. In the second test, we checked whether it could also process several rows. Finally, we tested whether it also works with a NULL value.
- All tests were successful.
<br><br><br>


## 🧑‍🏫 Teacher Assignment
### 📔 Short Description
In a group work (max. two learners) you will design and create a database on a freely chosen topic. 
The database will be created under MS-SQL(T-SQL)so that all scripts work with the "SQL-Server Management Studio".

The project includes:
- a documentation with ER-diagram, database description
- SQL code with which the database incl. trigger, stored procedure and function can be created.
- SQL code with which the data is entered into the database
- SQL code for queries/manipulation or tests, including a short test description for checking the trigger, stored procedure and function.
- A simple work report (with date, duration, description, person per work carried out). 

### 🔢 Database
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

### 📓 SQL-Code
SQL code is expected for the following functionalities:
- to create the database incl. triggers and stored procedures/functions
- to fill the database with test data
- for each query/ manipulation/ test

### ✅ Expected result
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

### 🔄 Work report
The work report (with at least date, duration, description, personper work carried out) must be kept continuously. The teacher must be granted permanent access to the work report. The system used for this (e.g. GitHub, etc.) is free.

### ➡️ Project submission
A zipped file with the name of the two group members or names in case of an individual work in the following form:
- M153_Project_LastName1_FirstName1_LastName2_FirstName2.zip. 
or 
- M153_Project_LastName_FirstName.zip

which contains the following files:
- Documentation as pdf-file(M153_Project.pdf)
-SQL script for creating the database:M153_Projekt_Create.sql
-SQL script for inserting the data: M153_Project_Insert.sql
-SQL script with the queries/manipulations or tests: 153_Project_Query.sql

Send the zipped file as an attachment to a Teams Chat message directly to peter.kaufmann@sluz.ch. 

#### Deadline: 
No later than Friday, 23 December 2022 at 23:59. Date and time of the chat message is valid! Submissions that are not on time will be marked with a 1! 
