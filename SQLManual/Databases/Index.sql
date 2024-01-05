CREATE INDEX indexName
ON Table1 (Column, Columns);

--Where duplicates are allowed

CREATE UNIQUE INDEX indexName
ON Table1 (Column, Columns)

--Where duplicate values are not allowed

/*
the create index statement is used to create indexes on tables
indexes are used to retrieve data fromt he datatbase more quickly than
otherwise the users cannot see the indexes they are just used to speed
up searches/queries
*/

DROP INDEX indexName ON Table1;

--MSAccess

DROP INDEX Table1.indexName;

--SQL Server

DROP INDEX indexName;

--DB2 Oracle

ALTER TABLE Table1
DROP INDEX indexName;

--MySQL