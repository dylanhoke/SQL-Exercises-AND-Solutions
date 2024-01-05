/*
SQL Injection is a code injection technique that might destroy your database.
SQL Injection is one of the most common web hacking techniques.
SQL Injection is the placement of malicious code in SQL statements via web
page input. SQL Injectionoccurs when you ask a user for input like their
username and instead of a name the user gives you an SQL statement that you
will unknowingly run on your database look at the following example which
creates a SELECT statement by adding a variable to a select string. The
variable is fetched from user input
*/

txtUserId = getRequestedString("UserID")
txtSQL = "SELECT * FROM Users WHERE UserID = " + txtUserID;

/*
the rest of this chapter described the potential dangers of using input SQL
statements look at the exapmple above again. the original purpose of the
code was to create a SQL statement to select a user with a given user ID.
if therer is nothing to prevcent a user from entering WRONG input the user
can enter smart input like this
*/

SELECT * FROM Users WHERE UserID = 105 OR 1=1;

/*
The SQL above is valid and wil return all rows from the users table since
OR 1=1 is always TRUE.
does the example above look dangerous what if the users table contains
names and passwords?
the SQL statement above is much the same as this:
*/

SELECT UserID, Name, Password FROM Users WHERE UserID = 105 OR 1=1;

--A hacked might get access to all the user names and passwords in a
--database, by simply inserting 105 or 1=1 into the input field.

/*
SQL INJECTION BASED ON "=" is ALWAYS TRUE

uName = getRequestString("username");
uPass = getRequestSTring("userPassword");
*/

SQL = 'SELECT * FROM Users WHERE Name ="' + uName + '" AND Pass ="' + uPass + '"'

SELECT * FROM Users WHERE Name = "John Doe" AND Pass = "myPass"


/*
A hacker might get access to user names and passowrds in a database by simply
inserting " OR ""=" into the user name or password text box
*/

SELECT * FROM Users WHERE Name = "" OR ""="" AND Pass ="" OR ""=""

/*
The SQL above is valid and will return all rows from the users table since or ""=""
is always TRUE
*/

-- SQL Injection Based on Batched SQL Statements 
-- Most databases support batched SQL statement.

-- A batch of SQL statements is a group of two or more SQL statements, separated by semicolons.

-- The SQL statement below will return all rows from the "Users" table, then delete the "Suppliers" table.

-- Example

SELECT * FROM Users; DROP TABLE Suppliers

-- Look at the following example:

-- Example

txtUserId = getRequestString("UserId");
txtSQL = "SELECT * FROM Users WHERE UserId = " + txtUserId;

-- And the following input:

-- User id: 
-- 105; DROP TABLE Suppliers

-- The valid SQL statement would look like this:

-- Result

SELECT * FROM Users WHERE UserId = 105; DROP TABLE Suppliers;

-- Use SQL Parameters for Protection
-- To protect a web site from SQL injection, you can use SQL parameters.

-- SQL parameters are values that are added to an SQL query at execution time, in a controlled manner.

-- ASP.NET Razor Example

txtUserId = getRequestString("UserId");
txtSQL = "SELECT * FROM Users WHERE UserId = @0";
db.Execute(txtSQL,txtUserId);

-- Note that parameters are represented in the SQL statement by a @ marker.

-- The SQL engine checks each parameter to ensure that it is correct for its column and are treated literally, and not as part of the SQL to be executed.

-- Another Example

txtNam = getRequestString("CustomerName");
txtAdd = getRequestString("Address");
txtCit = getRequestString("City");
txtSQL = "INSERT INTO Customers (CustomerName,Address,City) Values(@0,@1,@2)";
db.Execute(txtSQL,txtNam,txtAdd,txtCit);

-- Examples
-- The following examples shows how to build parameterized queries in some common web languages.

-- SELECT STATEMENT IN ASP.NET:

txtUserId = getRequestString("UserId");
sql = "SELECT * FROM Customers WHERE CustomerId = @0";
command = new SqlCommand(sql);
command.Parameters.AddWithValue("@0",txtUserId);
command.ExecuteReader();

-- INSERT INTO STATEMENT IN ASP.NET:

txtNam = getRequestString("CustomerName");
txtAdd = getRequestString("Address");
txtCit = getRequestString("City");
txtSQL = "INSERT INTO Customers (CustomerName,Address,City) Values(@0,@1,@2)";
command = new SqlCommand(txtSQL);
command.Parameters.AddWithValue("@0",txtNam);
command.Parameters.AddWithValue("@1",txtAdd);
command.Parameters.AddWithValue("@2",txtCit);
command.ExecuteNonQuery();

-- INSERT INTO STATEMENT IN PHP:

$stmt = $dbh->prepare("INSERT INTO Customers (CustomerName,Address,City)
VALUES (:nam, :add, :cit)");
$stmt->bindParam(':nam', $txtNam);
$stmt->bindParam(':add', $txtAdd);
$stmt->bindParam(':cit', $txtCit);
$stmt->execute();