DROP TABLE IF EXISTS `access_log_reqmethod`;
-- create table ---------------------------------------------------------
CREATE TABLE `access_log_reqmethod` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
