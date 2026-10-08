alter table produktionsmaschinen
modify column laufzeit INT CHECK (maxlaufzeit > laufzeit);