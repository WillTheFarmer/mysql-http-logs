DROP VIEW IF EXISTS `error_server_serverport_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_server_serverport_list` AS
     SELECT `sn`.`name` AS `Error Log Server Name`,
            `sp`.`name` AS `Server Port`,
            COUNT(`l`.`id`) AS `Log Count` 
       FROM `error_log` `l`
 INNER JOIN `log_server` `sn`
         ON `sn`.`id` = `l`.`serverid`
 INNER JOIN `log_serverport` `sp`
         ON `sp`.`id` = `l`.`serverportid`
   GROUP BY `l`.`serverid`,
            `l`.`serverportid`
   ORDER BY `sn`.`name`,
	          `sp`.`name`;
