INSERT INTO genre (genre_id, genre) VALUES
(1, 'Rock'),
(2, 'Pop'),
(3, 'Jazz'),
(4, 'Hip-Hop'),
(5, 'Klassik');


INSERT INTO artist (artist_id, interp) VALUES
(1, 'The Beatles'),
(2, 'Adele'),
(3, 'Miles Davis'),
(4, 'Kanye West'),
(5, 'Ludwig van Beethoven');


INSERT INTO cd (cd_id, cd_name, genre_id) VALUES
(1, 'Abbey Road', 1),
(2, '21', 2),
(3, 'Kind of Blue', 3),
(4, 'Graduation', 4),
(5, 'Symphony No. 9', 5);


INSERT INTO titel (titel_id, titel, rating, titel_num) VALUES
(1, 'Come Together', 5, 1),
(2, 'Rolling in the Deep', 4, 2),
(3, 'So What', 5, 3),
(4, 'Stronger', 4, 4),
(5, 'Ode to Joy', 5, 5),
(6, 'Strawberry-fields forever', 4, 6),
(7, 'easy on me', 5, 7),
(8, 'So What', 5, 8),
(9, 'Champion', 5, 9),
(10, 'Molto vivace', 2, 10); 

INSERT INTO between1_titel_cd (titel_id, cd_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5),
(6, 1),
(7, 2),
(8, 3),
(9, 4),
(10, 5);

INSERT INTO between2_cd_artist (artist_id, cd_id) VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4),
(5, 5);
