-- drop function -----------------------------------------------------------
DROP PROCEDURE IF EXISTS `errorLoad`;
-- create function -----------------------------------------------------------
DELIMITER //
CREATE DEFINER = `root`@`localhost` PROCEDURE `errorLoad`
  (IN in_module VARCHAR(300),
   IN in_messagetext VARCHAR(1000), 
   IN in_loadID VARCHAR(10),
   IN in_processID VARCHAR(10))
BEGIN
  DECLARE loadID INT DEFAULT 0;
  DECLARE processID INT DEFAULT 0;
  IF NOT CONVERT(in_loadID, UNSIGNED) = 0 THEN
    SET loadID = CONVERT(in_loadID, UNSIGNED);
  END IF;
  IF NOT CONVERT(in_processID, UNSIGNED) = 0 THEN
    SET processID = CONVERT(in_processID, UNSIGNED);
  END IF;
  INSERT INTO import_error 
     (module,
      message_text,
      importloadid,
      importprocessid,
      schema_name)
  VALUES
     (in_module,
      in_messagetext,
      loadID,
      processID,
      'http-logs-to-mysql');
END //
DELIMITER ;
