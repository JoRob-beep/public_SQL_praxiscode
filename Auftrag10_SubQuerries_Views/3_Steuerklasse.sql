SELECT 
    name, vorname, steuerklasse
FROM
    mitarbeiter
WHERE
    mitarbeiter.steuerklasse 
NOT IN (SELECT 
	steuerklassezahl
    FROM
    steuerklasse);