drop table produktionsmaschinen;
create table produktionsmaschinen (
	globalID int primary key, 
    maschinenID int unique, 
	variante int unique,
    bezeichnung varchar(200));

insert into produktionsmaschinen(globalID, maschinenID, variante, bezeichnung)
values (1, 1, 1, 'Bohraufsatz'),
	(2, 2, 2, 'Bohraufsatz'),
    (3, 3, 3, 'Bohraufsatz'),
    (4, 4, 4, 'Bohraufsatz');