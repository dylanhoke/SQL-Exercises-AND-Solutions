CASE
    WHEN condition1 THEN specific1
    WHEN condition2 THEN specific2
    WHEN condition3 THEN specific3
END;

--This is an if statement basically that can handle a series of conditions
--and related outputs

SELECT Column2, Column4
CASE
    WHEN Column4 > Value THEN 'condition'
    WHEN Column4 = Value THEN 'Value'
    ELSE 'Value condition'
END AS newColumn
FROM Table;

--this will check each value in the columns and apply them appropriately
--creating a new column called newColumn with the string values or numer-
--ical value specified

SELECT Column1, Column2, Column3
FROM Table
ORDER BY
(CASE
    WHEN Column2 IS NULL THEN Column3
    ELSE Column2
END);