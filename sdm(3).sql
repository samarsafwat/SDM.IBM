-- phpMyAdmin SQL Dump
-- version 4.1.14
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Aug 15, 2017 at 07:23 AM
-- Server version: 5.6.17
-- PHP Version: 5.5.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `sdm`
--

-- --------------------------------------------------------

--
-- Table structure for table `accessories`
--

CREATE TABLE IF NOT EXISTS `accessories` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `address_city`
--

CREATE TABLE IF NOT EXISTS `address_city` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `City` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `address_country`
--

CREATE TABLE IF NOT EXISTS `address_country` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Country` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `bodybath`
--

CREATE TABLE IF NOT EXISTS `bodybath` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `buyer`
--

CREATE TABLE IF NOT EXISTS `buyer` (
  `ID` int(11) NOT NULL,
  `Preference` text NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cameras`
--

CREATE TABLE IF NOT EXISTS `cameras` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cart`
--

CREATE TABLE IF NOT EXISTS `cart` (
  `buyer` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`buyer`,`product`),
  KEY `product` (`product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE IF NOT EXISTS `categories` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category` varchar(18) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`ID`, `Category`) VALUES
(1, 'Electronics'),
(2, 'houseAppliances'),
(3, 'Cosmetics'),
(4, 'Fashion'),
(5, 'Others');

-- --------------------------------------------------------

--
-- Table structure for table `console`
--

CREATE TABLE IF NOT EXISTS `console` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `cosmetics`
--

CREATE TABLE IF NOT EXISTS `cosmetics` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `dresses`
--

CREATE TABLE IF NOT EXISTS `dresses` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `electronics`
--

CREATE TABLE IF NOT EXISTS `electronics` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fashion`
--

CREATE TABLE IF NOT EXISTS `fashion` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `follow`
--

