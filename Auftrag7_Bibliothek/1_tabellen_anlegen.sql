create table verlag (verlagID int not null primary key, verlag varchar(200) not null);
insert into verlag (verlagID, verlag)
values (1, 'Programmier Verlag'),
	(2, 'IT Technik Verlag'),
	(3, 'Elektrotechnik Verlag'),
    (4, 'Automatisierung Verlag'),
    (5, 'Medien Verlag');
    
create table fachbereich (fachbereichID int not null primary key, fachbereich varchar(200) not null);
insert into fachbereich (fachbereichID, fachbereich)
values (1, 'Applikationsentwicklung'),
	(2, 'It Technik'),
	(3, 'Elektrotechnik'),
    (4, 'Automatisierungstechnik');

create table fachbuch (fachbuchID int not null primary key, isbn int, titel varchar(200) not null, verlagID int not null,FOREIGN KEY (verlagID) REFERENCES verlag(verlagID));
insert into fachbuch (fachbuchID, isbn, titel, verlagID)
values (1, 1111, 'Applikationsentwicklung Fundamentals', 1),
	(2, 2222, 'Applikationsentwicklung Advancend', 1),
    (3, 3333, 'IT Technik Betriebstechnik Fundamentals', 2),
    (4, 4444, 'IT Technik Betriebstechnik Advanced', 2),
    (5, 5555, 'IT Technik Systemtechnik Fundamentals', 2),
    (6, 6666, 'IT Technik Systemtechnik Advanced', 2),
    (7, 7777, 'Elektrotechnik 1', 3),
    (8, 8888, 'Elektrotechnik 2', 3),
    (9, 9999, 'Robotik', 4);

create table fachbereichfachbuch (fachbereichID int not null, fachbuchID int not null, FOREIGN KEY (fachbereichID) REFERENCES fachbereich(fachbereichID), FOREIGN KEY (fachbuchID) REFERENCES fachbuch(fachbuchID));
insert into fachbereichfachbuch (fachbereichID, fachbuchID)
values (1, 1),
	(1, 2),
	(2, 3),
    (2, 4),
    (2, 5),
    (2, 6),
    (3, 7),
    (3, 8),
    (4, 9);