CREATE USER 'robert'@'localhost' IDENTIFIED BY 'secret';
GRANT ALL PRIVILEGES ON uebungsdatenbank.* TO 'robert'@'localhost';
GRANT SELECT, INSERT, UPDATE, delete ON uebungsdatenbank.artikel TO robert;