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
drop schema if exists `mydb`;
CREATE SCHEMA IF NOT EXISTS `mydb` DEFAULT CHARACTER SET utf8 ;
USE `mydb` ;

-- -----------------------------------------------------
-- Table `mydb`.`movie`
-- -----------------------------------------------------
drop table if exists `mydb`.`movie`;
CREATE TABLE IF NOT EXISTS `mydb`.`movie` (
  `movie_id` INT UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` VARCHAR(45) NOT NULL,
  `release_year` VARCHAR(45) NULL,
  PRIMARY KEY (`movie_id`),
  UNIQUE INDEX `movie_id_UNIQUE` (`movie_id` ASC) VISIBLE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
-- -----------------------------------------------------
-- Insert data into table `mydb`.`movie`
-- -----------------------------------------------------
INSERT INTO `movie` VALUES (1,'Star Wars: A New Hope','1977'),(2,'Spiderman: No Way Home','2022'),(3,'Dune','2021'),(4,'Lightyear','2022'),(5,'Dora the Explorer','2019'),(6,'Morbius','2021'),(7,'Doctor Strange: Multiverse of madness','2022');

SELECT * FROM movie;
