SELECT 
    name, vorname, steuerklasse
FROM
    mitarbeiter
WHERE NOT EXISTS (SELECT 
	steuerklassezahl
    FROM
    steuerklasse
    where mitarbeiter.steuerklasse = steuerklasse.steuerklassezahl);