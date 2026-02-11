DROP VIEW IF EXISTS `error_message_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_message_list` AS
     SELECT `ln`.`name` AS `Error Log Message`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `error_log_message` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`logmessageid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
