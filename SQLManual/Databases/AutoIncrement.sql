/*
Auto increment allows a unique number to be generated automatically when a
new record is inserted into a table. Often this is the primary key field
that we would like to be created automatically evertime a new record is
inserted
*/

CREATE TABLE Table1 (
    Column1 dtype NOT NULL AUTO_INCREMENT,
    Column2 dtype NOT NULL,
    Column3 dtype,
    PRIMARY KEY(Column1)
);

--This statement defines Column1 to be an auto increment primary key.

/*
MySQL uses the auto increment keyword to perform an auto increment feature.
by default the starting value for auto increment is 1 and it will increment
by 1 for each new record. to let the auto increment sequence start with
another value use the following statement
*/

ALTER TABLE Table1 AUTO_INCREMENT=Value;

/*
To insert a new record into Table1 we will not have to specify a value for
Column1 a unique value will be added automatically.
*/

INSERT INTO Table1 (Column2, Column3)
VALUES('value1', 'value2')

/*
The statement above would insert a new record into the Table
Column1 would be assigned a unique value.
Column2 would be set to value1 and Column3 would be set to value2.
*/

CREATE TABLE Table1(
    Column1 dtype IDENTITY(value1, value2) PRIMARY KEY,
    Column2 dtype NOT NULL,
    Column3 dtype,
);

--This statement defines Column1 to be an auto increment primary key

/*
The MS SQL Server uses the identity keyword to perform an auto increment
feature.
in the example above the starting value for identity is 1 and it will
increment by 1 for each new record.
    TIP: to specify that Column1 should start at value3 and increment by
    value4 change it to IDENTITY(value3, value4).
to insert anew record into Table1 we wil not have to specify a value for
Column1 a unique value will be added automatically
*/

INSERT INTO Table1(Column2, Column3)
VALUES ('value3', 'value4');

/*
the MS Access uses the autoincrement keyword to perform an autoincrement
feature.
by default the starting value for autoincrement is 1 and it will increment
by 1 for each new record
    TIP: to specify that Column1 should start at value3 and increment by
    value4 change the autoincrement to AUTOINCREMENT(value3, value4).
to insert a new record into Table1 we will NOT have to specify a value for
Column1 a unique value will be added automatically.
*/

CREATE TABLE Table1 (
    Column1 AUTOINCREMENT PRIMARY KEY,
    Column2 dtype NOT NULL,
    Column3 dtype,
);

INSERT INTO Table1 (Column2, Column3)
VALUES ('value1', 'value2');

/*
in Oracle the code is a bit more tricky.
you wil have to create an autoincrement field with the sequence object
this object generates a number sequence
*/

CREATE SEQUENCE TableSequence
MINVALUE value1
START WITH value1
INCREMENT BY value1
CACHE value2;

/*
the code above creates a sequence object called TableSequence that starts
with value1 and will increment by value1 it will also cache up to value2
values for performance.
the cache option specifies how many sequence values will be stored in memory
for faster access.
to insert a new record into Table1 we wil have to use the nextval function
this function retrieves the next value from TableSequence
*/

INSERT INTO Table1 (Column1, Column2, Column3)
VALUES (TableSequence.nextval, 'value1', 'value2');

/*
the statement avoe would insert a new record into Table1.
Column1 would be assigned the next number from the sequence given and then
Column2 would be assigned value1 and Column3 would be assigned value2
*/