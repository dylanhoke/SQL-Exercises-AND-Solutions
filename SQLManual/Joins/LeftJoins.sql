SELECT Column|Columns|*
FROM Table1
LEFT JOIN Table2
ON Table1.matchedColumn=Table2.matchedColumn;

--the left join keyword returns all records from the left table and the matching records from
--the right table. The result is 0 records from the right side if there is no match

SELECT Table1.Column2, Table2.Column1
FROM Table1
LEFT JOIN Table2 ON Table1.matchedColumn=Table2.matchedColumn
ORDER BY Table1.Column2;

--This will select all Table1.Column2 and any Table2.Column1 associated with Table1.Column2's values 
--through the matchedColumns found in each table
