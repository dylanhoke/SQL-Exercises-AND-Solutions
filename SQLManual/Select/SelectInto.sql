SELECT Column|Columns|*
INTO NewTable [IN externaldb]
FROM OldTable
WHERE condition;

--The select into statement dopies data from one table into a new table
--The new table will have the exact same column names if you do not use
--AS to create new column names

SELECT * INTO TableBackup
FROM Table;

--This will create a backup for the table so you can see what changes
--have been made

SELECT * INTO TableBackup IN 'backup.db'
FROM Table;

--this will save a backup table into another database

SELECT Column|Columns INTO TableBackup
FROM Table;

--this will only save specified columns to the back up table

SELECT Column|Columns|* INTO TableBackup
FROM Table
WHERE Column = 'condition';

--you can also add conditional statements to the backup to save
--original values in a new backup table

SELECT Table1.Column1, Table2.Column2
INTO TableBackup
FROM Table
LEFT JOIN Table2 ON Table1.matchedColumn = Table2.matchedColumn

--you can also save information from two tables merged into a new table
--using left join to put table2 on table1 where table 1 matches
--adding table1 column1 and table2 column2 in order of matchColumn
--into the new table

SELECT * INTO NewTable
FROM OldTable
WHERE 1 = 0;