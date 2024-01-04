CREATE TABLE TableName(
    Column1 dtype,
    Column2 dtype,
    Column3 dtype
);

/*Rather simple it just means to save the table with columns the only issue
being the fact that the columns dtypes are separated by a space and not by
a colon or a comma*/

CREATE TABLE newTable AS
SELECT Column1, Column2
FROM oldTable
WHERE Column3 = 'condition';

/*Adding where conditions can determine what goes into your new table but
also sets the default values and dtypes of the old Table to the new Table*/

DROP TABLE Table1;

--Drops the existing table

TRUNCATE TABLE Table1;

--DIFFERENT deletes the content inside the table but not the table itself

ALTER TABLE Table1
ADD Column dtype;

--the most commonly used command changes the tables content

ALTER TABLE Table1
DROP COLUMN Column1;

/*drops a single column*/

ALTER TABLE Table1
RENAME COLUMN oldName to newName_

/*for some reason its not recognizing rename column but as of 142024 it
remains rename*/

ALTER TABLE Table1
ALTER COLUMN Column1 dtype;

ALTER TABLE Table1
MODIFY COLUMN Column dtype;

ALTER TABLE Table1
MODIFY column1 dtype;

/*These are the different ways to alter the dtype of a column with first
SQL server, MYSQL, ORACLE 10G*/

/*NOTE YEAR IS A DTYPE*/