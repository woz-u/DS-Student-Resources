/*Multiple line Comment*/

/*What Can SQL do?
SQL can execute queries against a database
SQL can retrieve data from a database
SQL can insert records in a database
SQL can update records in a database
SQL can delete records from a database
SQL can create new databases
SQL can create new tables in a database
SQL can create stored procedures in a database
SQL can create views in a database
SQL can set permissions on tables, procedures, and views*/

/*SQL Databases are structured and relational and use schemas to create patterns of how tables are organized and interact.*/
DROP SCHEMA IF EXISTS Test2;
CREATE SCHEMA Test2;
USE Test2;


/*Import a Table within current schema or create a schema

CREATE TABLE DSTable

#Alter Table Statment: is used to add, delete, or modify columns in existing table. 
/*Add Column
Alter table test1
add column_name data type;*/

Alter table grades071122a
add testColumn varchar(50);

SELECT * FROM grades071122a;

/*Drop Column
Alter table test1
drop column_name;*/

Alter table grades071122a
drop testColumn;

SELECT * FROM grades071122a;


Alter table grades071122a
drop Dashboard,
drop Gradebook,
drop Email;

SELECT * FROM grades071122a;



/*Rename Column
Alter table test1
Rename column old_name to new_name;*/
Alter table grades071122c
rename column ï»¿ID to SID;

SELECT * FROM grades071122c;

Alter table grades071122a
rename column ï»¿ID to SID;

SELECT * FROM grades071122a;

Alter table grades071122b
rename column ï»¿ID to SID;

SELECT * FROM grades071122a;
SELECT * FROM grades071122b;
SELECT * FROM grades071122c;

/*Modify Datatype
Alter Table table_name
Modify Column column_name datatype;*/

Alter table grades071122b
MODIFY column SID text;

SELECT * FROM grades071122a;
SELECT * FROM grades071122b;


#Joins
#INNER JOIN
SELECT * FROM grades071122a
INNER JOIN grades071122b
USING(SID, Mentor, Name);

SELECT * From grades071122c;

SELECT * FROM grades071122a
left outer JOIN grades071122c
USING(SID, Mentor, Name);

Select * from grades071122c;

SELECT * FROM grades071122a
right outer JOIN grades071122c
USING(SID, Mentor, Name);


/*In SQL, a view is a virtual table based on the result-set of an SQL statement.
A view contains rows and columns, just like a real table. The fields in a view are fields from one or more real tables in the database.
You can add SQL statements and functions to a view and present the data as if the data were coming from one single table.
A view is created with the CREATE VIEW statement. */


DROP VIEW IF EXISTS DS1;
CREATE VIEW DS1 AS
SELECT * FROM grades071122a
JOIN grades071122b
USING(SID, Mentor, Name);

SELECT * FROM DS1;

SELECT * FROM grades071122a;
SELECT * FROM grades071122b;


/*EXAMPLE OF USING CASE WHEN END

CASE
    WHEN condition1 THEN result1
    WHEN condition2 THEN result2
    WHEN conditionN THEN resultN
    ELSE result
END;
#Example 
SELECT OrderID, Quantity,
CASE
    WHEN Quantity > 30 THEN 'The quantity is greater than 30'
    WHEN Quantity = 30 THEN 'The quantity is 30'
    ELSE 'The quantity is under 30'
END AS QuantityText
FROM OrderDetails;*/

#This is just a query, it doesn't save the column.  See below where we create a view to keep the new column
SELECT * ,
CASE
	WHEN `Course Code` = 'DSO101' THEN 'Basic Statistics'
    When `Course Code` = 'DSO102' THEN 'Statistical Programming in R'
	WHEN `Course Code` = 'DSO103' THEN 'Metrics and Data Processing'
	WHEN `Course Code` = 'DSO104' THEN 'Data Wrangling'
	WHEN `Course Code` = 'DSO105' THEN 'Intermediate Statistics'
	WHEN `Course Code` = 'DSO106' THEN 'Modeling and ML'
	WHEN `Course Code` = 'DSO107' THEN 'Big Data'
	WHEN `Course Code` = 'DSO108' THEN 'Databases'
	WHEN `Course Code` = 'DSO109' THEN 'Programming Foundations Python'
	WHEN `Course Code` = 'DSO110' THEN 'Final Project'
	ELSE 'Not Data Science'
END AS 'CourseName'
from ds1;

select * from ds1;

CREATE VIEW ds5 AS
SELECT * ,
CASE
	WHEN `Course Code` = 'DSO101' THEN 'Basic Statistics'
    When `Course Code` = 'DSO102' THEN 'Statistical Programming in R'
	WHEN `Course Code` = 'DSO103' THEN 'Metrics and Data Processing'
	WHEN `Course Code` = 'DSO104' THEN 'Data Wrangling'
	WHEN `Course Code` = 'DSO105' THEN 'Intermediate Statistics'
	WHEN `Course Code` = 'DSO106' THEN 'Modeling and ML'
	WHEN `Course Code` = 'DSO107' THEN 'Big Data'
	WHEN `Course Code` = 'DSO108' THEN 'Databases'
	WHEN `Course Code` = 'DSO109' THEN 'Programming Foundations Python'
	WHEN `Course Code` = 'DSO110' THEN 'Final Project'
	ELSE 'Not Data Science'
END AS 'CourseName'
from ds1;

SELECT * FROM ds5;


#Want a view of only the Data science courses, multiple variables
DROP VIEW IF EXISTS DS6;
create view ds6 as
Select * from ds5
where CourseName Not In ('Not Data Science', 'Databases');
select * from ds6;

#Want a view of only the Data science courses (single variable)
create view ds7 as
Select * from ds5
where CourseName != ('Not Data Science');
select * from ds7;



/*What is the smallest and largest values in a selected columm?
SELECT MIN(column_name)
FROM table_name
WHERE condition;*/

SELECT MIN(`Total Minutes`)
FROM ds6;

SELECT MAX(`Total Minutes`)
FROM ds6;

/* Count the values
SELECT COUNT(column_name)
FROM table_name
WHERE condition;*/

SELECT COUNT(`LMS Course`)
FROM ds6
WHERE `LMS Course`='DSO101C';

#Average
SELECT AVG(`Total Minutes`)
FROM ds6
WHERE `LMS Course`='DSO101C';

SELECT sum(`Total Minutes`)
FROM ds6
WHERE `LMS Course`='DSO101C';

/* Null Functions


Select * FROM ds6;