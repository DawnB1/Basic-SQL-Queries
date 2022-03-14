FINDING DATA QUERIES
SELECT: used to select data from a database
SELECT * FROM table_name;

DISTINCT: filters away duplicate values and returns rows of specified column
SELECT DISTINCT column_name;

DATA MODIFICATION QUERIES
INSERT INTO: used to insert new records/rows in a table
INSERT INTO table_name (column1, column2) VALUES (value1, value2);
INSERT INTO table_name VALUES (value1, value2 …);

UPDATE: used to modify the existing records in a table
UPDATE table_name SET column1 = value1, column2 = value2 WHERE condition;
UPDATE table_name SET column_name = value;

DELETE: used to delete existing records/rows in a table
DELETE FROM table_name WHERE condition;
DELETE * FROM table_name;

REPORTING QUERIES
COUNT: returns the # of occurrences
SELECT COUNT (DISTINCT column_name);

MIN() and MAX(): returns the smallest/largest value of the selected column
SELECT MIN (column_names) FROM table_name WHERE condition;
SELECT MAX (column_names) FROM table_name WHERE condition;

AVG(): returns the average value of a numeric column
SELECT AVG (column_name) FROM table_name WHERE condition;

SUM(): returns the total sum of a numeric column
SELECT SUM (column_name) FROM table_name WHERE condition;

JOIN QUERIES
INNER JOIN: returns records that have matching value in both tables
SELECT column_names FROM table1 INNER JOIN table2 ON table1.column_name=table2.column_name;
SELECT table1.column_name1, table2.column_name2, table3.column_name3 FROM ((table1 INNER JOIN table2 ON relationship) INNER JOIN table3 ON relationship);

LEFT (OUTER) JOIN: returns all records from the left table (table1), and the matched records from the right table (table2)
SELECT column_names FROM table1 LEFT JOIN table2 ON table1.column_name=table2.column_name;

RIGHT (OUTER) JOIN: returns all records from the right table (table2), and the matched records from the left table (table1)
SELECT column_names FROM table1 RIGHT JOIN table2 ON table1.column_name=table2.column_name;

FULL (OUTER) JOIN: returns all records when there is a match in either left or right table
SELECT column_names FROM table1 FULL OUTER JOIN table2 ON table1.column_name=table2.column_name;

Self JOIN: a regular join, but the table is joined with itself
SELECT column_names FROM table1 T1, table1 T2 WHERE condition;


CREATING A TABLE QUERY
CREATE: create a table
CREATE TABLE table_name (
column1 datatype,
column2 datatype,
column3 datatype,
column4 datatype,
);

ALTERING TABLE QUERIES
ADD: add a column
ALTER TABLE table_name ADD column_name column_definition;

MODIFY: change data type of column
ALTER TABLE table_name MODIFY column_name column_type;

DROP: delete a column
ALTER TABLE table_name DROP COLUMN column_name;

VIEW QUERIES
CREATE: create a view
CREATE VIEW view_name AS SELECT column1, column2 FROM table_name WHERE condition;

SELECT: retrieve a view
SELECT * FROM view_name;

DROP: drop a view
DROP VIEW view_name;

