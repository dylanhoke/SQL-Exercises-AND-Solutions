SELECT COUNT(*) FROM Table; -- Find the total number of the rows in the table
SELECT COUNT(column|columns|*) FROM Table
WHERE condition; -- add a condition to find the total number of rows that contain a specific condition
SELECT COUNT(column|columns|*)
FROM Table
WHERE column2 > Value; -- count the rows in a column that spcifies a specific condition
SELECT COUNT(column|columns|*)
FROM Table;
SELECT COUNT(DISTINCT column|columns|*)
FROM Table; -- Ignore duplicates to count how many different items there are in a column which returns a numeric value.
SELECT COUNT(*) AS [number of records]
FROM Table; -- give the counted column a name by using the AS keyword, this produces a column named "number of records"