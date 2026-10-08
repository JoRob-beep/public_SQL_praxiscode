SELECT ausleihe.von, ausleihe.bis, fachbuch.isbn, fachbuch.titel FROM ausleihe
JOIN fachbuch ON ausleihe.fachbuchid = fachbuch.fachbuchid;
