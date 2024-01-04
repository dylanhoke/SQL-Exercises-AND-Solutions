SELECT MIN(Column)
FROM Table; -- allows me to return the smallest value of the selected column
SELECT MAX(Column)
FROM Table; -- allows me to return the largest value of the selected column
-- ADDITIONALLY you can add where statements to include the min or max in which a column displays a specific value
SELECT MIN(Column) AS Smallest_Price
FROM Table; -- allows me to create a new column with the smallest Value