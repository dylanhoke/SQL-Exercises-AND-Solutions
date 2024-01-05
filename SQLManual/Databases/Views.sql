/*
In SQL a view is a virtual table based on the result set of an SQL statement
a view constains rows and colummns just like a real table.
the fields in a view are fields from one or more real tables in the database.
you can add SQL statements and fucntions to a view and present the data as if
the data were coming from one single table.
a view is created with the CREATE VIEW statement
*/

CREATE VIEW viewName AS
SELECT Column1, Column2
FROM Table1
WHERE condition;

-- NOTE: A view always shows up to data data! The database renews every query

CREATE VIEW [Specific Name] AS
SELECT Column1, Column2
FROM Table1
WHERE Column3 = 'SpecificNameCriteria';

SELECT * FROM [Specific Name];

CREATE VIEW [Specific Name] AS
SELECT Column1, Column2
FROM Table1
WHERE Column2 > (SELECT AVG(Column2) FROM Table1);

SELECT * FROM [Specific Name];

--A view can be updated with the CREATE OR REPLACE VIEW statement

CREATE OR REPLACE VIEW viewName AS
SELECT Column1, Column2
FROM Table1
WHERE condition;

CREATE OR REPLACE VIEW [Specific Name] AS
SELECT Column1, Column2, Column3
FROM Table1
WHERE Column4 = 'SpecificNameCriteria';

--A view is deleted with the DROP VIEW statement

DROP VIEW viewName;

DROP VIEW [Specific Name];