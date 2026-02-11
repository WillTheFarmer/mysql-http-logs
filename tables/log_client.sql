DROP TABLE IF EXISTS `log_client`;
-- create table ---------------------------------------------------------
CREATE TABLE `log_client` (
    id BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(253) NOT NULL,
    country_code VARCHAR(20) DEFAULT NULL,
    country VARCHAR(150) DEFAULT NULL,
    subdivision VARCHAR(250) DEFAULT NULL,
    city VARCHAR(250) DEFAULT NULL,
    latitude decimal(10,8) DEFAULT NULL,
    longitude decimal(11,8) DEFAULT NULL,
    organization varchar(500) DEFAULT NULL,
    network varchar(100) DEFAULT NULL,
    countryid INT UNSIGNED DEFAULT NULL,
    subdivisionid INT UNSIGNED DEFAULT NULL,
    cityid INT UNSIGNED DEFAULT NULL,
    coordinateid INT UNSIGNED DEFAULT NULL,
    organizationid INT UNSIGNED DEFAULT NULL,
    networkid INT UNSIGNED DEFAULT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COMMENT='Table is used by Access and Error logs.';
