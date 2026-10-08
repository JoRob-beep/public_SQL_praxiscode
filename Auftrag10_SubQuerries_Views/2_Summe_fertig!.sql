select name, vorname, gesamtpreis from 
	(select * from 
		(SELECT name, vorname, mitarbeiterid mid
		FROM
		mitarbeiter
		WHERE
		mitarbeiterid IN 
			(SELECT 
			mitarbeiterid
			FROM
			sachpraemie)) ma,
	(SELECT mitarbeiterid, SUM(preis) gesamtpreis
	FROM sachpraemie
	GROUP BY mitarbeiterid) sp
	where ma.mid = sp.mitarbeiterid) gesamt;
    