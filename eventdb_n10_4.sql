-- phpMyAdmin SQL Dump
-- version 4.5.4.1deb2ubuntu2
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Oct 13, 2017 at 04:52 PM
-- Server version: 5.7.19-0ubuntu0.16.04.1
-- PHP Version: 7.0.22-0ubuntu0.16.04.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `eventdb`
--

-- --------------------------------------------------------

--
-- Table structure for table `client`
--

CREATE TABLE `client` (
  `clientID` int(11) NOT NULL,
  `clientName` varchar(255) NOT NULL,
  `clientEmail` varchar(255) DEFAULT NULL,
  `clientCity` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

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

CREATE TABLE `employee` (
  `ID` int(11) NOT NULL,
  `Name` varchar(50) NOT NULL,
  `Password` varchar(50) NOT NULL,
  `Email` varchar(50) NOT NULL,
  `Contact` varchar(12) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`ID`, `Name`, `Password`, `Email`, `Contact`) VALUES
(1, 'aksh', '9923193386', 'ashvin@mymo.co.in', '66845321'),
(2, 'amit', 'amit1997', 'amitkavatkar02@gmail.com', '9420195556');

-- --------------------------------------------------------

--
-- Table structure for table `enquiery`
--

CREATE TABLE `enquiery` (
  `ID` int(11) NOT NULL,
  `Name` varchar(250) NOT NULL,
  `Email` varchar(250) NOT NULL,
  `Phone` varchar(250) NOT NULL,
  `Address` varchar(250) NOT NULL,
  `TypeEvent` varchar(250) NOT NULL,
  `LocationEvent` varchar(250) NOT NULL,
  `Attendees` varchar(250) NOT NULL,
  `Budget` varchar(250) NOT NULL,
  `Date` varchar(250) NOT NULL,
  `ServicesReuired` varchar(250) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `enquiery`
--

INSERT INTO `enquiery` (`ID`, `Name`, `Email`, `Phone`, `Address`, `TypeEvent`, `LocationEvent`, `Attendees`, `Budget`, `Date`, `ServicesReuired`) VALUES
(1, 'Ashvin Yadav', 'ashvin@mymo.co.in', 'sllscsgckajs', 'dzcd', 'test', 't', 'bkb', 'n.', '2017-10-11', 'performer'),
(2, 'Amit', 'amit@gmail.com', '9878797', 'amk', 'Birthday', 'Katraj', '400', '40000', '12/03/2018', 'performer'),
(3, 'a', 'ak@gmail.com', '98', 'amiy', 'as', 'as', '400', '40000', '12/03/2018', 'performer'),
(4, 'amit', 'amit@gmail.com', '9420195556', 'Kolamb', 'Marriage', 'Katraj', '500', '500000', '13/10/2017', 'decorator'),
(5, 'Amit Kavatkar', 'amit@gmail.com', '9156923959', 'Malvan', '', 'Pune Station', '500', '500000', '12/12/2017', 'marriage'),
(6, 'Pulin Chaudhary', 'pulin@gmail.com', '9534215652', 'Kharadi', 'birthday', 'Kharadi', '200', '100000', '25/11/2017', ''),
(7, 'Hansraj', 'hansraj@gmail.com', '9420764312', 'Kothrud', 'marriage', 'Kothrud', '500', '400000', '14/11/2017', ''),
(8, 'Hasmukh', 'hasmukh@yahoo.in', '9543456712', 'Katraj', 'birthday', 'Dhankwadi', '100', '70000', '29/10/2017', ''),
(9, 'Sudhansu', 'sudsu@gmail.com', '7643234561', 'koyana', 'anniversery', 'Nigadi', '300', '345000', '15/11/2017', ''),
(10, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(11, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(12, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(13, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(14, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(15, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(16, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(17, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(18, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(19, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(20, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(21, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(22, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'marriage', 'pune', '400', '30000', '12/11/2017', ''),
(23, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(24, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(25, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(26, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(27, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(28, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(29, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(30, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(31, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(32, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(33, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(34, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(35, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(36, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(37, 'Rajesh Khanna', 'rajkhanna@gmail.com', '9420195556', 'Katraj', 'birthday', 'Katraj', '50', '25000', '16/11/2017', ''),
(38, 'Sagar Sarang', 'sagar@gmail.com', '8787657567', 'Pune', 'anniversery', 'Nigadi', '300', '300000', '17/12/2017', ''),
(39, 'Sagar Sarang', 'sagar@gmail.com', '8787657567', 'Pune', 'anniversery', 'Nigadi', '300', '300000', '17/12/2017', ''),
(40, 'Sagar Sarang', 'sagar@gmail.com', '8787657567', 'Pune', 'anniversery', 'Nigadi', '300', '300000', '17/12/2017', ''),
(41, 'Sagar Sarang', 'sagar@gmail.com', '8787657567', 'Pune', 'anniversery', 'Nigadi', '300', '300000', '17/12/2017', ''),
(42, 'Jay Sane', 'jaisane@gmail.com', '9421095434', 'Bhosari', 'birthday', 'Nigadi', '200', '80500', '17/11/2017', ''),
(43, 'sumitra', 'sumeetra.kasat@gmail.com', '43334567', 'pune', 'birthday', 'katraj', '50', '20000', '01/01/2018', ''),
(44, 'Amit Khane', 'amit2@gmail.com', '976556625', 'katraj', 'marriage', 'katraj', '400', '40000', '13/12/2017', ''),
(45, 'Amit Khane', 'amit2@gmail.com', '976556625', 'katraj', 'marriage', 'katraj', '400', '40000', '13/12/2017', ''),
(46, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'Annivesery', 'pune', '400', '30000', '12/11/2017', ''),
(47, 'Akshay Jadhav', 'akshayj@gmail.com', '8767543421', 'Pune', 'D j Night', 'pune', '400', '30000', '12/11/2017', ''),
(48, 'Amit Khane', 'amit2@gmail.com', '976556625', 'katraj', 'marriage', 'katraj', '400', '40000', '13/12/2017', NULL),
(49, 'Amit Khane', 'amit2@gmail.com', '976556625', 'katraj', 'marriage', 'katraj', '400', '40000', '13/12/2017', NULL),
(50, 'Amit Khane', 'amit2@gmail.com', '976556625', 'katraj', 'marriage', 'katraj', '400', '40000', '13/12/2017', NULL),
(51, 'Suraj', 'suraj@gmail.com', '99999999999', 'Nashik', 'marriage', 'Pune', '1', '10000000', '10/12/2018', NULL),
(52, 'Suraj', 'suraj@gmail.com', '99999999999', 'Nashik', 'marriage', 'Pune', '1', '10000000', '10/12/2018', NULL),
(53, 'Suraj', 'suraj@gmail.com', '99999999999', 'Nashik', 'marriage', 'Pune', '1', '10000000', '10/12/2018', NULL),
(54, 'Suraj', 'suraj@gmail.com', '99999999999', 'Nashik', 'marriage', 'Pune', '1', '10000000', '10/12/2018', NULL),
(55, 'Suraj', 'suraj@gmail.com', '99999999999', 'Nashik', 'marriage', 'Pune', '1', '10000000', '10/12/2018', NULL),
(56, 'Suraj', 'suraj@gmail.com', '99999999999', 'Nashik', 'marriage', 'Pune', '1', '10000000', '10/12/2018', NULL),
(57, 'Suraj', 'suraj@gmail.com', '99999999999', 'Nashik', 'marriage', 'Pune', '1', '10000000', '10/12/2018', NULL),
(58, 'Suraj', 'suraj@gmail.com', '99999999999', 'Nashik', 'marriage', 'Pune', '1', '10000000', '10/12/2018', NULL),
(59, 'Suraj', 'suraj@gmail.com', '99999999999', 'Nashik', 'marriage', 'Pune', '1', '10000000', '10/12/2018', NULL),
(60, 'Rajesh mane', 'rajmane@gmail.com', '876753412', 'Kothrud', 'birthday', 'Swargate', '50', '25675', '12/11/2017', NULL),
(61, 'Rajesh sarang', 'rajeshsarang@gmail.com', '876734123', 'katraj', 'birthday', 'Swargate', '50', '23567', '12/11/2017', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `event`
--

CREATE TABLE `event` (
  `eventID` int(11) NOT NULL,
  `customerID` int(11) NOT NULL,
  `catererID` varchar(50) NOT NULL,
  `venueID` varchar(50) NOT NULL,
  `decoraterID` varchar(50) NOT NULL,
  `performerID` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `event`
--

INSERT INTO `event` (`eventID`, `customerID`, `catererID`, `venueID`, `decoraterID`, `performerID`) VALUES
(1, 2, 'Anthony Mello	', 'Shobha Mulik	', 'Giriraj Bansode	', 'Rashmi Shukla	'),
(2, 4, 'Rohan Aadav	', 'Shobha Mulik	', 'Giriraj Bansode	', 'Ajas Khan	');

-- --------------------------------------------------------

--
-- Table structure for table `qtns`
--

CREATE TABLE `qtns` (
  `qatid` int(100) NOT NULL,
  `typeEvent` varchar(254) NOT NULL,
  `venue` varchar(244) NOT NULL,
  `caterer` varchar(244) NOT NULL,
  `decorator` varchar(244) NOT NULL,
  `performer` varchar(244) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `qtns`
--

INSERT INTO `qtns` (`qatid`, `typeEvent`, `venue`, `caterer`, `decorator`, `performer`) VALUES
(1, 'Annivesery', 'Aakash Mehata', 'Arabaj Shaikh', 'Ramakant Mane', 'John Fernandis'),
(1, 'Birthday', 'Aakash Mehata', 'Arabaj Shaikh', 'Ramakant Mane', 'John Fernandis'),
(1, 'D j Night', 'Aakash Mehata', 'Arabaj Shaikh', 'Ramakant Mane', 'John Fernandis'),
(1, 'Marriage', 'Aakash Mehata', 'Arabaj Shaikh', 'Ramakant Mane', 'John Fernandis'),
(2, 'Annivesery', 'Rupesh Kurle', 'Rohan Aadav', 'Rajan Bansode', 'Ganesh Raghav'),
(2, 'Birthday', 'Rupesh Kurle', 'Rohan Aadav', 'Rajan Bansode', 'Ganesh Raghav'),
(2, 'D j Night', 'Rupesh Kurle', 'Rohan Aadav', 'Rajan Bansode', 'Ganesh Raghav'),
(2, 'Marriage', 'Rupesh Kurle', 'Rohan Aadav', 'Rajan Bansode', 'Ganesh Raghav'),
(3, 'Annivesery', 'Harish Joshi', 'Ajas Khan', 'Sunil Chavan', 'Rachana Pawar'),
(3, 'Birthday', 'Harish Joshi', 'Ajas Khan', 'Sunil Chavan', 'Rachana Pawar'),
(3, 'D j Night', 'Harish Joshi', 'Ajas Khan', 'Sunil Chavan', 'Rachana Pawar'),
(3, 'Marriage', 'Harish Joshi', 'Ajas Khan', 'Sunil Chavan', 'Rachana Pawar');

-- --------------------------------------------------------

--
-- Table structure for table `vendor`
--

CREATE TABLE `vendor` (
  `vendorID` int(11) NOT NULL,
  `vendorCompany` varchar(255) NOT NULL,
  `vendorName` varchar(255) NOT NULL,
  `vendorEmail` varchar(255) DEFAULT NULL,
  `vendorCity` varchar(255) DEFAULT NULL,
  `vendorType` varchar(255) DEFAULT NULL,
  `vendorPhone` varchar(12) NOT NULL,
  `vendorPrice` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `vendor`
--

INSERT INTO `vendor` (`vendorID`, `vendorCompany`, `vendorName`, `vendorEmail`, `vendorCity`, `vendorType`, `vendorPhone`, `vendorPrice`) VALUES
(1, 'Mehata & Sons.', 'Aakash Mehata	', 'aakashmehata@rediffmail.com	', 'Swargate	', 'Venue', '8856120345', 200000),
(2, 'Shalini Roadlines', 'Rupesh Kurle	', 'rupeshkurle@gmail.com	', 'Marketyard		', 'Venue', '8856129054', 50000),
(3, 'R & J Decoraters\r\n', 'Ramakant Mane	', 'ramakantmane32@gmail.com	', 'Pimpari		', 'Decorator', '9868125434', 10000),
(4, 'KK Caterers', 'Arabaj Shaikh	', 'arabajshaikh12@gmail.com	', 'Chinchwad		', 'Caterers	\r\n', '9868122365', 20000),
(5, 'Flying Security', 'abarej Mulla	', 'tabarejmulla23@gmail.com	T', 'Ambegaon		', 'Venue', '9454235642', 30000),
(6, 'RK Music & Co.', 'John Fernandis	', 'johnfernandis99@yahoo.cin	', 'Dhayari		', 'Performer', '8976451233', 15000),
(7, 'Shivam Pvt. Ltd.', 'Hina Tondwalkar	', 'hinatondwalkar@yahoo.in	\r\n', 'Wadgaon		', 'Venue', '8987561234', 70000),
(8, 'RS Caterers\r\n', 'Rajesh Sane	', 'rajeshsane123@rediffmail.com	', 'Hadpasar		', 'Caterers	', '9098675134', 30000),
(9, 'SK via Songs', 'Somnath Keluskar	', 'somnathkeluskar@gmail.com	', 'Kondhawa		', 'Performer', '8975342156', 20000),
(10, 'RJ Security', 'Rohit Jadhav	\r\n', 'rohitjadhav@rediffmail.com	', 'Vimannagar		', 'Venue', '9074124234', 20000),
(11, 'Sameer Caterers\r\n', 'Rohan Aadav	', 'rohanaadav43@gmail.com	', 'Ranjangaon		', 'Caterers', '9089125643', 15000),
(12, 'Sheetal Music & Co.', 'Rashmi Shukla	', 'rashmishukla90@rediffmail.com	\r\n', 'Bhosari		', 'Performer', '9056413423', 18000),
(13, 'Shamali Bhojanalaywale\r\n', 'Anthony Mello	', 'anthonymello12@gmail.com	', 'Nigadi		', 'Caterers	', '8767542312', 30000),
(14, 'Best Security Pvt. Ltd.\r\n', 'Gurunath Parab	', 'gurunathparab6@gmail.com	', 'Shivajinagar		', 'Venue', '8987652311', 50000),
(15, 'Miamusic\r\n', 'Ganesh Raghav	', 'ganeshraghav4@yahoo.in	', 'Swargate		', 'Performer', '9054123769', 0),
(16, 'RB Decorator\r\n', 'Rajan Bansode	', 'rajanbansode2@rediffmail.com	', 'Marketyard		', 'Decorator	', '9056421238', 0),
(17, 'My Security\r\n', 'Harish Joshi	', 'harishjoshi76@rediffmail.com	', 'Pimpari		', 'Venue', '9565452123', 0),
(18, 'Lata Music Company', 'Ajas Khan	', 'ajaskhan32@gmail.com	', 'Chinchwad		', 'Performer', '9565342167', 0),
(19, 'Total Security & Co.\r\n', 'Shubham Sarkare	', 'shubhamsarkare@gmail.com	', 'Ambegaon		', 'Venue', '9567632319', 0),
(20, 'Satyam Decorator and Speakers\r\n', 'Sunil Chavan	', 'sunilchavan@rediffmail.com	', 'Dhayari		', 'Decorator	', '9563212439', 0),
(21, 'JS Roadlines\r\n', 'Jagdish Sonawane	', 'jagdishsonawane23@yahoo.in	', 'Wadgaon		', 'Venue', '9556321232', 0),
(22, 'Potdar Transport Co.', 'Rashmi Potdar	', 'rashmipotdar123@rediffmail.com	', 'Hadpasar		\r\n', 'Venue', '9564320990', 0),
(23, '', 'Shyam Deshmukh	', 'shyamdeshmukh09@gmail.com	', 'Kondhawa		', 'Venue', '9098125673', 0),
(24, 'B & B Decorator\r\n', 'Giriraj Bansode	', 'girirajbansode123@yahoo.in	', 'Katraj		', 'Decorator	', '9880976545', 0),
(25, 'Surel Sangitalay & Co.\r\n', 'Rachana Pawar	', 'rachanapawar123@gmail.com	', 'Wakad		', 'Performer', '9812354370', 0),
(26, 'Tech Tools & Sons\r\n', 'Shobha Mulik	', 'shobhamulik12@rediffmail.com	', 'Vimannagar		', 'Venue', '', 0),
(27, 'TT Tours\r\n', 'Suraj Mahadik	', 'surajmahadik4@gmail.com	', 'Ranjangaon		', 'Venue', '', 0),
(28, 'Trowcare Deco\r\n', 'Shakti Shah	', 'shaktishah@yahoo.in	', 'Bhosari		', 'Decorator	', '', 0),
(29, 'Suman Raje Music Company\r\n', 'Esha Shah	', 'eshashah@rediffmail.com	', 'Nigadi		', 'Performer', '', 0),
(30, 'Yellow Tech-end Co.\r\n', 'Gauri Wanakhade	', 'gauriwanakhade@gmail.com	', 'Shivajinagar		', 'Venue', '', 0),
(31, 'Rane Decorators\r\n', 'Ram Rane', 'ramrane90@gmail.com	', 'kothrud', 'Decorator', '9087675434', 0),
(32, 'PS Decorator\r\n', 'Prashant Samant', 'prashantsane34@rediffmail.com	', 'Marketyard		', 'Decorator	', '9867435212', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `client`
--
ALTER TABLE `client`
  ADD PRIMARY KEY (`clientID`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `enquiery`
--
ALTER TABLE `enquiery`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TypeEvent` (`TypeEvent`);

--
-- Indexes for table `event`
--
ALTER TABLE `event`
  ADD PRIMARY KEY (`eventID`);

--
-- Indexes for table `qtns`
--
ALTER TABLE `qtns`
  ADD PRIMARY KEY (`qatid`,`typeEvent`),
  ADD KEY `toe` (`typeEvent`);

--
-- Indexes for table `vendor`
--
ALTER TABLE `vendor`
  ADD PRIMARY KEY (`vendorID`),
  ADD KEY `vendorName` (`vendorName`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `client`
--
ALTER TABLE `client`
  MODIFY `clientID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=51;
--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `enquiery`
--
ALTER TABLE `enquiery`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=62;
--
-- AUTO_INCREMENT for table `event`
--
ALTER TABLE `event`
  MODIFY `eventID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `vendor`
--
ALTER TABLE `vendor`
  MODIFY `vendorID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `qtns`
--
ALTER TABLE `qtns`
  ADD CONSTRAINT `toe` FOREIGN KEY (`typeEvent`) REFERENCES `enquiery` (`TypeEvent`) ON DELETE CASCADE ON UPDATE CASCADE;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
