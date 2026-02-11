-- drop table -----------------------------------------------------------
DROP TABLE IF EXISTS `log_referer`;
-- create table ---------------------------------------------------------
CREATE TABLE `log_referer` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(750) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table is used by Access and Error logs.';
