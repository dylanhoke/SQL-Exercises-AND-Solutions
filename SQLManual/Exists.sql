SELECT Column|Columns|*
FROM Table
WHERE EXISTS (SELECT Column FROM Table WHERE condition);

--The exists operatr is used to test for the existence of any record in
--a subquery.
--the exists operator returns TRUE if the subquery returns one or more
--records.

SELECT Column2
FROM Table2
WHERE EXISTS (SELECT Column2 FROM Table1 WHERE Table1.matchedColumn=Table2.matchedColumn AND Column6 < 20);

--This statement returns TRUE and lists the values of Table2 with a the numerical value of the values
--of Table1 below 20

SELECT Column2
FROM Table2
WHERE EXISTS (SELECT Column2 FROM Table1 WHERE Table1.matchedColumn=Table2.matchedColumn AND Column6 = 22);

