ALTER TABLE artikelaktuell
ADD CONSTRAINT preis_ck CHECK (preis <1000); 