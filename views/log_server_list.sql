DROP VIEW IF EXISTS `log_server_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `log_server_list` AS
SELECT `name` AS `Server Name`,
       `serverID_logs`(id, 'A') AS `Access Log Count`, 
       `serverID_logs`(id, 'E') AS `Error Log Count` 
  FROM `log_server`
ORDER BY `name`;
