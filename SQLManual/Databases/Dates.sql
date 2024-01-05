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

SELECT * FROM Orders WHERE OrderDate='2008-11-11'
