CREATE PROCEDURE solution()
BEGIN
	UPDATE scholarships
	SET scholarship = scholarship / 12;
	SELECT * FROM scholarships;
END