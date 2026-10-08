CREATE VIEW kunden_umsaetze AS
SELECT 
kunden.vorname,
kunden.nachname,
verkauf.menge,
verkauf.datum
FROM shop_db_gossak.verkauf
JOIN kunden ON kunden.kunden_id = verkauf.artikel_id;

SELECT * FROM kunden_umsaetze;