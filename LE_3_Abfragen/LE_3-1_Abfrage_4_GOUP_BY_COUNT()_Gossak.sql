SELECT COUNT(titel.titel), genre.genre
FROM cd
JOIN between1_titel_cd b ON cd.cd_id = b.cd_id
JOIN titel ON titel.titel_id = b.titel_id
join between2_cd_artist b2 ON cd.cd_id = b2.cd_id
JOIN artist ON artist.artist_id = b2.artist_id
JOIN genre ON cd.genre_id = genre.genre_id
GROUP BY genre;