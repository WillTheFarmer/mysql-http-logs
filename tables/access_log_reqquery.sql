DROP TABLE IF EXISTS `access_log_reqquery`;
-- create table ---------------------------------------------------------
CREATE TABLE `access_log_reqquery` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(5000) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
