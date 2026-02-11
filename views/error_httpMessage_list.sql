DROP VIEW IF EXISTS `error_httpMessage_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_httpMessage_list` AS
     SELECT `ln`.`name` AS `Error Log http Message`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `error_log_httpmessage` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`httpmessageid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
