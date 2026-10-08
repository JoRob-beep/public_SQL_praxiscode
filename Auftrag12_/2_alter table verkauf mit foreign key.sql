ALTER TABLE verkauf
ADD CONSTRAINT fk_kunden_id
FOREIGN KEY (kunden_id) REFERENCES kunden(kunden_id);