DROP VIEW IF EXISTS `error_processid_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_processid_list` AS
     SELECT `ln`.`name` AS `Error Log ProcessID`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `error_log_processid` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`processid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
