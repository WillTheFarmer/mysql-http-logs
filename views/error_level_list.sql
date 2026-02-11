DROP VIEW IF EXISTS `error_level_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_level_list` AS
     SELECT `ln`.`name` AS `Error Log Level`, 
            COUNT(`l`.`id`) AS `Log Count`
       FROM `error_log_level` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`loglevelid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
