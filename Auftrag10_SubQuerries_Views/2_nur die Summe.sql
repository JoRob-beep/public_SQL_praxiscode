SELECT mitarbeiterid, SUM(preis)
FROM sachpraemie
GROUP BY mitarbeiterid
