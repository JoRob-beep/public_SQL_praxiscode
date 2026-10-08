
INSERT INTO Teams (team_name, team_level) VALUES 
('Herren 1', 'Oberliga'),
('Herren 2', 'Bezirksliga'),
('Damen 1', 'Landesliga'),
('Jugend A', 'A-Jugend'),
('Jugend B', 'B-Jugend');

INSERT INTO Trainer (trainer_name, trainer_gehalt, trainer_level) VALUES 
('Hans Müller', 2500.00, 9.2),
('Sarah Schmidt', 2800.00, 9.5),
('Michael Weber', 2200.00, 8.8),
('Anna Bauer', 1800.00, 8.0);

INSERT INTO Ausbildungen (ausbildung) VALUES 
('C-Lizenz Trainer'),
('B-Lizenz Trainer'),
('A-Lizenz Trainer'),
('Jugendtrainer Lizenz'),
('Erste Hilfe Kurs'),
('Sportpsychologie Grundkurs'),
('Ernährungsberatung Lizenz');

INSERT INTO Spieler (name, level, jahresbeitrag, gezahlte_stunden) VALUES 
('Max Mustermann', 8.5, 350.00, 45.5),
('Lisa Wagner', 7.2, 320.00, 38.0),
('Tom Fischer', 9.1, 380.00, 52.0),
('Nina Keller', 6.8, 300.00, 35.5),
('Paul Richter', 8.0, 340.00, 42.0),
('Emma Braun', 7.5, 330.00, 40.0),
('Felix Schneider', 8.8, 360.00, 48.5),
('Lena Hofmann', 7.9, 335.00, 41.5),
('Jonas Beck', 7.0, 310.00, 36.0),
('Mia Zimmermann', 8.3, 355.00, 46.0);

INSERT INTO between1_spieler_teams (team_id, spieler_id) VALUES 
(1, 1), (1, 3), (1, 5), (1, 7),    -- Herren 1
(2, 2), (2, 4), (2, 9),            -- Herren 2
(3, 2), (3, 6), (3, 8), (3, 10),   -- Damen 1
(4, 1), (4, 3), (4, 5),            -- Jugend A
(5, 4), (5, 7), (5, 9);            -- Jugend B

INSERT INTO between2_spieler_trainer (spieler_id, trainer_id) VALUES 
(1, 1), (1, 2),  
(2, 2), (2, 3), 
(3, 1), (3, 4),  
(4, 2), (4, 3),
(5, 1), (5, 4),
(6, 2), (6, 3), 
(7, 1), (7, 4), 
(8, 3), (8, 2), 
(9, 3), (9, 4), 
(10, 2);         

INSERT INTO between3_trainer_ausbildungen (trainer_id, ausb_id) VALUES 
(1, 1), (1, 2), (1, 5), (1, 6),  
(2, 1), (2, 3), (2, 5), (2, 7),  
(3, 1), (3, 4), (3, 5), (3, 6), 
(4, 4), (4, 5), (4, 6);         
