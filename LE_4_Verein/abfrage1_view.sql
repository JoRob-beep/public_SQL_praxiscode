CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `abfrage1` AS
    SELECT 
        `spieler`.`name` AS `name`,
        `teams`.`team_name` AS `team_name`
    FROM
        ((`spieler`
        JOIN `between1_spieler_teams` `b` ON ((`spieler`.`spieler_id` = `b`.`spieler_id`)))
        JOIN `teams` ON ((`teams`.`team_id` = `b`.`team_id`)))
    ORDER BY `spieler`.`name`