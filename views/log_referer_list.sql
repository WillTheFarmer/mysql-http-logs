DROP VIEW IF EXISTS `log_referer_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `log_referer_list` AS
SELECT `name` AS `Referer`,
       `refererID_logs`(id, 'A') AS `Access Log Count`, 
       `refererID_logs`(id, 'E') AS `Error Log Count` 
  FROM `log_referer`
ORDER BY `name`;
