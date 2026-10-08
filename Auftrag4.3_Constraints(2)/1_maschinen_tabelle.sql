create table produktionsmaschinen (
	maschinenID int not null,
    variante int not null,
    bezeichnung varchar(200),
    primary key(maschinenID, variante)
    );