-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema products
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Schema products
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS `products` DEFAULT CHARACTER SET utf8 ;
USE `products` ;

-- -----------------------------------------------------
-- Table `products`.`product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `products`.`product` (
  `product_id` INT NOT NULL,
  `product_name` VARCHAR(45) NOT NULL,
  `product_desc` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`product_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `products`.`productinventory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `products`.`productinventory` (
  `product_id` INT NOT NULL,
  `restock_level` INT NOT NULL,
  `last_restock` DATE NOT NULL,
  `current_stock` INT NOT NULL,
  PRIMARY KEY (`product_id`),
  CONSTRAINT `fk_ProductInventory_Product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `products`.`product` (`product_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


-- -----------------------------------------------------
-- Table `products`.`productpricehistory`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `products`.`productpricehistory` (
  `product_id` INT NOT NULL,
  `timestamp` DATE NOT NULL,
  `price` INT NOT NULL,
  PRIMARY KEY (`product_id`, `timestamp`),
  CONSTRAINT `fk_ProductPriceHistory_Product1`
    FOREIGN KEY (`product_id`)
    REFERENCES `products`.`product` (`product_id`))
ENGINE = InnoDB
DEFAULT CHARACTER SET = utf8;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
