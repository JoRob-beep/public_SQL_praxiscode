create index index_plzort
ON kreditinstitutneu (ort, plz);

drop index index_plzort
ON kreditinstitutneu;
drop index index_arbeitszeit_mitarbeiter
ON arbeitszeit ;
