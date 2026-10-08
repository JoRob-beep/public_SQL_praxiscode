SELECT 
artikel.bezeichnung AS Artikelbezeichnung,
artikel.beschreibung, 
lieferanten.name AS LieferantenName
FROM shop_db_gossak.verkauf
JOIN artikel ON artikel.artikel_id = verkauf.artikel_id
JOIN lieferanten ON lieferanten.lieferanten_id = verkauf.lieferanten_id;