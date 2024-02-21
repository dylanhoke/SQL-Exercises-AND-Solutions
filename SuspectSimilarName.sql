CREATE PROCEDURE solution()
BEGIN
	SELECT id, name, surname
	FROM Suspect
	WHERE
		height <= 170
		AND SUBSTRING(name, 1, 1) = 'B'
		AND surname LIKE 'Gre_n'
	ORDER BY
		id ASC;
	
END