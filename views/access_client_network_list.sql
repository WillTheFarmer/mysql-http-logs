DROP VIEW IF EXISTS `access_client_network_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `access_client_network_list` AS
     SELECT `ca`.`name` AS `Access Client Network`,
            COUNT(`l`.`id`) AS `Log Count`, 
            SUM(`l`.`reqbytes`) AS `HTTP Bytes`, 
            SUM(`l`.`bytes_sent`) AS `Bytes Sent`, 
            SUM(`l`.`bytes_received`) AS `Bytes Received`,
            SUM(`l`.`bytes_transferred`) AS `Bytes Transferred`,
            MAX(`l`.`reqtime_milli`) AS `Max Request Time`,
            MIN(`l`.`reqtime_milli`) AS `Min Request Time`,
            MAX(`l`.`reqdelay_milli`) AS `Max Delay Time`,
            MIN(`l`.`reqdelay_milli`) AS `Min Delay Time`
       FROM `log_client_network` `ca`
 INNER JOIN `log_client` `c` 
         ON `c`.`networkid` = `ca`.`id`
 INNER JOIN `access_log` `l` 
         ON `l`.`clientid` = `c`.`id`
   GROUP BY `ca`.`name`
   ORDER BY `ca`.`name`;
