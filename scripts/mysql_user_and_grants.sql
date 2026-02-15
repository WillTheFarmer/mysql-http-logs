-- IF (SELECT EXISTS(SELECT 1 FROM mysql.user WHERE user = 'logfile_2_mysql' AND host = 'localhost'));
  CREATE USER 'logfile_2_mysql'@'localhost' IDENTIFIED BY 'Just4TheData';
-- END IF;  

-- Python module CALLS Stored Procedures for log processing & Stored Procedure for error logging
GRANT EXECUTE ON PROCEDURE parse_access_apache_combined TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE import_access_apache_combined TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE parse_access_apache_vhost TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE import_access_apache_vhost TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE parse_access_apache_csv2mysql TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE import_access_apache_csv2mysql TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE parse_error_apache_default TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE import_error_apache_default TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE parse_access_nginx_default TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE import_access_nginx_default TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE parse_error_nginx_default TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE import_error_nginx_default TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE normalize_useragent TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON PROCEDURE normalize_client TO `logfile_2_mysql`@`localhost`;
-- Python module CALLS Stored Procedures for error logging
GRANT EXECUTE ON PROCEDURE messageLoad TO `logfile_2_mysql`@`localhost`;
-- Python module SELECTS Stored Functions for log processing
GRANT EXECUTE ON FUNCTION importDeviceID TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON FUNCTION importClientID TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON FUNCTION importLoadID TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON FUNCTION importLoadProcessID TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON FUNCTION importFileExists TO `logfile_2_mysql`@`localhost`;
GRANT EXECUTE ON FUNCTION importFileID TO `logfile_2_mysql`@`localhost`;
-- Python module INSERTS into TABLES executing LOAD DATA LOCAL INFILE for log processing
GRANT INSERT ON load_access_apache_combined TO `logfile_2_mysql`@`localhost`;
GRANT INSERT ON load_access_apache_csv2mysql TO `logfile_2_mysql`@`localhost`;
GRANT INSERT ON load_access_apache_vhost TO `logfile_2_mysql`@`localhost`;
GRANT INSERT ON load_access_nginx_default TO `logfile_2_mysql`@`localhost`;
GRANT INSERT ON load_error_apache_default TO `logfile_2_mysql`@`localhost`;
GRANT INSERT ON load_error_apache_csv2mysql TO `logfile_2_mysql`@`localhost`;
GRANT INSERT ON load_error_nginx_default TO `logfile_2_mysql`@`localhost`;
-- Python module issues SELECT and UPDATE statements on TABLES due to converting parameters.
-- Only reason TABLE direct access is number of parameters required for Stored Procedure.
GRANT SELECT,UPDATE ON access_log_useragent TO `logfile_2_mysql`@`localhost`;
GRANT SELECT,UPDATE ON import_process TO `logfile_2_mysql`@`localhost`;
GRANT SELECT,UPDATE ON import_load TO `logfile_2_mysql`@`localhost`;
GRANT SELECT,UPDATE ON log_client TO `logfile_2_mysql`@`localhost`;
