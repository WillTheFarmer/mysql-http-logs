DROP VIEW IF EXISTS `log_client_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `log_client_list` AS
SELECT `name` AS `Client Name`,
       `clientID_logs`(id, 'A') AS `Access Log Count`, 
       `clientID_logs`(id, 'E') AS `Error Log Count` 
  FROM `log_client`
ORDER BY `name`;
