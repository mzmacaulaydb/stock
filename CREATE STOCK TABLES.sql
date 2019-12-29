-- -----------------------------------------------------
-- Table `stock`.`BQTY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`BQTY` (
  `BID` INT NOT NULL,
  `PID` INT NOT NULL,
  `QTY` INT NULL,
  PRIMARY KEY (`BID`, `PID`),
    FOREIGN KEY (`PID`) REFERENCES `stock`.`Products` (`PID`)
	FOREIGN KEY (`BID`) REFERENCES `stock`.`Branches` (`BID`)
ENGINE = InnoDB;
CREATE INDEX `fk_BQTY_Products1_idx` ON `stock`.`BQTY` (`PID` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `stock`.`Branches`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`Branches` (
  `BID` INT NOT NULL AUTO_INCREMENT,
  `BNAME` VARCHAR(50) NULL,
  `BADD` VARCHAR(100) NULL,
  `BMAN` INT NOT NULL,
  PRIMARY KEY (`BID`, `BMAN`))
ENGINE = InnoDB;
CREATE UNIQUE INDEX `BID_UNIQUE` ON `stock`.`Branches` (`BID` ASC) VISIBLE;
CREATE UNIQUE INDEX `BMAN_UNIQUE` ON `stock`.`Branches` (`BMAN` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `stock`.`Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`Customers` (
  `CID` INT NOT NULL AUTO_INCREMENT,
  `CFN` VARCHAR(50) NULL,
  `CLN` VARCHAR(50) NULL,
  `CAD` VARCHAR(100) NULL,
  `CEM` VARCHAR(50) NULL,
  `CMN` INT NULL,
  `CAGE` INT NULL,
  `CG` INT NULL,
  PRIMARY KEY (`CID`))
ENGINE = InnoDB;
CREATE UNIQUE INDEX `CID_UNIQUE` ON `stock`.`Customers` (`CID` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `stock`.`Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`Orders` (
  `OID` INT NOT NULL AUTO_INCREMENT,
  `CID` INT NOT NULL,
  `ODATE` DATETIME NULL,
  `OQTY` INT NOT NULL,
  `PID` INT NOT NULL,
  PRIMARY KEY (`OID`),
  CONSTRAINT `CID`
    FOREIGN KEY (`CID`) REFERENCES `stock`.`Customers` (`CID`)
ENGINE = InnoDB;
CREATE UNIQUE INDEX `OID_UNIQUE` ON `stock`.`Orders` (`OID` ASC) VISIBLE;
CREATE UNIQUE INDEX `CID_UNIQUE` ON `stock`.`Orders` (`CID` ASC) VISIBLE;
CREATE UNIQUE INDEX `PID_UNIQUE` ON `stock`.`Orders` (`PID` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `stock`.`Prices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`Prices` (
  `DATE` DATE NOT NULL,
  `PID` INT NOT NULL,
  `PRICE` DECIMAL(3,2) NULL,
  PRIMARY KEY (`DATE`, `PID`),
  CONSTRAINT `PID`
    FOREIGN KEY (`PID`) REFERENCES `stock`.`Products` (`PID`)
ENGINE = InnoDB;
CREATE UNIQUE INDEX `PID_UNIQUE` ON `stock`.`Prices` (`PID` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `stock`.`Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`Products` (
  `PID` INT NOT NULL AUTO_INCREMENT,
  `PNAME` VARCHAR(50) NULL,
  `PDESC` VARCHAR(200) NULL,
  `PSIZE` INT NULL,
  `UOM` VARCHAR(50) NULL,
  `AISLE` INT NULL,
  `LIVE` TINYINT NULL,
  `BQTY_BID` INT NOT NULL,
  `BQTY_PID` INT NOT NULL,
  PRIMARY KEY (`PID`, `BQTY_BID`, `BQTY_PID`),
  CONSTRAINT `PID`
    FOREIGN KEY (`PID`) REFERENCES `stock`.`Orders` (`PID`)
ENGINE = InnoDB;
CREATE UNIQUE INDEX `idProducts_UNIQUE` ON `stock`.`Products` (`PID` ASC) VISIBLE;

-- -----------------------------------------------------
-- Table `stock`.`Staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `stock`.`Staff` (
  `SID` INT NOT NULL AUTO_INCREMENT,
  `BID` INT NOT NULL,
  `SFN` VARCHAR(50) NULL,
  `SLN` VARCHAR(50) NULL,
  `SAD` VARCHAR(100) NULL,
  `SEM` VARCHAR(50) NULL,
  `SMN` INT NULL,
  `SAGE` INT NULL,
  PRIMARY KEY (`SID`, `BID`),
  CONSTRAINT `BID`
    FOREIGN KEY (`BID`) REFERENCES `stock`.`Branches` (`BID`)
ENGINE = InnoDB;
CREATE UNIQUE INDEX `SID_UNIQUE` ON `stock`.`Staff` (`SID` ASC) VISIBLE;
CREATE UNIQUE INDEX `BID_UNIQUE` ON `stock`.`Staff` (`BID` ASC) VISIBLE;
