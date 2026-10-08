CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `abfrage2` AS
    SELECT 
        `ausbildungen`.`ausbildung` AS `ausbildung`,
        `trainer`.`trainer_name` AS `trainer_name`
    FROM
        ((`trainer`
        JOIN `between3_trainer_ausbildungen` ON ((`trainer`.`trainer_id` = `between3_trainer_ausbildungen`.`trainer_id`)))
        JOIN `ausbildungen` ON ((`between3_trainer_ausbildungen`.`ausb_id` = `ausbildungen`.`ausb_id`)))
    ORDER BY `ausbildungen`.`ausbildung` , `trainer`.`trainer_name`