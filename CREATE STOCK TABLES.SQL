
--
-- Database: `stock`
--

-- --------------------------------------------------------

--
-- Table structure for table `bqty`
--

CREATE TABLE `bqty` (
  `BID` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `QTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `branches`
--

CREATE TABLE `branches` (
  `BID` int(11) NOT NULL,
  `BNAME` varchar(50) NOT NULL,
  `BADD` varchar(100) NOT NULL,
  `BMAN` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `CID` int(11) NOT NULL,
  `CFN` varchar(50) NOT NULL,
  `CLN` varchar(50) NOT NULL,
  `CAD` varchar(100) NOT NULL,
  `CEM` varchar(50) NOT NULL,
  `CMN` bigint(14) DEFAULT NULL,
  `CAGE` int(11) NOT NULL,
  `CG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `OID` int(11) NOT NULL,
  `CID` int(11) NOT NULL,
  `ODATE` datetime NOT NULL,
  `OQTY` int(11) NOT NULL,
  `PID` int(11) NOT NULL,
  `BID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `prices`
--

CREATE TABLE `prices` (
  `DATE` date NOT NULL,
  `PID` int(11) NOT NULL,
  `PRICE` decimal(3,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `PID` int(11) NOT NULL,
  `PNAME` varchar(50) NOT NULL,
  `PDESC` varchar(200) NOT NULL,
  `PSIZE` int(11) NOT NULL,
  `UOM` varchar(50) NOT NULL,
  `AISLE` int(11) NOT NULL,
  `LIVE` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `staff`
--

CREATE TABLE `staff` (
  `SID` int(11) NOT NULL,
  `BID` int(11) NOT NULL,
  `SFN` varchar(50) NOT NULL,
  `SLN` varchar(50) NOT NULL,
  `SAD` varchar(100) NOT NULL,
  `SEM` varchar(50) DEFAULT NULL,
  `SMN` bigint(14) DEFAULT NULL,
  `SAGE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bqty`
--
ALTER TABLE `bqty`
  ADD PRIMARY KEY (`PID`,`BID`);

--
-- Indexes for table `branches`
--
ALTER TABLE `branches`
  ADD PRIMARY KEY (`BID`,`BMAN`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`CID`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`OID`,`CID`),
  ADD KEY `CID` (`CID`);

--
-- Indexes for table `prices`
--
ALTER TABLE `prices`
  ADD PRIMARY KEY (`DATE`),
  ADD KEY `PID` (`PID`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`PID`);

--
-- Indexes for table `staff`
--
ALTER TABLE `staff`
  ADD PRIMARY KEY (`SID`,`BID`),
  ADD KEY `BID` (`BID`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bqty`
--
ALTER TABLE `bqty`
  ADD CONSTRAINT `bqty_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `products` (`PID`);

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `CID` FOREIGN KEY (`CID`) REFERENCES `customers` (`CID`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `prices`
--
ALTER TABLE `prices`
  ADD CONSTRAINT `prices_ibfk_1` FOREIGN KEY (`PID`) REFERENCES `products` (`PID`);

--
-- Constraints for table `staff`
--
ALTER TABLE `staff`
  ADD CONSTRAINT `staff_ibfk_1` FOREIGN KEY (`BID`) REFERENCES `branches` (`BID`);
COMMIT;


