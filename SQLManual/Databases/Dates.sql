/*SQL Dates
The most difficult part when working with dates is to be sure that the
format of the date you are trying to insert, matches the format of the
date column in the database.

As long as your data contains only the date portion, your queries will
work as expected. However, if a time portion is involved, it gets more
complicated.

SQL Date Data Types
MySQL comes with the following data types for storing a date or a date/time
value in the database:*/

DATE -- format YYYY-MM-DD
DATETIME -- format: YYYY-MM-DD HH:MI:SS
TIMESTAMP -- format: YYYY-MM-DD HH:MI:SS
YEAR -- format YYYY or YY

-- SQL Server comes with the following data types for storing a date or a
-- date/time value in the database:

DATE -- format YYYY-MM-DD
DATETIME -- format: YYYY-MM-DD HH:MI:SS
SMALLDATETIME -- format: YYYY-MM-DD HH:MI:SS
TIMESTAMP -- format: a unique number

-- Note: The date types are chosen for a column when you create a new table
-- in your database!

-- Now we want to select the records with an OrderDate of "2008-11-11" from
-- the table above.

-- We use the following SELECT statement:

SELECT * FROM Table1 WHERE Column='2008-11-11'

-- Certainly! If you want to change the data type of an existing column in
-- a table, you typically need to use the ALTER TABLE statement. Here are
-- examples for changing the data type of a column for MySQL, PostgreSQL,
-- SQL Server, and Oracle:

-- 1. MySQL:
-- Changing Data Type to DATE:
-- sql

ALTER TABLE your_table
MODIFY COLUMN your_column DATE;

-- Changing Data Type to DATETIME:


ALTER TABLE your_table
MODIFY COLUMN your_column DATETIME;

-- Changing Data Type to TIMESTAMP:

ALTER TABLE your_table
MODIFY COLUMN your_column TIMESTAMP;

-- Changing Data Type to YEAR:

ALTER TABLE your_table
MODIFY COLUMN your_column YEAR;

-- 2. PostgreSQL:

-- Changing Data Type to DATE:

ALTER TABLE your_table
ALTER COLUMN your_column TYPE DATE;

-- Changing Data Type to TIMESTAMP:

ALTER TABLE your_table
ALTER COLUMN your_column TYPE TIMESTAMP;

-- 3. SQL Server:
-- Changing Data Type to DATE:

ALTER TABLE your_table
ALTER COLUMN your_column DATE;

-- Changing Data Type to DATETIME:

ALTER TABLE your_table
ALTER COLUMN your_column DATETIME;

-- 4. Oracle:
-- Changing Data Type to DATE:

ALTER TABLE your_table
MODIFY your_column DATE;

-- Changing Data Type to TIMESTAMP:

ALTER TABLE your_table
MODIFY your_column TIMESTAMP;

-- Remember to replace your_table with the actual table name and your_column
-- with the actual column name that you want to modify. Additionally, altering
-- a column's data type may result in data conversion issues, so it's essential
-- to review and handle any potential data conflicts before executing such
-- statements in a production environment.
