-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=1;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

-- -----------------------------------------------------
-- Schema customers
-- -----------------------------------------------------
DROP SCHEMA IF EXISTS customers ;

-- -----------------------------------------------------
-- Schema customers
-- -----------------------------------------------------
CREATE SCHEMA IF NOT EXISTS customers DEFAULT CHARACTER SET utf8 ;
USE customers ;

-- -----------------------------------------------------
-- Table Customer
-- -----------------------------------------------------
DROP TABLE IF EXISTS Customer ;

CREATE TABLE IF NOT EXISTS Customer (
  cid INT NOT NULL,
  cfn VARCHAR(255) NOT NULL,
  cln VARCHAR(255) NOT NULL,
  PRIMARY KEY (cid))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Address
-- -----------------------------------------------------
DROP TABLE IF EXISTS Address ;

CREATE TABLE IF NOT EXISTS Address (
  add_id INT NOT NULL,
  street VARCHAR(255) NOT NULL,
  city VARCHAR(255) NOT NULL,
  st CHAR(2) NOT NULL,
  zip CHAR(5) NOT NULL,
  PRIMARY KEY (add_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table AddressType
-- -----------------------------------------------------
DROP TABLE IF EXISTS AddressType ;

CREATE TABLE IF NOT EXISTS AddressType (
  add_type_id INT NOT NULL,
  add_type VARCHAR(255) NOT NULL,
  PRIMARY KEY (add_type_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table Contact
-- -----------------------------------------------------
DROP TABLE IF EXISTS Contact ;

CREATE TABLE IF NOT EXISTS Contact (
  contact_id INT NOT NULL,
  contact_type VARCHAR(255) NOT NULL,
  PRIMARY KEY (contact_id))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table CustomerAddressType
-- -----------------------------------------------------
DROP TABLE IF EXISTS CustomerAddressType ;

CREATE TABLE IF NOT EXISTS CustomerAddressType (
  cid INT NOT NULL,
  add_id INT NOT NULL,
  add_type_id INT NOT NULL,
  PRIMARY KEY (cid, add_id, add_type_id),
  CONSTRAINT FK1_CUSTADD
    FOREIGN KEY (cid)
    REFERENCES Customer (cid)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT FK2_CUSTADD
    FOREIGN KEY (add_id)
    REFERENCES Address (add_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT FK3_CUSTADD
    FOREIGN KEY (add_type_id)
    REFERENCES AddressType (add_type_id)
    ON DELETE CASCADE    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table CustomerContact
-- -----------------------------------------------------
DROP TABLE IF EXISTS CustomerContact ;

CREATE TABLE IF NOT EXISTS CustomerContact (
  cid INT NOT NULL,
  contact_id INT NOT NULL,
  contact VARCHAR(255) NOT NULL,
  PRIMARY KEY (cid, contact_id),
  CONSTRAINT FK1_CUSTContact
    FOREIGN KEY (cid)
    REFERENCES Customer (cid)
    ON DELETE CASCADE
    ON UPDATE CASCADE,
  CONSTRAINT FK2_CUSTContact
    FOREIGN KEY (contact_id)
    REFERENCES Contact (contact_id)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table CustLogIn
-- -----------------------------------------------------
DROP TABLE IF EXISTS CustLogIn ;

CREATE TABLE IF NOT EXISTS CustLogIn (
  cid INT NOT NULL,
  cusername VARCHAR(255) NOT NULL,
  cpswd VARCHAR(255) NOT NULL,
  PRIMARY KEY (cid),
  CONSTRAINT FK1_CUSTLog
    FOREIGN KEY (cid)
    REFERENCES Customer (cid)
    ON DELETE CASCADE
    ON UPDATE CASCADE)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
