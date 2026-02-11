DROP VIEW IF EXISTS `error_period_month_list`;
-- create table ---------------------------------------------------------
CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `error_period_month_list` AS
    SELECT YEAR(l.logged) 'Year',
           MONTH(l.logged) 'Month',
           COUNT(`l`.`id`) AS `Log Count`
      FROM `error_log` `l`
  GROUP BY YEAR(l.logged),
           MONTH(l.logged)
  ORDER BY 'Year',
           'Month'; 
