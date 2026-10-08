SELECT 
verkauf.menge,
verkauf.datum,
artikel.bezeichnung,
artikel.beschreibung, 
artikel.preis,
artikel.lagerbestand,
lieferanten.name AS LieferantenName,
lieferanten.straße,
lieferanten.postleitzahl,
lieferanten.stadt,
lieferanten.telefonnummer,
lieferanten.email,
kunden.vorname AS KundenVorname,
kunden.nachname AS KundenName
FROM shop_db_gossak.verkauf
JOIN artikel ON artikel.artikel_id = verkauf.artikel_id
JOIN lieferanten ON lieferanten.lieferanten_id = verkauf.lieferanten_id
JOIN kunden ON kunden.kunden_id = verkauf.kunden_id;