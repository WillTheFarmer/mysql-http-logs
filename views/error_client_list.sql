DROP VIEW IF EXISTS `error_client_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_client_list` AS
     SELECT `ln`.`name` AS `Error Log Client Name`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `log_client` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`clientid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
