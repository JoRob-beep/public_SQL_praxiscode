create table ausleihe (ausleiheID int, exemplarID int, von date, bis date, isbn int, titel varchar(200), fachbuchID int,
foreign key(fachbuchID) references fachbuch(fachbuchID));

insert into ausleihe(ausleiheID, exemplarID, von, bis, isbn, titel, fachbuchID)
values (1,1, '2025-04-13','2025-04-20', 1111, 'Applikationsentwicklung Fundamentals', 1),
	(2,1, '2025-04-20','2025-04-25', 1111, 'Applikationsentwicklung Fundamentals', 1),
    (3,5, '2025-04-13','2025-04-21', 4444, 'IT Technik Betriebstechnik Advanced', 4);

/*  Spalten sollen nicht doppelt in einer Datenbank sein!  Also ISBN und Titel sollen nur in faschbuch stehen */
/*  Angabe war hier falsch  */