--the having clause was added to SQL because the where keyword
--cannot be used with aggregate functions

SELECT Column|Columns|*
FROM Table
WHERE condition
GROUP BY Column|Columns|*
HAVING condition
ORDER BY Column|Columns|*;

SELECT COUNT(Column1), Column7
FROM Table
GROUP BY Column7
HAVING COUNT(Column1) > 5;

--this statement lists the number of values of Column1 for each value in Column7
--that exceed a certain threshold

--Having is an extension of WHERE that includes the usage of functions like count
--WHERE COUNT(x) does not work so
--HAVING COUNT(x) was implemented

SELECT COUNT(Column1), Column7
FROM Table
GROUP BY Column7
HAVING COUNT(Column1) > 5
ORDER BY COUNT(Column1) DESC;

--This statement lists the number of values of column1 for each value in column7
--sorted high to low.

SELECT Table2.Column2, COUNT(Table1.Column1) AS NumberOfValues
FROM (Table1
INNER JOIN Table2 ON Table1.matchedColumn=Table2.matchedColumn)
GROUP BY Column2
HAVING COUNT(Table1.Column1) > 10;

--This statement lists the Values of Table1 Column1 that are associated with
--each value in Table2 Column2.

SELECT Table2.Column2, COUNT(Table1.Column1) AS NumberOfValues
FROM Table1
INNER JOIN Table2 ON Table1.matchedColumn=Table2.matchedColumn
WHERE Column2 = 'specified' OR Column2 = 'specified2'
GROUP BY Column2
HAVING COUNT(Table1.Column1) > 25;

--This statement identifies two values of Column2 that have associated with
--them more than 25 values of column1.
