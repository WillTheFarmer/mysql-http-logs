DROP VIEW IF EXISTS `error_processid_threadid_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_processid_threadid_list` AS
     SELECT `pid`.`name` AS `ProcessID`,
            `tid`.`name` AS `ThreadID`,
            COUNT(`l`.`id`) AS `Log Count`
       FROM `error_log` `l`
 INNER JOIN `error_log_processid` `pid`
         ON `l`.`processid` = `pid`.`id`
 INNER JOIN `error_log_threadid` `tid`
         ON `l`.`threadid` = `tid`.`id`
   GROUP BY `pid`.`id`,
            `tid`.`id`
   ORDER BY `pid`.`name`,
            `tid`.`name`;
