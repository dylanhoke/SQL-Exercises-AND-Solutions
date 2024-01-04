################################################################################
SELECT TOP Value column|columns|* FROM Table;
    Note: Not all database systems support the SELECT TOP clause. MySQL supports the LIMIT clause to select a limited number of records, while Oracle uses FETCH FIRST n ROWS ONLY and ROWNUM.
    SQL Server / MS Access Syntax:

    SELECT TOP number|percent column_name(s)
    FROM table_name
    WHERE condition;

    MySQL Syntax:

    SELECT column_name(s)
    FROM table_name
    WHERE condition
    LIMIT number;

    Oracle 12 Syntax:

    SELECT column_name(s)
    FROM table_name
    ORDER BY column_name(s)
    FETCH FIRST number ROWS ONLY;
SELECT column|columns|*
FROM Table
LIMIT Value;
SELECT column|columns|* FROM Table
FETCH FIRST Value ROWS ONLY;
SELECT TOP Value PERCENT column|columns|* FROM Table; -- This is where SQL allows me to shine and the majority of selection and selection criteria fall into this category 
SELECT column|columns|* FROM Table                    -- lots of strategy and methodology goes into this section that will help me make decisions in SQL.
FETCH FIRST Value PERCENT ROWS ONLY;
SELECT TOP Value column|columns|* FROM Table
WHERE condition = 'specified'
SELECT column|columns|* FROM Table
WHERE condition = 'specified'
LIMIT Value;
SELECT column|columns|* FROM Table
WHERE condition = 'specified'
FETCH FIRST Value ROWS ONLY;
SELECT TOP Value column|columns|* FROM Table
ORDER BY Column DESC;
SELECT column|columns|* FROM Table
ORDER BY Column DESC
LIMIT Value;
SELECT column|columns|* FROM Table
ORDER BY Column DESC
FETCH FIRST Value ROWS ONLY;
#############################################################################