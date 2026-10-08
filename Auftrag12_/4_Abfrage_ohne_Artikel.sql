SELECT * FROM shop_db_gossak.artikel
JOIN verkauf ON artikel.artikel_id = verkauf.artikel_id
where artikel.artikel_id != 1;