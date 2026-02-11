DROP TABLE IF EXISTS `error_log_httpmessage`;
-- create table ---------------------------------------------------------
CREATE TABLE `error_log_httpmessage` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(500) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
