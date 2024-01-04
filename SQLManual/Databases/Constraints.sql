/*constraints can be specified when the table is create with the create
table statement or after th table is created with the alter table statement*/

/*SQL Constraints
SQL constraints are used to specify rules for the data in a table.

Constraints are used to limit the type of data that can go into a table.
This ensures the accuracy and reliability of the data in the table.
if there is any violation between the constraint and the data action,
the action is aborted.

Constraints can be column level or table level. Column level constraints
apply to a column, and table level constraints apply to the whole table.

The following constraints are commonly used in SQL:*/

NOT NULL -- Ensures that a column cannot have a NULL value
UNIQUE -- Ensures that all values in a column are different
PRIMARY KEY -- A combination of a NOT NULL and UNIQUE. Uniquely identifies
--each row in a table
FOREIGN KEY -- Prevents actions that would destroy links between tables
CHECK -- Ensures that the values in a column satisfies a specific condition
DEFAULT -- Sets a default value for a column if no value is specified
CREATE INDEX -- Used to create and retrieve data from the database very
--quickly

CREATE TABLE Table1 (
    Column1 dtype constraint,
    Column2 dtype constraint,
    ...
);

CREATE TABLE Table1 (
    Column dtype PRIMARY KEY,
    Column1 dtype,
    Column2 dtype,
    Column3 dtype,
    CONSTRAINT TableConstraintName CHECK (Column3 >= Value1)
);

--CONSTRAINTS ^^^

ALTER TABLE Table1
ALTER COLUMN Column1 dtype NOT NULL;

--SQL

MODIFY COLUMN Column1 dtype NOT NULL;

--MYSQL

MODIFY Column1 dtype NOT NULL;

--ORACLE

--NOT NULL ^^^

CREATE TABLE Table1 (
    Column1 dtype NOT NULL UNIQUE,
    Column2 dtype NOT NULL,
    Column3 dtype,
    Column4 dtype
);

--SQL/ORACLE/MSACCESS

CREATE TABLE Table1 (
    Column1 dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 dtype,
    Column4 dtype
    UNIQUE(Column1)
);

--MYSQL

CREATE TABLE Table1 (
    Column1 dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 dtype,
    Column4 dtype
    CONSTRAINT Unique_Column UNIQUE(Column1,Column2)
);

--MYSQL/SQLSERVER/ORACLE/MSACCESS

-- UNIQUE ^^^

CREATE TABLE Table1 (
    Column1 dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 dtype,
    Column4 dtype,
    PRIMARY KEY(Column1)
);

--MYSQL

CREATE TABLE Table1 (
    Column1 dtype NOT NULL PRIMARY KEY,
    Column2 dtype NOT NULL,
    Column3 dtype,
);

--SQL SERVER/ORACLE/MS ACCESS

CREATE TABLE Table1 (
    Column1 dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 dtype,
    CONSTRAINT TableConstraintName PRIMARY KEY (Column1, Column2)
);

/*
SQL NOT NULL Constraint
    By default, a column can hold NULL values.

    The NOT NULL constraint enforces a column to NOT accept NULL values.

    This enforces a field to always contain a value, which means that you
    cannot insert a new record, or update a record without adding a value
    to this field.

SQL UNIQUE Constraint
    The UNIQUE constraint ensures that all values in a column are different.

    Both the UNIQUE and PRIMARY KEY constraints provide a guarantee for
    uniqueness for a column or set of columns.

    A PRIMARY KEY constraint automatically has a UNIQUE constraint.

    However, you can have many UNIQUE constraints per table, but only one
    PRIMARY KEY constraint per table.

SQL PRIMARY KEY Constraint
    The PRIMARY KEY constraint uniquely identifies each record in a table.

    Primary keys must contain UNIQUE values, and cannot contain NULL values.

    A table can have only ONE primary key; and in the table, this primary
    key can consist of single or multiple columns (fields).

SQL FOREIGN KEY Constraint
    The FOREIGN KEY constraint is used to prevent actions that would
    destroy links between tables.

    A FOREIGN KEY is a field (or collection of fields) in one table, that
    refers to the PRIMARY KEY in another table.

    The table with the foreign key is called the child table, and the table
    with the primary key is called the referenced or parent table.

SQL CHECK Constraint
    The CHECK constraint is used to limit the value range that can be placed
    in a column.

    If you define a CHECK constraint on a column it will allow only certain
    values for this column.

    If you define a CHECK constraint on a table it can limit the values in
    certain columns based on values in other columns in the row.

SQL DEFAULT Constraint
    The DEFAULT constraint is used to set a default value for a column.

    The default value will be added to all new records, if no other value is
    specified.
*/

ALTER TABLE Table1
ADD PRIMARY KEY(ColumnKey);

--to create a primary key constraint on an existing column when the table
--is already created.

ALTER TABLE Table1
ADD CONSTRAINT ConstraintName PRIMARY KEY (Column1, Column2);

--The two constraints being made keys MUST be NOT NULL values

ALTER TABLE Table1
DROP PRIMARY KEY;

--Drops a primary key

ALTER TABLE Table1
DROP CONSTRAINT ConstraintName;

--drops the constraint that creates a primary key

