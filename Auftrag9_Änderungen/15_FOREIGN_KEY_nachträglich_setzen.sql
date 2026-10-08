ALTER TABLE positionartikel
ADD CONSTRAINT fk_artikelid FOREIGN KEY (fk_artikelinfo_artikelid) REFERENCES artikelinfo(artikelid);
 
