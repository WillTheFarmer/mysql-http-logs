DROP VIEW IF EXISTS `error_systemCode_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_systemCode_list` AS
     SELECT `ln`.`name` AS `Error Log System Code`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `error_log_systemcode` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`systemcodeid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
