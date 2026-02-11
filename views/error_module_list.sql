DROP VIEW IF EXISTS `error_module_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_module_list` AS
     SELECT `ln`.`name` AS `Error Log Module`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `error_log_module` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`moduleid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
