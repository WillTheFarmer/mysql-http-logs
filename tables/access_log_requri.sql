DROP TABLE IF EXISTS `access_log_requri`;
-- create table ---------------------------------------------------------
CREATE TABLE `access_log_requri` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(2000) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
