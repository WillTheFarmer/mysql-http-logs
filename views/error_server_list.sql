DROP VIEW IF EXISTS `error_server_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_server_list` AS
     SELECT `ln`.`name` AS `Error Log Server Name`,
            COUNT(`l`.`id`) AS `Log Count` 
       FROM `log_server` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`serverid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
