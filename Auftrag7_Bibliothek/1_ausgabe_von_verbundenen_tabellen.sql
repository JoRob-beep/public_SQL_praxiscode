select fachbuch.titel, fachbuch.isbn, verlag.verlagID from fachbuch
join verlag on verlag.verlagID = fachbuch.verlagID
