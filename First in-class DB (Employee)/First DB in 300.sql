-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema employees
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS `employees` ;

-- -----------------------------------------------------
-- Schema employees
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `employees` DEFAULT CHARACTER SET utf8 ;
USE `employees` ;

-- -----------------------------------------------------
-- Table `Employee`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Employee` ;

CREATE TABLE IF NOT EXISTS `Employee` (
  `eid` INT NOT NULL,
  `efn` VARCHAR(45) NOT NULL,
  `eln` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`eid`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Address`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Address` ;

CREATE TABLE IF NOT EXISTS `Address` (
  `eaid` INT NOT NULL,
  `estreet` VARCHAR(45) NOT NULL,
  `ecity` VARCHAR(45) NOT NULL,
  `est` CHAR(2) NOT NULL,
  `ezip` CHAR(5) NOT NULL,
  `eid` INT NOT NULL,
  PRIMARY KEY (`eaid`),
  INDEX `fk_Address_Employee_idx` (`eid` ASC) VISIBLE,
  CONSTRAINT `fk_Address_Employee`
    FOREIGN KEY (`eid`)
    REFERENCES `Employee` (`eid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ContactType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `ContactType` ;

CREATE TABLE IF NOT EXISTS `ContactType` (
  `contact_id` INT NOT NULL,
  `contact_desc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`contact_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmpContact`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EmpContact` ;

CREATE TABLE IF NOT EXISTS `EmpContact` (
  `eid` INT NOT NULL,
  `contact_id` INT NOT NULL,
  `contact` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`eid`, `contact_id`),
  INDEX `fk_Employee_has_Contact_Contact1_idx` (`contact_id` ASC) VISIBLE,
  INDEX `fk_Employee_has_Contact_Employee1_idx` (`eid` ASC) VISIBLE,
  CONSTRAINT `fk_Employee_has_Contact_Employee1`
    FOREIGN KEY (`eid`)
    REFERENCES `Employee` (`eid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Employee_has_Contact_Contact1`
    FOREIGN KEY (`contact_id`)
    REFERENCES `ContactType` (`contact_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Department`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `Department` ;

CREATE TABLE IF NOT EXISTS `Department` (
  `dept_id` INT NOT NULL,
  `dept_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`dept_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmpPos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EmpPos` ;

CREATE TABLE IF NOT EXISTS `EmpPos` (
  `pos_id` INT NOT NULL,
  `pos_name` VARCHAR(45) NOT NULL,
  `dept_id` INT NOT NULL,
  PRIMARY KEY (`pos_id`),
  INDEX `1_idx` (`dept_id` ASC) VISIBLE,
  CONSTRAINT `1`
    FOREIGN KEY (`dept_id`)
    REFERENCES `Department` (`dept_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SalType`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SalType` ;

CREATE TABLE IF NOT EXISTS `SalType` (
  `sal_id` INT NOT NULL,
  `sal_desc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`sal_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `SalPos`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `SalPos` ;

CREATE TABLE IF NOT EXISTS `SalPos` (
  `pos_id` INT NOT NULL,
  `sal_id` INT NOT NULL,
  `sal_date` DATETIME NOT NULL,
  `sal_value` INT NOT NULL,
  PRIMARY KEY (`pos_id`, `sal_id`, `sal_date`),
  INDEX `2_idx` (`sal_id` ASC) VISIBLE,
  INDEX `3_idx` (`pos_id` ASC) VISIBLE,
  CONSTRAINT `2`
    FOREIGN KEY (`sal_id`)
    REFERENCES `SalType` (`sal_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `3`
    FOREIGN KEY (`pos_id`)
    REFERENCES `EmpPos` (`pos_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `HistoryStatus`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `HistoryStatus` ;

CREATE TABLE IF NOT EXISTS `HistoryStatus` (
  `status_id` INT NOT NULL,
  `status_desc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`status_id`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `EmpHistory`
-- -----------------------------------------------------
DROP TABLE IF EXISTS `EmpHistory` ;

CREATE TABLE IF NOT EXISTS `EmpHistory` (
  `eid` INT NOT NULL,
  `pos_id` INT NOT NULL,
  `start_date` DATETIME NOT NULL,
  `salary` INT NOT NULL,
  `comments` VARCHAR(255) NOT NULL,
  `status_id` INT NOT NULL,
  PRIMARY KEY (`eid`, `pos_id`, `start_date`),
  INDEX `4_idx` (`status_id` ASC) VISIBLE,
  INDEX `5_idx` (`eid` ASC) VISIBLE,
  INDEX `6_idx` (`pos_id` ASC) VISIBLE,
  CONSTRAINT `4`
    FOREIGN KEY (`status_id`)
    REFERENCES `HistoryStatus` (`status_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `5`
    FOREIGN KEY (`eid`)
    REFERENCES `Employee` (`eid`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `6`
    FOREIGN KEY (`pos_id`)
    REFERENCES `EmpPos` (`pos_id`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
