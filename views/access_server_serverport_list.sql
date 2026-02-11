DROP VIEW IF EXISTS `access_server_serverport_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `access_server_serverport_list` AS
     SELECT `sn`.`name` AS `Access Log Server Name`,
            `sp`.`name` AS `Server Port`,
            COUNT(`l`.`id`) AS `Log Count`, 
            SUM(`l`.`reqbytes`) AS `HTTP Bytes`, 
            SUM(`l`.`bytes_sent`) AS `Bytes Sent`, 
            SUM(`l`.`bytes_received`) AS `Bytes Received`,
            SUM(`l`.`bytes_transferred`) AS `Bytes Transferred`,
            MAX(`l`.`reqtime_milli`) AS `Max Request Time`,
            MIN(`l`.`reqtime_milli`) AS `Min Request Time`,
            MAX(`l`.`reqdelay_milli`) AS `Max Delay Time`,
            MIN(`l`.`reqdelay_milli`) AS `Min Delay Time`
       FROM `access_log` `l`
 INNER JOIN `log_server` `sn`
         ON `sn`.`id` = `l`.`serverid`
 INNER JOIN `log_serverport` `sp`
         ON `sp`.`id` = `l`.`serverportid`
   GROUP BY `l`.`serverid`,
            `l`.`serverportid`
   ORDER BY `sn`.`name`,
	          `sp`.`name`;
