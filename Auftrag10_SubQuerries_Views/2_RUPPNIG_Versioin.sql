SELECT ma.name, ma.vorname, ma.mitarbeiterid, sp.gesamtpreis
FROM mitarbeiter ma
JOIN (
    SELECT sachpraemie.mitarbeiterid, SUM(preis) AS gesamtpreis
    FROM sachpraemie
    GROUP BY mitarbeiterid
) sp ON sp.mitarbeiterid = ma.mitarbeiterid;