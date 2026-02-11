DROP TABLE IF EXISTS `log_requestlogid`;
-- create table ---------------------------------------------------------
CREATE TABLE `log_requestlogid` (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(50) NOT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table is used by Access and Error logs.';