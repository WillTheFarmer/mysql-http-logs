DROP TABLE IF EXISTS `access_log_useragent`;
-- create table ---------------------------------------------------------
CREATE TABLE `access_log_useragent` (
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(1000) NOT NULL,
    ua VARCHAR(300) DEFAULT NULL,
    ua_browser VARCHAR(300) DEFAULT NULL,
    ua_browser_family VARCHAR(300) DEFAULT NULL,
    ua_browser_version VARCHAR(300) DEFAULT NULL,
    ua_device VARCHAR(300) DEFAULT NULL,
    ua_device_family VARCHAR(300) DEFAULT NULL,
    ua_device_brand VARCHAR(300) DEFAULT NULL,
    ua_device_model VARCHAR(300) DEFAULT NULL,
    ua_os VARCHAR(300) DEFAULT NULL,
    ua_os_family VARCHAR(300) DEFAULT NULL,
    ua_os_version VARCHAR(300) DEFAULT NULL,
    uaid INT UNSIGNED DEFAULT NULL,
    uabrowserid INT UNSIGNED DEFAULT NULL,
    uabrowserfamilyid INT UNSIGNED DEFAULT NULL,
    uabrowserversionid INT UNSIGNED DEFAULT NULL,
    uadeviceid INT UNSIGNED DEFAULT NULL,
    uadevicefamilyid INT UNSIGNED DEFAULT NULL,
    uadevicebrandid INT UNSIGNED DEFAULT NULL,
    uadevicemodelid INT UNSIGNED DEFAULT NULL,
    uaosid INT UNSIGNED DEFAULT NULL,
    uaosfamilyid INT UNSIGNED DEFAULT NULL,
    uaosversionid INT UNSIGNED DEFAULT NULL,
    added DATETIME NOT NULL DEFAULT NOW()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;
