SELECT * FROM shop_db_gossak.kunden
INNER JOIN verkauf v ON kunden.kunden_id = v.kunden_id
where kunden.kunden_id != 1;