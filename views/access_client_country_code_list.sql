DROP VIEW IF EXISTS `access_client_country_code_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `access_client_country_code_list` AS
     SELECT `ca`.`country_code` AS `Access Client Country Code`,
            COUNT(`l`.`id`) AS `Log Count`, 
            SUM(`l`.`reqbytes`) AS `HTTP Bytes`, 
            SUM(`l`.`bytes_sent`) AS `Bytes Sent`, 
            SUM(`l`.`bytes_received`) AS `Bytes Received`,
            SUM(`l`.`bytes_transferred`) AS `Bytes Transferred`,
            MAX(`l`.`reqtime_milli`) AS `Max Request Time`,
            MIN(`l`.`reqtime_milli`) AS `Min Request Time`,
            MAX(`l`.`reqdelay_milli`) AS `Max Delay Time`,
            MIN(`l`.`reqdelay_milli`) AS `Min Delay Time`
       FROM `log_client_country` `ca`
 INNER JOIN `log_client` `c` 
         ON `c`.`countryid` = `ca`.`id`
 INNER JOIN `access_log` `l` 
         ON `l`.`clientid` = `c`.`id`
   GROUP BY `ca`.`country_code`
   ORDER BY `ca`.`country_code`;