-- MySQL:

CREATE TABLE Table1 (
    matchedColumn dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 dtype,
    PRIMARY KEY (matchedColumn),
    FOREIGN KEY (matchedColumn) REFERENCES Table2(matchedColumn)
);
-- SQL Server / Oracle / MS Access:

CREATE TABLE Table1 (
    matchedColumn dtype NOT NULL PRIMARY KEY,
    Column2 dtype NOT NULL,
    Column3 dtype FOREIGN KEY REFERENCES Table2(matchedColumn)
);
-- To allow naming of a FOREIGN KEY constraint, and for defining a
-- FOREIGN KEY constraint on multiple columns, use the following SQL syntax:

-- MySQL / SQL Server / Oracle / MS Access:

CREATE TABLE Table1 (
    matchedColumn dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 dtype,
    PRIMARY KEY (matchedColumn),
    CONSTRAINT ConstraintName FOREIGN KEY (matchedColumn)
    REFERENCES Table2(matchedColumn)
);

-- SQL FOREIGN KEY on ALTER TABLE
-- To create a FOREIGN KEY constraint on the "PersonID" column when the
-- "Orders" table is already created, use the following SQL:

-- MySQL / SQL Server / Oracle / MS Access:

ALTER TABLE Table1
ADD FOREIGN KEY (matchedColumn) REFERENCES Table2(matchedColumn);

-- To allow naming of a FOREIGN KEY constraint, and for defining a
-- FOREIGN KEY constraint on multiple columns, use the following SQL syntax:

-- MySQL / SQL Server / Oracle / MS Access:

ALTER TABLE Table1
ADD CONSTRAINT ConstraintName
FOREIGN KEY (matchedColumn) REFERENCES Table2(matchedColumn);

-- DROP a FOREIGN KEY Constraint
-- To drop a FOREIGN KEY constraint, use the following SQL:

-- MySQL:

ALTER TABLE Table1
DROP FOREIGN KEY ConstraintName;

-- SQL Server / Oracle / MS Access:

ALTER TABLE Table1
DROP CONSTRAINT ConstraintName;

-- MySQL:

CREATE TABLE Table1 (
    Column1 dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 dtype,
    Column4 dtype,
    CHECK (Column4 >= Value1)
);

-- SQL Server / Oracle / MS Access:

CREATE TABLE Table1 (
    Column1 dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 dtype,
    Column4 dtype CHECK (Column4 >= Value1)
);

-- To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:

-- MySQL / SQL Server / Oracle / MS Access:

CREATE TABLE Table1 (
    Column1 dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 dtype,
    Column4 dtype,
    Column5 dtype,
    CONSTRAINT CheckName CHECK (Column4 >= Value1 AND Column3='condition')
);

-- To create a CHECK constraint on the "Age" column when the table is already created, use the following SQL:

-- MySQL / SQL Server / Oracle / MS Access:

ALTER TABLE Table1
ADD CHECK (Column3 >= Value1);

-- To allow naming of a CHECK constraint, and for defining a CHECK constraint on multiple columns, use the following SQL syntax:

-- MySQL / SQL Server / Oracle / MS Access:

ALTER TABLE Table1
ADD CONSTRAINT CheckName CHECK (Column4 >= Value1 AND Column3='condition');

-- DROP a CHECK Constraint
-- To drop a CHECK constraint, use the following SQL:

-- SQL Server / Oracle / MS Access:

ALTER TABLE Table1
DROP CONSTRAINT CheckName;

-- MySQL:

ALTER TABLE Table1
DROP CHECK CheckName;

-- SQL DEFAULT on CREATE TABLE
-- The following SQL sets a DEFAULT value for the "City" column when the "Persons" table is created:

-- My SQL / SQL Server / Oracle / MS Access:

CREATE TABLE Table1 (
    Column1 dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 dtype,
    Column4 dtype,
    Column5 dtype DEFAULT 'condition'
);

-- The DEFAULT constraint can also be used to insert system values, by using functions like GETDATE():

CREATE TABLE Table1 (
    Column1 dtype NOT NULL,
    Column2 dtype NOT NULL,
    Column3 date DEFAULT GETDATE()
);

-- SQL DEFAULT on ALTER TABLE
-- To create a DEFAULT constraint on the "City" column when the table is already created, use the following SQL:

-- MySQL:

ALTER TABLE Table1
ALTER Column SET DEFAULT 'condition';

-- SQL Server:

ALTER TABLE Table1
ADD CONSTRAINT newValue
DEFAULT 'condition' FOR Column;

-- MS Access:

ALTER TABLE Table1
ALTER COLUMN Column1 SET DEFAULT 'condition';

-- Oracle:

ALTER TABLE Table1
MODIFY Column DEFAULT 'condition';

-- DROP a DEFAULT Constraint
-- To drop a DEFAULT constraint, use the following SQL:

-- MySQL:

ALTER TABLE Table1
ALTER Column DROP DEFAULT;

-- SQL Server / Oracle / MS Access:

ALTER TABLE Table1
ALTER COLUMN Column1 DROP DEFAULT;

-- SQL Server:

ALTER TABLE Table1
ALTER COLUMN Column1 DROP DEFAULT;