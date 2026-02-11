DROP TABLE IF EXISTS `error_log_httpcode`;
-- create table ---------------------------------------------------------
CREATE TABLE `error_log_httpcode` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(200) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
