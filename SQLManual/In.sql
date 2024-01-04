SELECT column|columns|*
FROM Table
WHERE column IN (Value1, Value2...);

-- The in operator allows you to specify mulitple values in a where clause
-- the in operator is shorthand for multiple OR conditions

SELECT column|columns|* FROM Table
WHERE column NOT IN (Value1, Value2...)

-- by using the not keyword in front of the in operator yuou return all records
-- that are not any of the values in the list

SELECT column|columns|* FROM Table
WHERE column1 IN (SELECT column1 FROM Table2);

--You can also use IN with subquery in the WHERE clause with a subquery you can
--return all records from the main query that are present in the result of the subquery

SELECT column|columns|* FROM Table
WHERE column1 NOT IN (SELECT column1 FROM Table2);