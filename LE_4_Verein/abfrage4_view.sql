CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `abfrage4` AS
    SELECT 
        `trainer`.`trainer_name` AS `trainer_name`,
        `teams`.`team_name` AS `team_name`
    FROM
        ((`teams`
        JOIN `between4_teams_trainer` ON ((`teams`.`team_id` = `between4_teams_trainer`.`team_id`)))
        JOIN `trainer` ON ((`between4_teams_trainer`.`trainer_id` = `trainer`.`trainer_id`)))