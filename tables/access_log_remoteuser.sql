DROP TABLE IF EXISTS `access_log_remoteuser`;
-- create table ---------------------------------------------------------
CREATE TABLE `access_log_remoteuser` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(150) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
