SELECT trainer.trainer_name, ausbildungen.ausbildung
FROM trainer
JOIN between3_trainer_ausbildungen ON trainer.trainer_id = between3_trainer_ausbildungen.trainer_id
JOIN ausbildungen ON between3_trainer_ausbildungen.ausb_id = ausbildungen.ausb_id
ORDER BY ausbildungen.ausbildung, trainer.trainer_name ASC;
