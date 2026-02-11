DROP TABLE IF EXISTS `access_log_reqstatus`;
-- create table ---------------------------------------------------------
CREATE TABLE `access_log_reqstatus` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name INT NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
