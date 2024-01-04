--The group by statement groups rows that have the same values
--into summary rows like find the number of customers in each
--country.
--the group by statement is often used with aggregate
--functions(COUNT MAX MIN SUM AVG) to group the result setby one ore more
--columns.

SELECT Column|Columns|*
FROM Table
WHERE condition
GROUP BY Column|Columns|*
ORDER BY Column|Columns|*;

SELECT COUNT(Column1), Column2
FROM Table
GROUP BY Column2

--this statement lists the number of values in column1 for each value in
--column2.

SELECT COUNT(Column1), Column2
FROM Table
GROUP BY Column2
ORDER BY COUNT(Column1) DESC;

--this statement lists the number of values in column1 in each Column2
--sorted high to low.

SELECT Table2.Column2, COUNT(Table1.Column1) AS NumOfValues --The number of values in Table1.Column1
FROM Table1
LEFT JOIN Table2 ON Table1.matchedColumn=Table2.matchedColumn
GROUP BY Table2.Column2

--This statement lists the number of values in Table1.Column1 for each value of Table2.Column2
