DROP TABLE IF EXISTS `log_client_city`;
-- create table ---------------------------------------------------------
CREATE TABLE `log_client_city` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table is used by Access and Error logs.';
-- drop table -----------------------------------------------------------
