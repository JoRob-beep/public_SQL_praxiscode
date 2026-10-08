select spieler.name, teams.team_name FROM spieler
Join between1_spieler_teams b ON spieler.spieler_id = b.spieler_id
JOIN teams ON teams.team_id = b.team_id
ORDER BY spieler.name ASC;
