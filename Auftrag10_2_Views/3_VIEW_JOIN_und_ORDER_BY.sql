CREATE VIEW v_mitarbeiterbonus AS
SELECT 	name,
		vorname,
        bonuszahlung
FROM 
	mitarbeiter m
INNER JOIN bonus b On m.mitarbeiterid = b.mitarbeiterid
ORDER BY bonuszahlung ASC;
    