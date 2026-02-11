DROP VIEW IF EXISTS `error_referer_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_referer_list` AS
     SELECT `ln`.`name` AS `Error Log Referer`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `log_referer` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`refererid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
