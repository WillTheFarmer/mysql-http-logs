DROP TABLE IF EXISTS `access_log_ua_browser`;
-- create table ---------------------------------------------------------
CREATE TABLE `access_log_ua_browser` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(300) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
