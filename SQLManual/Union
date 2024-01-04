SELECT Column|Columns|* FROM Table1
UNION
SELECT Column|Columns|* FROM Table2;
--The Union operator is used to combine the resultset of two or more select
--statements.
    --every select statement within union must have the same number of
    --columns.
    --the columns must also have similar data types
    --the columns in every select statement must also be the same order

SELECT Column|Columns|* FROM Table1
UNION ALL
SELECT Column|Columns|* FROM Table2;

--The union operator selects only distinct values by default
--to allow duplicates use UNION ALL

SELECT Column5 FROM Table1
UNION
SELECT Column5 FROM Table2;

-- Example

SELECT Column5, Column6 FROM Table1
WHERE Column6 = 'specific'
UNION
SELECT Column5, Column6 FROM Table2
WHERE Column6 = 'specific'
ORDER BY Column5

--An example of where to fit a WHERE statement in this situation

