What is SQL?
SQL stands for Structured Query Language. It is the standard language for relational database management systems. 
It is especially useful in handling organized data comprised of entities (variables) and relations between different entities of the data.

What is the difference between SQL and MySQL?
SQL is a standard language for retrieving and manipulating structured databases. 
On the contrary, MySQL is a relational database management system, like SQL Server, Oracle or IBM DB2, that is used to manage SQL databases.

What are Tables and Fields?
A table is an organized collection of data stored in the form of rows and columns. 
Columns can be categorized as vertical and rows as horizontal. 
The columns in a table are called fields while the rows can be referred to as records.

What are Constraints in SQL?
Constraints are used to specify the rules concerning data in the table. 
It can be applied for single or multiple fields in an SQL table during the creation of the table or after creating using the ALTER TABLE command.
The constraints are:

What is a Query?
A query is a request for data or information from a database table or combination of tables. 
A database query can be either a select query or an action query.

Query Ex: 
SELECT fname, lname    /* select query */
FROM myDb.students
WHERE student_id = 1;
UPDATE myDB.students    /* action query */
SET fname = 'Captain', lname = 'America'
WHERE student_id = 1;

What is a Subquery? What are its types?
A subquery is a query within another query, also known as a nested query or inner query. 
It is used to restrict or enhance the data to be queried by the main query, thus restricting or enhancing the output of the main query respectively. 
For example, here we fetch the contact information for students who have enrolled for the maths subject:

SELECT name, email, mob, address
FROM myDb.contacts
WHERE roll_no IN (
 SELECT roll_no
 FROM myDb.students
 WHERE subject = 'Maths');
 
There are two types of subquery - Correlated and Non-Correlated.
A correlated subquery cannot be considered as an independent query, but it can refer to the column in a table listed in the FROM of the main query.
A non-correlated subquery can be considered as an independent query and the output of the subquery is substituted in the main query.

What are the TRUNCATE, DELETE and DROP statements?
DELETE statement is used to delete rows from a table.

DELETE FROM Candidates
WHERE CandidateId > 1000;
TRUNCATE command is used to delete all the rows from the table and free the space containing the table.

TRUNCATE TABLE Candidates;
DROP command is used to remove an object from the database. If you drop a table, all the rows in the table are deleted and the table structure is removed from the database.

DROP TABLE Candidates;
Write a SQL statement to wipe a table 'Temporary' from memory.
Write a SQL query to remove first 1000 records from table 'Temporary' based on 'id'.
Write a SQL statement to delete the table 'Temporary' while keeping its relations intact.

What is the difference between DROP and TRUNCATE statements?
If a table is dropped, all things associated with the tables are dropped as well. 
This includes - the relationships defined on the table with other tables, the integrity checks and constraints, access privileges and other grants that the table has. 
To create and use the table again in its original form, all these relations, checks, constraints, privileges and relationships need to be redefined. 
However, if a table is truncated, none of the above problems exist and the table retains its original structure.

What is the difference between DELETE and TRUNCATE statements?
The TRUNCATE command is used to delete all the rows from the table and free the space containing the table.
The DELETE command deletes only the rows from the table based on the condition given in the where clause or deletes all the rows from the table if no condition is specified. 
But it does not free the space containing the table.

How to create empty tables with the same structure as another table?
Creating empty tables with the same structure can be done smartly by fetching the records of one table into a new table using the INTO operator while fixing a WHERE clause to be false for all records. 
Hence, SQL prepares the new table with a duplicate structure to accept the fetched records but since no records get fetched due to the WHERE clause in action, nothing is inserted into the new table.

SELECT * INTO Students_copy
FROM Students WHERE 1 = 2;