DROP VIEW IF EXISTS `log_serverport_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `log_serverport_list` AS
SELECT `name` AS `Server Port`,
       `serverPortID_logs`(id, 'A') AS `Access Log Count`, 
       `serverPortID_logs`(id, 'E') AS `Error Log Count` 
  FROM `log_serverport`
ORDER BY `name`;
