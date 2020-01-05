CREATE TABLE IF NOT EXISTS Branches (
  `BID` INT NOT NULL,
  `BNAME` VARCHAR(50) NOT NULL,
  `BADD` VARCHAR(100) NOT NULL,
  `BMAN` INT NOT NULL,
  PRIMARY KEY (`BID`));

-- -----------------------------------------------------
-- Table `Customers`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Customers (
  `CID` INT NOT NULL,
  `CFN` VARCHAR(50) NOT NULL,
  `CLN` VARCHAR(50) NOT NULL,
  `CAD` VARCHAR(100) NOT NULL,
  `CEM` VARCHAR(50) NOT NULL,
  `CMN` BIGINT(14) NULL, -- not compulsary to have mobile phone
  `CAGE` INT NOT NULL, CONSTRAINT customer_min_age CHECK(CAGE>=13),
  `CG` INT NOT NULL,
  PRIMARY KEY (`CID`));
  
-- -----------------------------------------------------
-- Table `Products`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Products (
  `PID` INT NOT NULL,
  `PNAME` VARCHAR(50) NOT NULL,
  `PDESC` VARCHAR(200) NOT NULL,
  `PSIZE` INT NOT NULL,
  `UOM` VARCHAR(50) NOT NULL,
  `AISLE` INT NOT NULL,
  `LIVE` TINYINT NOT NULL,
  PRIMARY KEY (`PID`));
  
-- -----------------------------------------------------
-- Table `Orders`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Orders (
  `OID` INT NOT NULL,
  `CID` INT NOT NULL,
  `ODATE` DATETIME NOT NULL,
  `OQTY` INT NOT NULL, CONSTRAINT o_qty_not_negative CHECK(OQTY>=0),
  `PID` INT NOT NULL,
  `BID` INT NOT NULL,
  PRIMARY KEY (`OID`, `CID`),
  CONSTRAINT ORDERCID_FK
  FOREIGN KEY (`CID`) REFERENCES Customers (`CID`),
  CONSTRAINT ORDERPID_FK
  FOREIGN KEY (`PID`) REFERENCES Products (`PID`));
  
-- -----------------------------------------------------
-- Table `Prices`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Prices (
  `DATE` DATE NOT NULL,
  `PID` INT NOT NULL,
  `PRICE` DECIMAL(3,2) NOT NULL,
  CONSTRAINT price_not_negative CHECK (PRICE>=0),
  PRIMARY KEY (`DATE`, `PID`),
  CONSTRAINT PRICESPID_FK
  FOREIGN KEY (`PID`) REFERENCES Products (`PID`));
    
-- -----------------------------------------------------
-- Table `Staff`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS Staff (
  `SID` INT NOT NULL,
  `BID` INT NOT NULL,
  `SFN` VARCHAR(50) NOT NULL,
  `SLN` VARCHAR(50) NOT NULL,
  `SAD` VARCHAR(100) NOT NULL,
  `SEM` VARCHAR(50) NOT NULL,
  `SMN` BIGINT(14) NULL, -- not compulsary to have mobile phone
  `SAGE` INT NOT NULL, CONSTRAINT staff_min_age CHECK(SAGE>=13),
  PRIMARY KEY (`SID`),
  CONSTRAINT STAFFBID_FK
  FOREIGN KEY (`BID`) REFERENCES Branches (`BID`));

    
-- -----------------------------------------------------
-- Table `BQTY`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS BQTY (
  `BID` INT NOT NULL,
  `PID` INT NOT NULL,
  `QTY` INT NOT NULL,
  CONSTRAINT b_qty_not_negative CHECK(QTY>=0),
  PRIMARY KEY (`PID`, `BID`), 
  CONSTRAINT BQTYPID_FK
  FOREIGN KEY (PID) REFERENCES Products (`PID`));