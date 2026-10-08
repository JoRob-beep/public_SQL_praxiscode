alter table mageschenk
modify artikel varchar(200) not null unique;
INSERT INTO mageschenk (geschenkID, artikel, preis, jahrzugehörigkeit)
VALUES 
  (1, 'Uhr', 150, 1985),
  (2, 'Zeitschrift', 25, 1990);

