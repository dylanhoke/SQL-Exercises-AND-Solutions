SELECT Column|Columns|*
FROM Table1 T1, Table2 T2
WHERE condition;

--A self join is a regular join but the table is joined with itself

SELECT a.Column2 AS Column2(1), b.Column2 AS Column2(2), a.Column5
FROM Table a, Table b
WHERE a.Column <> b.Column
AND a.Column5 = b.Column5
ORDER BY a.Column5;