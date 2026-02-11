DROP VIEW IF EXISTS `log_clientport_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `log_clientport_list` AS
SELECT `name` AS `Client Port`,
       `clientPortID_logs`(id, 'A') AS `Access Log Count`, 
       `clientPortID_logs`(id, 'E') AS `Error Log Count` 
  FROM `log_clientport`
ORDER BY `name`;
