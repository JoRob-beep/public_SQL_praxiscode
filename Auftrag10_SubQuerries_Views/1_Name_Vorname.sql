SELECT 
    name, vorname
FROM
    mitarbeiter
WHERE
    mitarbeiterid IN (SELECT 
            mitarbeiterid
        FROM
            sachpraemie);