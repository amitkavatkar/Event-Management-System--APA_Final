-- phpMyAdmin SQL Dump
-- version 4.0.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 10, 2017 at 06:32 AM
-- Server version: 5.6.12-log
-- PHP Version: 5.4.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `eventdb`
--
CREATE DATABASE IF NOT EXISTS `eventdb` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `eventdb`;

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE IF NOT EXISTS `client` (
  `clientID` int(11) NOT NULL AUTO_INCREMENT,
  `clientName` varchar(255) NOT NULL,
  `clientEmail` varchar(255) DEFAULT NULL,
  `clientCity` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`clientID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=51 ;

--
-- Dumping data for table `client`
--

INSERT INTO `client` (`clientID`, `clientName`, `clientEmail`, `clientCity`) VALUES
(1, 'Asmita Sharma\r\n', 'amitsharma@gmail.com\r\n', 'Katraj'),
(2, 'Rajesh Ingle\r\n', 'rajeshingale@yahoo.com\r\n', 'Wakad\r\n'),
(3, 'Ranjeet Kaur\r\n', 'ranjeetkaur02@gmail.com\r\n', 'Vimannagar\r\n'),
(4, 'Rajan Shinde\r\n', 'rajanshinde@gmail.com\r\n', 'Ranjangaon\r\n'),
(5, 'Vasudev Mahadik\r\n', 'vasudevmahadik99@gmail.com\r\n', 'Bhosari\r\n'),
(6, 'Rachana Thakur\r\n', 'rachanakaur@gmail.com\r\n', 'Nigadi\r\n'),
(7, 'Ved Pathak\r\n', 'vedpathak02@yahoo.in\r\n', 'Shivajinagar\r\n'),
(8, 'Rasika Warang\r\n', 'rasikawarang@gmail.com\r\n', 'Swargate\r\n'),
(9, 'Jagjit Mehata\r\n', 'jagjitmehata@rediffmail.com\r\n', 'Marketyard\r\n'),
(10, 'Lochan Patil\r\n', 'lochanpatil@gmail.com\r\n', 'Pimpari\r\n'),
(11, 'Tushar Dake\r\n', 'tushardake@gmail.com\r\n', 'Chinchwad\r\n'),
(12, 'Netra Tiwari\r\n', 'netratiwari55@gmail.com\r\n', 'Ambegaon\r\n'),
(13, 'Ganesh Swami	', 'ganeshswami77@rediffmail.com	', 'Dhayari\r\n'),
(14, 'Jagan Rane	', 'jaganrane66@yahoo.com	\r\n', 'Wadgaon'),
(15, 'Sarita Rabate	', 'saritarabate@yahoo.com	', 'Hadpasar\r\n'),
(16, 'Gajanan Pawar	', 'gajananpawar88@gmail.com	', 'Kondhawa\r\n'),
(17, 'Lalit Bagale	', 'lalitbagale11@gmail.com	', 'Nigadi\r\n'),
(18, 'Ganesh Shirsat	', 'ganeshshirsat@yahoo.com	', 'Shivajinagar\r\n'),
(19, 'Saurabh Satardekar	', 'saurabhsatardekar99@hotmail.com	\r\n', 'Swargate'),
(20, 'Shanti Warang	\r\n', 'shantiwarang45@yahoo.com	', 'Marketyard'),
(21, 'Priya Hotwani	\r\n', 'priyahotwani@gmail.com	', 'Ambegaon'),
(22, 'Anjali Mulik	\r\n', 'anjalimulik1@hotmail.com	', 'Dhayari'),
(23, 'Asmita Patil	', 'asmitapatil@rediffmail.com	', 'Wadgaon\r\n'),
(24, 'Jabhavi Shirsat	', 'janhavishirsat88@gmail.com	', 'Hadpasar\r\n'),
(25, 'Akshay Kadam	', 'akshaykadam@yahoo.com	', 'Kondhawa\r\n'),
(26, 'Kunal Ramdasi	', 'kunalramdasi44@gmail.com	', 'Bhosari\r\n'),
(27, 'Sanjay Kadu	', 'sanjaykadu@rediffmail.com	', 'Nigadi\r\n'),
(28, 'Pushkar Shinde	', 'pushkarshinde121@gmail.com	', 'Shivajinagar\r\n'),
(29, 'Sachin More	', 'sachin_more700@rediffmail.com	', 'Swargate\r\n'),
(30, 'Jyoti Hajare	\r\n', 'jyotihajare3@gmail.com	', 'Bhosari'),
(31, 'Dhanashree Ransing	', 'dhanashreeransing@gmail.com	\r\n', 'Marketyard'),
(32, 'Umesh Jagdale	', 'umesh.jagdale1990@gmail.com	', 'Pimpari\r\n'),
(33, 'Sukanto Biswas	', 'sukantobiswas@gmail.com	', 'Chinchwad\r\n'),
(34, 'Aishwarya Fulse	\r\n', 'aishwaryafulse@yahoo.com	', 'Ambegaon'),
(35, 'Mayuresh Solanki	\r\n', 'mayureshsolanki@gmail.com	', 'Dhayari'),
(36, 'Shubham Patil	\r\n', 'shubhampatil@yahoo.com	', 'Katraj'),
(37, 'Mamta Jetty	', 'mamtajetty@gmail.com	', 'Wakad\r\n'),
(38, 'Minashi Salunke	\r\n', 'minashisalunke@yahoo.com	', 'Vimannagar'),
(39, 'Swapnil Yenpure	', 'swapnilyenpure@gmail.com	', 'Ranjangaon\r\n'),
(40, 'Pavan Reddy	', 'pavanreddy@gmail.com	', 'Bhosari\r\n'),
(41, 'Nirmita Papdare', 'nirmitapapadre@yahoo.com	', 'Ranjangaon\r\n'),
(42, 'Santosh Warje	\r\n', 'santoshwarje78@rediffmail.com	', 'Bhosari'),
(43, 'Kanchan Pingale	', 'kanchanpingale@gmail.com	', 'Nigadi\r\n'),
(44, 'Rashmita Shaikh	', 'rashmitashaikh@yahoo.com	\r\n', 'Shivajinagar'),
(45, 'Rutuja Kamble	', 'rutujakamble34@yahoo.com	', 'Swargate\r\n'),
(46, 'Tushar Nair	', 'tusharnair123@gmail.com	', 'Marketyard\r\n'),
(47, 'Pulin Naik	', 'pulinnaik@yahoo.com	', 'Pimpari\r\n'),
(48, 'Samidha Patil	', 'samidhapatil564@gmail.com	', 'Bhosari\r\n'),
(49, 'Raksha Pandit	', 'rakshapandit@yahoo.in	', 'Nigadi\r\n'),
(50, 'Arnav Paranjape	', 'arnavparanjape768@gmail.com	', 'Katraj\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE IF NOT EXISTS `employee` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(12) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Password`, `Email`, `Contact`) VALUES
(1, 'aksh', '9923193386', 'ashvin@mymo.co.in', '66845321');