CREATE TABLE IF NOT EXISTS `follow` (
  `follower` int(11) NOT NULL,
  `followed` int(11) NOT NULL,
  PRIMARY KEY (`follower`,`followed`),
  KEY `followed` (`followed`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `fridges`
--

CREATE TABLE IF NOT EXISTS `fridges` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `gender`
--

CREATE TABLE IF NOT EXISTS `gender` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Gender` varchar(18) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `hometheatre`
--

CREATE TABLE IF NOT EXISTS `hometheatre` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `hoodies`
--

CREATE TABLE IF NOT EXISTS `hoodies` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `houseappliances`
--

CREATE TABLE IF NOT EXISTS `houseappliances` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `makeup`
--

CREATE TABLE IF NOT EXISTS `makeup` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `microwaves`
--

CREATE TABLE IF NOT EXISTS `microwaves` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `mobile`
--

CREATE TABLE IF NOT EXISTS `mobile` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `nailpolish`
--

CREATE TABLE IF NOT EXISTS `nailpolish` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `others`
--

CREATE TABLE IF NOT EXISTS `others` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pants`
--

CREATE TABLE IF NOT EXISTS `pants` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pc`
--

CREATE TABLE IF NOT EXISTS `pc` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `perfumes`
--

CREATE TABLE IF NOT EXISTS `perfumes` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `printers`
--

CREATE TABLE IF NOT EXISTS `printers` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `product`
--

CREATE TABLE IF NOT EXISTS `product` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `seller` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Price` int(11) NOT NULL,
  `Description` text NOT NULL,
  `Rate` int(11) NOT NULL,
  `Photo` text NOT NULL,
  `Size` varchar(20) NOT NULL,
  `Color` varchar(20) NOT NULL,
  `cat` int(11) NOT NULL,
  `subCat` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `seller` (`seller`),
  KEY `cat` (`cat`),
  KEY `subCat` (`subCat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `prod_ship`
--

CREATE TABLE IF NOT EXISTS `prod_ship` (
  `Prod` int(11) NOT NULL,
  `loc` int(11) NOT NULL,
  PRIMARY KEY (`loc`),
  KEY `prod_ship_ibfk_1` (`Prod`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `prod_tag`
--

CREATE TABLE IF NOT EXISTS `prod_tag` (
  `product` int(11) NOT NULL,
  `tag` int(11) NOT NULL,
  PRIMARY KEY (`product`,`tag`),
  KEY `tag` (`tag`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `purchased`
--

CREATE TABLE IF NOT EXISTS `purchased` (
  `buyer` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  PRIMARY KEY (`buyer`,`product`),
  KEY `product` (`product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `seller`
--

CREATE TABLE IF NOT EXISTS `seller` (
  `ID` int(11) NOT NULL,
  `Rate` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shippinglocation`
--

CREATE TABLE IF NOT EXISTS `shippinglocation` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Location` varchar(50) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `shirts`
--

CREATE TABLE IF NOT EXISTS `shirts` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `shoes`
--

CREATE TABLE IF NOT EXISTS `shoes` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `stoves`
--

CREATE TABLE IF NOT EXISTS `stoves` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `subcats`
--

CREATE TABLE IF NOT EXISTS `subcats` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Category` int(11) NOT NULL,
  `subCat` varchar(18) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `Category` (`Category`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=20 ;

--
-- Dumping data for table `subcats`
--

INSERT INTO `subcats` (`ID`, `Category`, `subCat`) VALUES
(1, 1, 'Mobile'),
(2, 1, 'Tablet'),
(3, 1, 'Console'),
(4, 1, 'Accessories'),
(5, 1, 'PCs'),
(6, 2, 'washingMachines'),
(7, 2, 'Microwaves'),
(8, 2, 'Stoves'),
(9, 2, 'Fridges'),
(10, 2, 'homeTheatre'),
(11, 3, 'Makeup'),
(12, 3, 'Perfumes'),
(13, 3, 'bodybath'),
(14, 3, 'nailPolish'),
(15, 4, 'Shoes'),
(16, 4, 'Shirts'),
(17, 4, 'dresses'),
(18, 4, 'hoodies'),
(19, 4, 'Pants');

-- --------------------------------------------------------

--
-- Table structure for table `tablet`
--

CREATE TABLE IF NOT EXISTS `tablet` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `tags`
--

CREATE TABLE IF NOT EXISTS `tags` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `tag` varchar(20) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `tvs`
--

CREATE TABLE IF NOT EXISTS `tvs` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE IF NOT EXISTS `user` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Email` varchar(30) NOT NULL,
  `Gender` int(11) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `BirthDate` date NOT NULL,
  `Aboutme` text NOT NULL,
  `Avatar` text NOT NULL,
  `PhoneNumber` int(20) NOT NULL,
  `UserType` int(3) NOT NULL,
  `JoinDate` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `LastOnline` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `city` int(11) NOT NULL,
  `country` int(11) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `user_ibfk_1` (`city`),
  KEY `user_ibfk_2` (`country`),
  KEY `user_ibfk_3` (`UserType`),
  KEY `Gender` (`Gender`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `usertype`
--

CREATE TABLE IF NOT EXISTS `usertype` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Type` varchar(10) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `washingmachines`
--

CREATE TABLE IF NOT EXISTS `washingmachines` (
  `ID` int(11) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `wishlist`
--

CREATE TABLE IF NOT EXISTS `wishlist` (
  `buyer` int(11) NOT NULL,
  `product` int(11) NOT NULL,
  PRIMARY KEY (`buyer`,`product`),
  KEY `product` (`product`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `accessories`
--
ALTER TABLE `accessories`
  ADD CONSTRAINT `accessories_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `electronics` (`ID`);

--
-- Constraints for table `bodybath`
--
ALTER TABLE `bodybath`
  ADD CONSTRAINT `bodybath_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `cosmetics` (`ID`);

--
-- Constraints for table `buyer`
--
ALTER TABLE `buyer`
  ADD CONSTRAINT `buyer_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `cameras`
--
ALTER TABLE `cameras`
  ADD CONSTRAINT `cameras_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `electronics` (`ID`);

--
-- Constraints for table `cart`
--
ALTER TABLE `cart`
  ADD CONSTRAINT `cart_ibfk_1` FOREIGN KEY (`buyer`) REFERENCES `buyer` (`ID`),
  ADD CONSTRAINT `cart_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`ID`);

--
-- Constraints for table `console`
--
ALTER TABLE `console`
  ADD CONSTRAINT `console_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `electronics` (`ID`);

--
-- Constraints for table `cosmetics`
--
ALTER TABLE `cosmetics`
  ADD CONSTRAINT `cosmetics_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `product` (`ID`);

--
-- Constraints for table `dresses`
--
ALTER TABLE `dresses`
  ADD CONSTRAINT `dresses_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `fashion` (`ID`);

--
-- Constraints for table `electronics`
--
ALTER TABLE `electronics`
  ADD CONSTRAINT `electronics_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `product` (`ID`);

--
-- Constraints for table `fashion`
--
ALTER TABLE `fashion`
  ADD CONSTRAINT `fashion_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `product` (`ID`);

--
-- Constraints for table `follow`
--
ALTER TABLE `follow`
  ADD CONSTRAINT `follow_ibfk_1` FOREIGN KEY (`follower`) REFERENCES `user` (`ID`),
  ADD CONSTRAINT `follow_ibfk_2` FOREIGN KEY (`followed`) REFERENCES `user` (`ID`);

--
-- Constraints for table `fridges`
--
ALTER TABLE `fridges`
  ADD CONSTRAINT `fridges_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `houseappliances` (`ID`);

--
-- Constraints for table `hometheatre`
--
ALTER TABLE `hometheatre`
  ADD CONSTRAINT `hometheatre_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `houseappliances` (`ID`);

--
-- Constraints for table `hoodies`
--
ALTER TABLE `hoodies`
  ADD CONSTRAINT `hoodies_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `fashion` (`ID`);

--
-- Constraints for table `houseappliances`
--
ALTER TABLE `houseappliances`
  ADD CONSTRAINT `houseappliances_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `product` (`ID`);

--
-- Constraints for table `makeup`
--
ALTER TABLE `makeup`
  ADD CONSTRAINT `makeup_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `cosmetics` (`ID`);

--
-- Constraints for table `microwaves`
--
ALTER TABLE `microwaves`
  ADD CONSTRAINT `microwaves_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `houseappliances` (`ID`);

--
-- Constraints for table `mobile`
--
ALTER TABLE `mobile`
  ADD CONSTRAINT `mobile_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `electronics` (`ID`);

--
-- Constraints for table `nailpolish`
--
ALTER TABLE `nailpolish`
  ADD CONSTRAINT `nailpolish_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `cosmetics` (`ID`);

--
-- Constraints for table `others`
--
ALTER TABLE `others`
  ADD CONSTRAINT `others_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `product` (`ID`);

--
-- Constraints for table `pants`
--
ALTER TABLE `pants`
  ADD CONSTRAINT `pants_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `fashion` (`ID`);

--
-- Constraints for table `pc`
--
ALTER TABLE `pc`
  ADD CONSTRAINT `pc_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `electronics` (`ID`);

--
-- Constraints for table `perfumes`
--
ALTER TABLE `perfumes`
  ADD CONSTRAINT `perfumes_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `cosmetics` (`ID`);

--
-- Constraints for table `printers`
--
ALTER TABLE `printers`
  ADD CONSTRAINT `printers_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `electronics` (`ID`);

--
-- Constraints for table `product`
--
ALTER TABLE `product`
  ADD CONSTRAINT `product_ibfk_1` FOREIGN KEY (`seller`) REFERENCES `seller` (`ID`),
  ADD CONSTRAINT `product_ibfk_2` FOREIGN KEY (`cat`) REFERENCES `categories` (`ID`),
  ADD CONSTRAINT `product_ibfk_3` FOREIGN KEY (`subCat`) REFERENCES `subcats` (`ID`);

--
-- Constraints for table `prod_ship`
--
ALTER TABLE `prod_ship`
  ADD CONSTRAINT `prod_ship_ibfk_1` FOREIGN KEY (`Prod`) REFERENCES `product` (`ID`),
  ADD CONSTRAINT `prod_ship_ibfk_2` FOREIGN KEY (`loc`) REFERENCES `shippinglocation` (`ID`);

--
-- Constraints for table `prod_tag`
--
ALTER TABLE `prod_tag`
  ADD CONSTRAINT `prod_tag_ibfk_1` FOREIGN KEY (`tag`) REFERENCES `tags` (`ID`),
  ADD CONSTRAINT `prod_tag_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`ID`);

--
-- Constraints for table `purchased`
--
ALTER TABLE `purchased`
  ADD CONSTRAINT `purchased_ibfk_1` FOREIGN KEY (`buyer`) REFERENCES `buyer` (`ID`),
  ADD CONSTRAINT `purchased_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`ID`);

--
-- Constraints for table `seller`
--
ALTER TABLE `seller`
  ADD CONSTRAINT `seller_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `user` (`ID`);

--
-- Constraints for table `shirts`
--
ALTER TABLE `shirts`
  ADD CONSTRAINT `shirts_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `fashion` (`ID`);

--
-- Constraints for table `shoes`
--
ALTER TABLE `shoes`
  ADD CONSTRAINT `shoes_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `fashion` (`ID`);

--
-- Constraints for table `stoves`
--
ALTER TABLE `stoves`
  ADD CONSTRAINT `stoves_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `houseappliances` (`ID`);

--
-- Constraints for table `subcats`
--
ALTER TABLE `subcats`
  ADD CONSTRAINT `subcats_ibfk_1` FOREIGN KEY (`Category`) REFERENCES `categories` (`ID`);

--
-- Constraints for table `tablet`
--
ALTER TABLE `tablet`
  ADD CONSTRAINT `tablet_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `electronics` (`ID`);

--
-- Constraints for table `tvs`
--
ALTER TABLE `tvs`
  ADD CONSTRAINT `tvs_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `electronics` (`ID`);

--
-- Constraints for table `user`
--
ALTER TABLE `user`
  ADD CONSTRAINT `user_ibfk_1` FOREIGN KEY (`city`) REFERENCES `address_city` (`ID`),
  ADD CONSTRAINT `user_ibfk_2` FOREIGN KEY (`country`) REFERENCES `address_country` (`ID`),
  ADD CONSTRAINT `user_ibfk_3` FOREIGN KEY (`UserType`) REFERENCES `usertype` (`ID`),
  ADD CONSTRAINT `user_ibfk_4` FOREIGN KEY (`Gender`) REFERENCES `gender` (`ID`);

--
-- Constraints for table `washingmachines`
--
ALTER TABLE `washingmachines`
  ADD CONSTRAINT `washingmachines_ibfk_1` FOREIGN KEY (`ID`) REFERENCES `houseappliances` (`ID`);

--
-- Constraints for table `wishlist`
--
ALTER TABLE `wishlist`
  ADD CONSTRAINT `wishlist_ibfk_1` FOREIGN KEY (`buyer`) REFERENCES `buyer` (`ID`),
  ADD CONSTRAINT `wishlist_ibfk_2` FOREIGN KEY (`product`) REFERENCES `product` (`ID`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
