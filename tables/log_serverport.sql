DROP TABLE IF EXISTS `log_serverport`;
-- create table ---------------------------------------------------------
CREATE TABLE `log_serverport` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name INT NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table is used by Access and Error logs.';
