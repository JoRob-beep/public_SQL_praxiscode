START TRANSACTION;
INSERT INTO Kunden (kunden_id, vorname, nachname, straße, hausnummer, postleitzahl, stadt, telefonnummer, email)
VALUES (6, 'Max', 'Müller', 'Musterstraße', '12', '10115', 'Berlin', '030-1234567', 'max.mueller@example.de');
SET @neue_kunde_id = LAST_INSERT_ID();
INSERT INTO Verkauf (verkauf_id, kunden_id, artikel_id, menge, datum)
VALUES (6, @neue_kunde_id, 1, 1, CURDATE());
COMMIT;
