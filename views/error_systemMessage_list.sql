DROP VIEW IF EXISTS `error_systemMessage_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_systemMessage_list` AS
     SELECT `ln`.`name` AS `Error Log System Message`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `error_log_systemmessage` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`systemmessageid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
