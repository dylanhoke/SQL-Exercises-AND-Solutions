INSERT INTO Table2
SELECT Column|Columns|* FROM Table1
WHERE condition;

--insert copies information from one table to another the data structures
--MUST match.

INSERT INTO Table1(Column2, Column5, Column7)
SELECT Column2, Column5, Column7 FROM Table2;

--This will fill those columns in table 2 with the columns values from 
--table 1 assuming that the columns in table 1 share the same data type
--as the columns in table2
--you can to the same while filling all columns but the ID columns that
--match

INSERT INTO Table1(Column2, Column5, Column7)
SELECT Column2, Column5, Column7 FROM Table2
WHERE Column7 = 'condition';

--you can also add where statements to be more specific