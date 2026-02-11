DROP VIEW IF EXISTS `log_requestlog_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `log_requestlog_list` AS
SELECT `name` AS `Request Log`,
       `requestlogID_logs`(id, 'A') AS `Access Log Count`, 
       `requestlogID_logs`(id, 'E') AS `Error Log Count` 
  FROM `log_requestlogid`
ORDER BY `name`;
