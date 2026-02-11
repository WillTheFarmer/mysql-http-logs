DROP TABLE IF EXISTS `log_clientport`;
-- create table ---------------------------------------------------------
CREATE TABLE `log_clientport` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name INT NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table is used by Access and Error logs.';
