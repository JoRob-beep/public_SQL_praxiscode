SELECT fachbuch.titel, fachbereich.fachbereich
FROM fachbuch
JOIN fachbereichfachbuch ON fachbuch.fachbuchID = fachbereichfachbuch.fachbuchID
JOIN fachbereich ON fachbereich.fachbereichID = fachbereichfachbuch.fachbereichID;
