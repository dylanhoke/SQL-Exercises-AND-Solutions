SELECT Column|Columns|*
FROM Table
WHERE Column operator
ANY (SELECT Column FROM Table WHERE condition);

--the any and all operators allow you to performa comparison between a single
--column value and a range of other values.

-- The any operator returns a boolean value as a result, or returns TRUE if any
-- of the subquery values meet the condition

--any means that the condition will be true if the operation is true for any
--of the values in the range

SELECT ALL Column|Columns|*
FROM Table
WHERE condition;

SELECT Column|Columns|*
FROM Table
WHERE Column operator
ALL (SELECT Column FROM Table WHERE condition);

--the all operator returns a boolean value as a result, or returns TRUE if ALL
--of the subquery values meet the condition, or is used with SELECT, WHERE, and
--HAVING statements

-- all means that the condition will be true only if the operation is true for
-- all values in the range


-- Note: The operator must be a standard comparison operator (=, <>, !=, >, >=, <, or <=).

SELECT Column2
FROM Table1
WHERE Column1 = ANY
    (SELECT Column3 FROM Table2 WHERE Column4 = 10);

--This allows me to select any value from Table1 column2 using the
--matchedColumn from Tables 1 and 2 where the values of Column4
--are equal to 10.
--Select Column2, from table1, where Column1 is equal to
--any column in column3 from Table2 Where Column4 is equal to 10

SELECT ALL Column2
FROM Table1
WHERE TRUE;

SELECT Column2
FROM Table1
WHERE Column1 = ALL
    (SELECT Column3 FROM Table2 WHERE Column4 = 10);

--Select column2 from table1, where column1 meets ALL, of Column3's values from Table2
--Where column4 is equal to 10.