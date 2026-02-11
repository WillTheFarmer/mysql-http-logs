DROP VIEW IF EXISTS `error_importfile_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_importfile_list` AS
     SELECT `ln`.`name` AS `Error Log Import File`, 
            COUNT(`l`.`id`) AS `Log Count`
       FROM `import_file` `ln`
 INNER JOIN `error_log` `l` 
         ON `l`.`importfileid` = `ln`.`id`
   GROUP BY `ln`.`id`
   ORDER BY `ln`.`name`;
