CREATE PROCEDURE solution()
BEGIN
	SELECT id, name, surname
	FROM Suspect
	WHERE NOT
		height > 170
        OR NOT SUBSTRING(name, 1, 1) = 'B'
        OR NOT surname LIKE 'Gre_n'
	ORDER BY
		id ASC;
END