-- --------------------------------------------------------

--
-- Table structure for table `enquiery`
--

CREATE TABLE IF NOT EXISTS `enquiery` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Phone` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `TypeEvent` varchar(250) NOT NULL,
  `LocationEvent` varchar(250) NOT NULL,
  `Attendees` varchar(250) NOT NULL,
  `Budget` varchar(250) NOT NULL,
  `Date` varchar(250) NOT NULL,
  `ServicesReuired` varchar(250) NOT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `enquiery`
--

INSERT INTO `enquiery` (`ID`, `Name`, `Email`, `Phone`, `Address`, `TypeEvent`, `LocationEvent`, `Attendees`, `Budget`, `Date`, `ServicesReuired`) VALUES
(1, 'Ashvin Yadav', 'ashvin@mymo.co.in', 'sllscsgckajs', 'dzcd', 'test', 't', 'bkb', 'n.', '2017-10-11', 'performer');

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE IF NOT EXISTS `event` (
  `eventID` int(11) NOT NULL AUTO_INCREMENT,
  `customerID` int(11) NOT NULL,
  `catererID` varchar(50) NOT NULL,
  `venueID` varchar(50) NOT NULL,
  `decoraterID` varchar(50) NOT NULL,
  `performerID` varchar(50) NOT NULL,
  PRIMARY KEY (`eventID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE IF NOT EXISTS `vendor` (
  `vendorID` int(11) NOT NULL AUTO_INCREMENT,
  `vendorCompany` varchar(255) NOT NULL,
  `vendorName` varchar(255) NOT NULL,
  `vendorEmail` varchar(255) DEFAULT NULL,
  `vendorCity` varchar(255) DEFAULT NULL,
  `vendorType` varchar(255) DEFAULT NULL,
  `vendorPhone` varchar(12) NOT NULL,
  `vendorPrice` int(11) NOT NULL,
  PRIMARY KEY (`vendorID`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=31 ;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `vendorCompany`, `vendorName`, `vendorEmail`, `vendorCity`, `vendorType`, `vendorPhone`, `vendorPrice`) VALUES
(1, 'Mehata & Sons.', 'Aakash Mehata	', 'aakashmehata@rediffmail.com	', 'Swargate	', 'Venue', '8856120345', 0),
(2, 'Shalini Roadlines', 'Rupesh Kurle	', 'rupeshkurle@gmail.com	', 'Marketyard		', 'Venue', '8856129054', 0),
(3, 'R & J Decoraters\r\n', 'Ramakant Mane	', 'ramakantmane32@gmail.com	', 'Pimpari		', 'Decorator	', '9868125434', 0),
(4, 'KK Caterers', 'Arabaj Shaikh	', 'arabajshaikh12@gmail.com	', 'Chinchwad		', 'Caterers	\r\n', '9868122365', 0),
(5, 'Flying Security', 'abarej Mulla	', 'tabarejmulla23@gmail.com	T', 'Ambegaon		', 'Venue', '', 0),
(6, 'RK Music & Co.', 'John Fernandis	', 'johnfernandis99@yahoo.cin	', 'Dhayari		', 'Performer', '', 0),
(7, 'Shivam Pvt. Ltd.', 'Hina Tondwalkar	', 'hinatondwalkar@yahoo.in	\r\n', 'Wadgaon		', 'Venue', '', 0),
(8, 'RS Caterers\r\n', 'Rajesh Sane	', 'rajeshsane123@rediffmail.com	', 'Hadpasar		', 'Caterers	', '', 0),
(9, 'SK via Songs', 'Somnath Keluskar	', 'somnathkeluskar@gmail.com	', 'Kondhawa		', 'Performer', '', 0),
(10, 'RJ Security', 'Rohit Jadhav	\r\n', 'rohitjadhav@rediffmail.com	', 'Vimannagar		', 'Venue', '', 0),
(11, 'Sameer Caterers\r\n', 'Rohan Aadav	', 'rohanaadav43@gmail.com	', 'Ranjangaon		', 'Caterers	', '', 0),
(12, 'Sheetal Music & Co.', 'Rashmi Shukla	', 'rashmishukla90@rediffmail.com	\r\n', 'Bhosari		', 'Performer', '', 0),
(13, 'Shamali Bhojanalaywale\r\n', 'Anthony Mello	', 'anthonymello12@gmail.com	', 'Nigadi		', 'Caterers	', '', 0),
(14, 'Best Security Pvt. Ltd.\r\n', 'Gurunath Parab	', 'gurunathparab6@gmail.com	', 'Shivajinagar		', 'Venue', '', 0),
(15, 'Miamusic\r\n', 'Ganesh Raghav	', 'ganeshraghav4@yahoo.in	', 'Swargate		', 'Performer', '', 0),
(16, 'RB Decorator\r\n', 'Rajan Bansode	', 'rajanbansode2@rediffmail.com	', 'Marketyard		', 'Decorator	', '', 0),
(17, 'My Security\r\n', 'Harish Joshi	', 'harishjoshi76@rediffmail.com	', 'Pimpari		', 'Venue', '', 0),
(18, 'Lata Music Company', 'Ajas Khan	', 'ajaskhan32@gmail.com	', 'Chinchwad		', 'Performer', '', 0),
(19, 'Total Security & Co.\r\n', 'Shubham Sarkare	', 'shubhamsarkare@gmail.com	', 'Ambegaon		', 'Venue', '', 0),
(20, 'Satyam Decorator and Speakers\r\n', 'Sunil Chavan	', 'sunilchavan@rediffmail.com	', 'Dhayari		', 'Decorator	', '', 0),
(21, 'JS Roadlines\r\n', 'Jagdish Sonawane	', 'jagdishsonawane23@yahoo.in	', 'Wadgaon		', 'Venue', '', 0),
(22, 'Potdar Transport Co.', 'Rashmi Potdar	', 'rashmipotdar123@rediffmail.com	', 'Hadpasar		\r\n', 'Venue', '', 0),
(23, '', 'Shyam Deshmukh	', 'shyamdeshmukh09@gmail.com	', 'Kondhawa		', 'Venue', '', 0),
(24, 'B & B Decorator\r\n', 'Giriraj Bansode	', 'girirajbansode123@yahoo.in	', 'Katraj		', 'Decorator	', '', 0),
(25, 'Surel Sangitalay & Co.\r\n', 'Rachana Pawar	', 'rachanapawar123@gmail.com	', 'Wakad		', 'Performer', '', 0),
(26, 'Tech Tools & Sons\r\n', 'Shobha Mulik	', 'shobhamulik12@rediffmail.com	', 'Vimannagar		', 'Venue', '', 0),
(27, 'TT Tours\r\n', 'Suraj Mahadik	', 'surajmahadik4@gmail.com	', 'Ranjangaon		', 'Venue', '', 0),
(28, 'Trowcare Deco\r\n', 'Shakti Shah	', 'shaktishah@yahoo.in	', 'Bhosari		', 'Decorator	', '', 0),
(29, 'Suman Raje Music Company\r\n', 'Esha Shah	', 'eshashah@rediffmail.com	', 'Nigadi		', 'Performer', '', 0),
(30, 'Yellow Tech-end Co.\r\n', 'Gauri Wanakhade	', 'gauriwanakhade@gmail.com	', 'Shivajinagar		', 'Venue', '', 0);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
