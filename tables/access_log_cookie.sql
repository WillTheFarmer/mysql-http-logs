DROP TABLE IF EXISTS `access_log_cookie`;
-- create table ---------------------------------------------------------
CREATE TABLE `access_log_cookie` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(400) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
