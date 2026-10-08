SELECT v.menge, v.datum, l.name FROM lieferanten l
inner join verkauf v on l.lieferanten_id = v.lieferanten_id;