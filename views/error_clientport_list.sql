DROP VIEW IF EXISTS `error_clientport_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_clientport_list` AS
     SELECT `ln`.`name` AS `Error Log Client Port`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `log_clientport` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`clientportid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
