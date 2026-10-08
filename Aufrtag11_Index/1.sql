create index index_arbeitszeit_mitarbeiter
ON arbeitszeit (arbeitszeitid, arbeitstag, jahr, monat, tag, kommen, gehen, anzahlstunden, mitarbeiterid);
