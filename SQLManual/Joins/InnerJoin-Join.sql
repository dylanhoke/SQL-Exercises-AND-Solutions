SELECT Column|Columns|*
FROM Table1
INNER JOIN Table2
ON table1.matchedColumn=table2.matchedColumn;

--Inner join

SELECT Column1, Column2, Column3
FROM Table1
INNER JOIN Table2 ON Table1.matchedColumn=Table2.matchedColumn

--Joins 2 columns unique to table 1 and 1 column unique to table 2 and combines them indexed
--by the matched Columns shared between the two of them

SELECT Table1.Column1, Table1.Column2, Table2.Column3
FROM Table1
INNER JOIN Table2 ON Table1.matchedColumn=Table2.matchedColumn;

--Further identifies the columns so as to not make any mistakes

--JOIN AND INNER JOIN WILL RETURN THE SAME RESULT

SELECT Table1.Column1, Table2.Column2, Table3.Column3
FROM ((Table1
INNER JOIN Table2 ON Table1.matchedColumn=Table2.matchedColumn)
JOIN Table3 ON Table1.matchedColumn2=Table3.matchedColumn2);

--Creates an inner join|join scenario on 3 tables simultaneously