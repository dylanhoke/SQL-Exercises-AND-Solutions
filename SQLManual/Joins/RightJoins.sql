SELECT Column|Columns|*
FROM Table1
RIGHT JOIN Table2
ON Table1.matchedColumn=Table2.matchedColumn;

--the right join keyword returns all records from table 2 and the matching
--reocrds from table1. the result is 0 records from table1 if there is
--no match

SELECT Table1.Column1, Table2.Column2, Table2.Column3
FROM Table1
RIGHT JOIN Table2 ON Table1.matchedColumn=Table2.matchedColumn
ORDER BY Table1.Column1;

--This will return Table2.Column2, and Table2.Column3 and all Table1.Column1 Values
--associated with their values based on the tables matchedColumn