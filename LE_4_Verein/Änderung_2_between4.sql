CREATE TABLE between4_teams_trainer (
team_id INT NOT NULL,
trainer_id INT NOT NULL,
FOREIGN KEY (team_id) REFERENCES Teams(team_id),
FOREIGN KEY (trainer_id) REFERENCES Trainer(trainer_id));