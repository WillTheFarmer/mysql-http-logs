DROP TABLE IF EXISTS `log_client_subdivision`;
-- create table ---------------------------------------------------------
CREATE TABLE `log_client_subdivision` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(250) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table is used by Access and Error logs.';
