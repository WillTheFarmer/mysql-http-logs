DROP TABLE IF EXISTS `access_log_reqprotocol`;
-- create table ---------------------------------------------------------
CREATE TABLE `access_log_reqprotocol` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(30) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
