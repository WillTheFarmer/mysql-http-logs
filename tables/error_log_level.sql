DROP TABLE IF EXISTS `error_log_level`;
-- create table ---------------------------------------------------------
CREATE TABLE `error_log_level` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
