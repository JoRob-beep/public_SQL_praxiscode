START TRANSACTION;
UPDATE artikel
SET preis = 16
WHERE artikel_id = 3;
COMMIT;
