DROP VIEW IF EXISTS `access_period_hour_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `access_period_hour_list` AS
     SELECT YEAR(l.logged) 'Year',
            MONTH(l.logged) 'Month',
            DAY(l.logged) 'Day',
            HOUR(l.logged) 'Hour',
            COUNT(`l`.`id`) AS `Log Count`, 
            SUM(`l`.`reqbytes`) AS `HTTP Bytes`, 
            SUM(`l`.`bytes_sent`) AS `Bytes Sent`, 
            SUM(`l`.`bytes_received`) AS `Bytes Received`,
            SUM(`l`.`bytes_transferred`) AS `Bytes Transferred`,
            MAX(`l`.`reqtime_milli`) AS `Max Request Time`,
            MIN(`l`.`reqtime_milli`) AS `Min Request Time`,
            MAX(`l`.`reqdelay_milli`) AS `Max Delay Time`,
            MIN(`l`.`reqdelay_milli`) AS `Min Delay Time`
       FROM access_log l
   GROUP BY YEAR(l.logged),
            MONTH(l.logged),
            DAY(l.logged),
            HOUR(l.logged)
   ORDER BY 'Year',
            'Month',
            'Day',
            'Hour';
   