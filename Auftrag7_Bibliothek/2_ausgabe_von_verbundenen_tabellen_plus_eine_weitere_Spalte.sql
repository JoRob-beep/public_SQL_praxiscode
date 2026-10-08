select fachbuch.titel, fachbuch.isbn, verlag.verlagID, verlag.verlag from fachbuch
join verlag on verlag.verlagID = fachbuch.verlagID;