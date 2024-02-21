CREATE PROCEDURE solution()
BEGIN
	CREATE TABLE tempTable AS
	SELECT
		Name,
		ID,
		0.25 * Midterm1 + 0.25 * Midterm2 + 0.5 * Final AS Option1, 
		0.5 * Midterm1 + 0.5 * Midterm2 AS Option2,
		Final AS Option3
	FROM Grades;
	
	
	SELECT Name, ID
	FROM tempTable
	WHERE GREATEST(Option1, Option2, Option3) = Option3
	AND NOT (Option1 = Option2 AND Option2 = Option3)
	ORDER BY  
			 SUBSTRING(Name, 1, 3) ASC,
			 ID ASC;
	DROP TABLE tempTable;
END