START TRANSACTION;
SELECT lagerbestand FROM Artikel WHERE artikel_id = 1 FOR UPDATE;
UPDATE Artikel SET lagerbestand = lagerbestand - 1 WHERE artikel_id = 1;
INSERT INTO Verkauf (kunden_id, artikel_id, menge, datum) 
VALUES (1, 1, 1, CURDATE());
COMMIT;
