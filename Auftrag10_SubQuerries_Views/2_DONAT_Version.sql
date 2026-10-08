SELECT
	mitarb.name,
    mitarb.vorname,
    SUM(sach.preis) AS preis
FROM	
	mitarbeiter AS mitarb
INNER JOIN
	sachpraemie AS sach
    ON mitarb.mitarbeiterid = sach.mitarbeiterid
GROUP BY mitarb.mitarbeiterid;