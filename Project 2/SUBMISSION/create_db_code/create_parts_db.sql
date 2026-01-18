-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema parts
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema parts
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `parts` DEFAULT CHARACTER SET utf8 ;
USE `parts` ;

-- -----------------------------------------------------
-- Table `parts`.`part`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parts`.`part` (
  `part_id` VARCHAR(45) NOT NULL,
  `part_desc` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`part_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `parts`.`parthistory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parts`.`parthistory` (
  `part_id` VARCHAR(45) NOT NULL,
  `timestamp` DATE NOT NULL,
  `part_price` INT NOT NULL,
  PRIMARY KEY (`part_id`, `timestamp`),
  INDEX `fk_PartHistory_Part_idx` (`part_id` ASC) VISIBLE,
  CONSTRAINT `fk_PartHistory_Part`
    FOREIGN KEY (`part_id`)
    REFERENCES `parts`.`part` (`part_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `parts`.`partinventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parts`.`partinventory` (
  `part_id` VARCHAR(45) NOT NULL,
  `inventory_level` INT NOT NULL,
  `restock_level` INT NOT NULL,
  PRIMARY KEY (`part_id`),
  INDEX `fk_PartInventory_Part1_idx` (`part_id` ASC) VISIBLE,
  CONSTRAINT `fk_PartInventory_Part1`
    FOREIGN KEY (`part_id`)
    REFERENCES `parts`.`part` (`part_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `parts`.`partproduct`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parts`.`partproduct` (
  `part_id` VARCHAR(45) NOT NULL,
  `product_id` INT NOT NULL,
  PRIMARY KEY (`part_id`, `product_id`),
  INDEX `fk_PartProduct_Part1_idx` (`part_id` ASC) VISIBLE,
  CONSTRAINT `fk_PartProduct_Part1`
    FOREIGN KEY (`part_id`)
    REFERENCES `parts`.`part` (`part_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `parts`.`partvendor`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `parts`.`partvendor` (
  `vendor_id` INT NOT NULL,
  `part_id` VARCHAR(45) NOT NULL,
  PRIMARY KEY (`vendor_id`, `part_id`),
  INDEX `fk_PartVendor_Part1_idx` (`part_id` ASC) VISIBLE,
  CONSTRAINT `fk_PartVendor_Part1`
    FOREIGN KEY (`part_id`)
    REFERENCES `parts`.`part` (`part_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
