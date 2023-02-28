-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------

CREATE SCHEMA IF NOT EXISTS `safegraph` DEFAULT CHARACTER SET utf8 ;
USE `safegraph` ;

DROP TABLE `safegraph`.`monthly_patterns`;

-- -----------------------------------------------------
-- Table `mydb`.`monthly_patterns`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `safegraph`.`monthly_patterns` (
  `placekey` VARCHAR(45) NOT NULL,
  `location_name` VARCHAR(100) NULL,
  `parent_placekey` VARCHAR(45) NULL,
  `street_address` VARCHAR(45) NULL,
  `city` VARCHAR(45) NULL,
  `date_range_end` VARCHAR(45) NULL,
  `date_range_start` VARCHAR(45) NULL,
  `poi_cbg` VARCHAR(45) NULL,
  `postal_code` VARCHAR(45) NULL,
  `iso_country_code` VARCHAR(45) NULL,
  `median_dwell` DOUBLE NULL,
  `raw_visit_counts` BIGINT(50) NULL,
  `raw_visitor_counts` BIGINT(50) NULL,
  `visits_by_day` VARCHAR(500) NULL,
  `region` VARCHAR(45) NULL,
  `device_type` VARCHAR(45) NULL,
  `bucketed_dwell_times` VARCHAR(500) NULL,
  `distance_from_home` VARCHAR(40) NULL, -- BIGINT(50)
  `related_same_day_brand` VARCHAR(1000) NULL,
  `related_same_month_brand` VARCHAR(1000) NULL,
  `visitor_country_of_origin` VARCHAR(1000) NULL,
  `visitor_daytime_cbgs` LONGTEXT NULL,
  `visitor_home_aggregation` LONGTEXT NULL,
  `visitor_home_cbgs` LONGTEXT NULL, -- VARCHAR(1000)
  `normalized_visits_by_total_visits` DOUBLE NULL,
  `normalized_visits_by_state_scaling` DOUBLE NULL,
  `normalized_visits_by_total_visitors` DOUBLE NULL,
  `normalized_visits_by_region_naics_visits` DOUBLE NULL,
  `normalized_visits_by_region_naics_visitors` DOUBLE NULL,
  UNIQUE INDEX `first_index` (`placekey` ASC, `date_range_end` ASC, `date_range_start` ASC))
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
