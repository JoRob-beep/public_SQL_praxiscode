CREATE USER 'maria'@'localhost' IDENTIFIED BY 'secret';
CREATE USER 'franz'@'localhost' IDENTIFIED BY 'secret';
GRANT vertrieb TO 'maria'@'localhost';
GRANT vertrieb TO 'franz'@'localhost';
SET DEFAULT ROLE vertrieb TO 'maria'@'localhost';
SET DEFAULT ROLE vertrieb TO 'franz'@'localhost';


