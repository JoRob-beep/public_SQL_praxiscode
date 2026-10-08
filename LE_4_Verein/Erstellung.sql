CREATE DATABASE sportverein;
USE sportverein;

CREATE TABLE Teams (
team_id INT AUTO_INCREMENT PRIMARY KEY,
team_name VARCHAR(100) NOT NULL,
team_level VARCHAR(100));

CREATE TABLE Spieler (
spieler_id INT AUTO_INCREMENT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
level FLOAT,
jahresbeitrag FLOAT,
gezahlte_stunden FLOAT);

CREATE TABLE Trainer (
trainer_id INT AUTO_INCREMENT PRIMARY KEY,
trainer_name VARCHAR(100) NOT NULL,
trainer_gehalt FLOAT NOT NULL,
trainer_level FLOAT NOT NULL);

CREATE TABLE Ausbildungen (
ausb_id INT AUTO_INCREMENT PRIMARY KEY,
ausbildung VARCHAR(200) NOT NULL);

CREATE TABLE between1_spieler_teams (
team_id INT NOT NULL,
spieler_id INT NOT NULL,
FOREIGN KEY (team_id) REFERENCES Teams(team_id),
FOREIGN KEY (spieler_id) REFERENCES Spieler(spieler_id));

CREATE TABLE between2_spieler_trainer (
spieler_id INT NOT NULL,
trainer_id INT NOT NULL,
FOREIGN KEY (spieler_id) REFERENCES Spieler(spieler_id),
FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id));

CREATE TABLE between3_trainer_ausbildungen (
trainer_id INT NOT NULL,
ausb_id INT NOT NULL,
FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id),
FOREIGN KEY (ausb_id) REFERENCES Ausbildungen(ausb_id));