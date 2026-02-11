DROP VIEW IF EXISTS `import_file_error_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `import_file_error_list` AS
     SELECT `ln`.`name` AS `Import File`, 
            COUNT(`l`.`id`) AS `Log Count`
       FROM `import_file` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`importfileid` = `ln`.`id`
   GROUP BY `ln`.`name`
   ORDER BY `ln`.`name`;
