DROP VIEW IF EXISTS `error_serverport_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_serverport_list` AS
     SELECT `ln`.`name` AS `Error Log Server Port`,
            COUNT(`l`.`id`) AS `Log Count` 
       FROM `log_serverport` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`serverportid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
