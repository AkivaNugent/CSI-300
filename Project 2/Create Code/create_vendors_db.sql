-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema vendors
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema vendors
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `vendors` DEFAULT CHARACTER SET utf8 ;
USE `vendors` ;

-- -----------------------------------------------------
-- Table `vendors`.`company`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendors`.`company` (
  `vendor_id` INT NOT NULL,
  `vendor_name` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`vendor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `vendors`.`address`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendors`.`address` (
  `address_id` INT NOT NULL,
  `street` VARCHAR(255) NOT NULL,
  `city` VARCHAR(255) NOT NULL,
  `state` VARCHAR(255) NOT NULL,
  `zip` VARCHAR(255) NOT NULL,
  `vendor_id` INT NOT NULL,
  PRIMARY KEY (`address_id`),
  INDEX `1_idx` (`vendor_id` ASC) VISIBLE,
  CONSTRAINT `1`
    FOREIGN KEY (`vendor_id`)
    REFERENCES `vendors`.`company` (`vendor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `vendors`.`contact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendors`.`contact` (
  `contact_id` INT NOT NULL,
  `contact_desc` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`contact_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `vendors`.`salesperson`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendors`.`salesperson` (
  `employee_id` INT NOT NULL,
  `first_name` VARCHAR(255) NOT NULL,
  `last_name` VARCHAR(255) NOT NULL,
  `vendor_id` INT NOT NULL,
  PRIMARY KEY (`employee_id`),
  INDEX `2_idx` (`vendor_id` ASC) VISIBLE,
  CONSTRAINT `2`
    FOREIGN KEY (`vendor_id`)
    REFERENCES `vendors`.`company` (`vendor_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `vendors`.`salespersoncontact`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `vendors`.`salespersoncontact` (
  `employee_id` INT NOT NULL,
  `contact_id` INT NOT NULL,
  `contact` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`employee_id`, `contact_id`),
  INDEX `fk_SalesPerson_has_Contact_Contact1_idx` (`contact_id` ASC) VISIBLE,
  INDEX `fk_SalesPerson_has_Contact_SalesPerson_idx` (`employee_id` ASC) VISIBLE,
  CONSTRAINT `fk_SalesPerson_has_Contact_Contact1`
    FOREIGN KEY (`contact_id`)
    REFERENCES `vendors`.`contact` (`contact_id`),
  CONSTRAINT `fk_SalesPerson_has_Contact_SalesPerson`
    FOREIGN KEY (`employee_id`)
    REFERENCES `vendors`.`salesperson` (`employee_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
