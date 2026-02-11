DROP TABLE IF EXISTS `log_client_coordinate`;
-- create table ---------------------------------------------------------
CREATE TABLE `log_client_coordinate` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    latitude decimal(10,8) DEFAULT NULL,
    longitude decimal(11,8) DEFAULT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table is used by Access and Error logs.';
