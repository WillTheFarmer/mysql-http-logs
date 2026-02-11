DROP TABLE IF EXISTS `log_server`;
-- create table ---------------------------------------------------------
CREATE TABLE `log_server` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(253) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table is used by Access and Error logs.';
