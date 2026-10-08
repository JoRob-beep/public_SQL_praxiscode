CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `abfrage3` AS
    SELECT 
        `spieler`.`name` AS `name`,
        `trainer`.`trainer_name` AS `trainer_name`
    FROM
        ((`trainer`
        JOIN `between2_spieler_trainer` `b` ON ((`trainer`.`trainer_id` = `b`.`trainer_id`)))
        JOIN `spieler` ON ((`b`.`spieler_id` = `spieler`.`spieler_id`)))