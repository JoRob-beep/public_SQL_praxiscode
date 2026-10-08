CREATE VIEW v_praemie AS
SELECT 
	mitarbeiter.name,
    mitarbeiter.vorname,
    sachpraemie.praemie,
    sachpraemie.grund
FROM 
	mitarbeiter
INNER JOIN sachpraemie On mitarbeiter.mitarbeiterid = sachpraemie.praemieid;
    