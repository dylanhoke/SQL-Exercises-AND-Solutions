SELECT column AS alias
FROM Table;

Select column|columns|*
FROM Table AS alias;

--SQL aliases are used to give a table or a column in a table a TEMPORARY
--name. Aliases are often used to make column names more readable.
--AN alias only exists for the duration of that query.
--An alias is created with the AS keyword.

SELECT column new_name
FROM Table;

--The AS is option in this situation because you can just leave
--a space and make the next word the new name

SELECT Column1 AS newColumn1, Column2 AS newColumn2
FROM Table;

--Renaming multiple columns

SELECT Column AS [newColumn]
FROM Table;

SELECT Column AS 'newColumn'
FROM Table;

SELECT Column1, Column2 + ', ' + Column3 + ' ' + Column4 + ', ' + Column5 AS newColumn
FROM Table;

--The previous statement creates an alias named newColumn that combines four columms

--MYSQL EXAMPLE
SELECT CustomerName, CONCAT(Address,', ',PostalCode,', ',City,', ',Country) AS Address
FROM Customers;

--ORACLE EXAMPLE
SELECT CustomerName, (Address || ', ' || PostalCode || ' ' || City || ', ' || Country) AS Address
FROM Customers;

SELECT * FROM Table AS newTable

--rename a table

SELECT a.column1, a.column2, b.column1
FROM Table AS a, newTable AS b
WHERE b.column1 = 'specificName' AND b.matchedColumn=a.matchedColumn;

--Selects all the values from the specific ID, in both table and newTable

SELECT Table.column1, Table.column2, newTable.column1
FROM newTable, Table
WHERE newTable.column1 = 'specificName' AND newTable.matchedColumn=Table.matchedColumn

--Done not using aliases, kind of annoying