CREATE DATABASE DatabaseName;

--Simple just create command type and name

DROP DATABASE DatabaseName;

--Simple just drop command type and name

BACKUP DATABASE DatabaseName
TO DISK = 'FilePath';

/*simple backup command type name and then determine where the backup will
be saved*/

BACKUP DATABASE DatabaseName
TO DISK = 'FilePath'
WITH DIFFERENTAL;

/*a differential back up only backs up the parts of the database that have
changed since the last full database backup*/