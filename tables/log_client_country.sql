DROP TABLE IF EXISTS `log_client_country`;
-- create table ---------------------------------------------------------
CREATE TABLE `log_client_country` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    country VARCHAR(150) NOT NULL,
    country_code VARCHAR(20) DEFAULT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table is used by Access and Error logs.';
