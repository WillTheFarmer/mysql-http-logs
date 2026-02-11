DROP VIEW IF EXISTS `error_httpCode_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_httpCode_list` AS
     SELECT `ln`.`name` AS `Error Log http Code`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `error_log_httpcode` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`httpcodeid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
