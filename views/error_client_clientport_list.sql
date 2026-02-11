DROP VIEW IF EXISTS `error_client_clientport_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_client_clientport_list` AS
     SELECT `cn`.`name` AS `Error Log Server Name`,
            `cp`.`name` AS `Server Port`,
            COUNT(`l`.`id`) AS `Log Count` 
       FROM `error_log` `l`
 INNER JOIN `log_client` `cn`
         ON `cn`.`id` = `l`.`clientid`
 INNER JOIN `log_clientport` `cp`
         ON `cp`.`id` = `l`.`clientportid`
   GROUP BY `l`.`clientid`,
            `l`.`clientportid`
   ORDER BY `cn`.`name`,
            `cp`.`name`;
