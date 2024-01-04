SELECT Column1, Column2 * (Column3 + Column4)
FROM Table;

--in this code if it is possible for the values of Column4 to be NULL
--this code would return NULL.

SELECT Column1, Column2 * (Column3 + IFNULL(Column4, 0))
FROM Table;

--This solution will find any null values and turn them into a 0 as shown

-- the different functions are:
-- IFNULL()
-- COALESCE()
-- ISNULL()
-- NVL()
--NVL is specific to Oracle and ISNULL is a little different

SELECT Column1, Column2 * (Column3 + IF(ISNULL(Column4), 0, Column4))
FROM Table;
