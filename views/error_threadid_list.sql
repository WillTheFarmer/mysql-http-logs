DROP VIEW IF EXISTS `error_threadid_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_threadid_list` AS
     SELECT `ln`.`name` AS `Error Log ThreadID`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `error_log_threadid` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`threadid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
