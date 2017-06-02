-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: May 25, 2017 at 05:58 AM
-- Server version: 10.1.13-MariaDB
-- PHP Version: 7.0.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `damu`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `admin_id` int(10) NOT NULL,
  `fname` varchar(30) DEFAULT NULL,
  `lname` varchar(30) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `ppic` varchar(500) NOT NULL,
  `username` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`admin_id`, `fname`, `lname`, `email`, `password`, `ppic`, `username`) VALUES
(6, 'lil', 'admin', 'admin@mail.com', '$2y$10$mhQhm1iurXF6SVuhpxr1YeedduORYS.p7hDd4/nlyEkxgzz0jX9ai', '375930.jpg', ''),
(7, NULL, NULL, NULL, '$2y$10$lC4gXCFBKVE6bM/WKRpBcumn8SZHLpRTyhSFB28v5Ty2recavsLru', '', 'admin');

-- --------------------------------------------------------

--
-- Table structure for table `bloodnews`
--

CREATE TABLE `bloodnews` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `author` varchar(20) NOT NULL,
  `posttime` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `newsphoto` varchar(900) NOT NULL,
  `imagedesc` varchar(100) NOT NULL,
  `brief` varchar(160) NOT NULL,
  `body` varchar(2000) NOT NULL,
  `post_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodnews`
--

INSERT INTO `bloodnews` (`id`, `title`, `author`, `posttime`, `newsphoto`, `imagedesc`, `brief`, `body`, `post_date`) VALUES
(32, 'Blood Donation Dates Upcoming', 'Ninja', '2017-01-13 07:50:13', '564584.jpg', 'Titanfall The Movie', 'Blood is universally recognized as the most precious element that sustains life. It saves innumerable lives across the world in a variety of conditions.', 'The need for blood is great - on any given day, approximately 39,000 units of Red Blood Cells are needed. More than 29 million units of blood components are transfused every year. Donate Blood Despite the increase in the number of donors, blood remains in short supply during emergencies, mainly attributed to the lack of information and accessibility. We positively believe this tool can overcome most of these challenges by effectively connecting the blood donors with the blood recipients.', '0000-00-00'),
(34, 'Moi University - Main Campus', 'Shifter', '2017-01-13 07:55:30', '193647.jpg', 'Assasin creed', 'Blood is universally recognized as the most precious element that sustains life. It saves innumerable lives across the world in a variety of conditions.', 'The need for blood is great - on any given day, approximately 39,000 units of Red Blood Cells are needed. More than 29 million units of blood components are transfused every year. Donate Blood Despite the increase in the number of donors, blood remains in short supply during emergencies, mainly attributed to the lack of information and accessibility. We positively believe this tool can overcome most of these challenges by effectively connecting the blood donors with the blood recipients.', '0000-00-00'),
(35, 'Blood Donation Dates Upcoming', 'Gacheru', '2017-01-13 07:57:42', '298675.jpg', 'Horror', 'Blood is universally recognized as the most precious element that sustains life. It saves innumerable lives across the world in a variety of conditions.', 'The need for blood is great - on any given day, approximately 39,000 units of Red Blood Cells are needed. More than 29 million units of blood components are transfused every year. Donate Blood Despite the increase in the number of donors, blood remains in short supply during emergencies, mainly attributed to the lack of information and accessibility. We positively believe this tool can overcome most of these challenges by effectively connecting the blood donors with the blood recipients', '0000-00-00'),
(37, 'Blood Donation Dates Upcoming', 'Kunta', '2017-01-13 08:08:32', '37950.jpg', 'Cr7 with Messi', 'Blood is universally recognized as the most precious element that sustains life. It saves innumerable lives across the world in a variety of conditions.', 'The need for blood is great - on any given day, approximately 39,000 units of Red Blood Cells are needed. More than 29 million units of blood components are transfused every year. Donate Blood Despite the increase in the number of donors, blood remains in short supply during emergencies, mainly attributed to the lack of information and accessibility. We positively believe this tool can overcome most of these challenges by effectively connecting the blood donors with the blood recipients', '0000-00-00'),
(38, 'Blood Donation Dates Upcoming', 'Gacheru', '2017-02-20 08:03:28', '968843.jpg', 'Donec', 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur', 'Donec sed odio dui. Etiam porta sem malesuada magna mollis euismod. Nullam id dolor id nibh ultricies vehicula ut id elit. Morbi leo risus, porta ac consectetur ac, vestibulum at eros. Praesent commodo cursus magna.\r\n\r\nDuis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Cras mattis consectetur purus sit amet fermentum. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh.\r\n\r\nDonec sed odio dui. Cras justo odio, dapibus ac facilisis in, egestas eget quam. Vestibulum id ligula porta felis euismod semper. Fusce dapibus, tellus ac cursus commodo, tortor mauris condimentum nibh, ut fermentum massa justo sit amet risus.', '0000-00-00'),
(39, 'freeman', 'freezie', '2017-04-04 10:08:19', '120082.png', 'authentic', 'This is freezie World', 'welocme all donors to feezie world you will be allowed to donate blood after every 4 months .. enjoy your stay...', '0000-00-00'),
(40, 'New Blood Camps', 'Ninja', '2017-04-16 20:54:23', '472787.jpg', 'Roses are red violets are blue', 'Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id n', 'Nullam quis risus eget urna mollis ornare vel eu leo. Cum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Nullam id dolor id nibh ultricies vehicula.\r\n\r\nCum sociis natoque penatibus et magnis dis parturient montes, nascetur ridiculus mus. Donec ullamcorper nulla non metus auctor fringilla. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit. Donec ullamcorper nulla non metus auctor fringilla.\r\n\r\nMaecenas sed diam eget risus varius blandit sit amet non magna. Donec id elit non mi porta gravida at eget metus. Duis mollis, est non commodo luctus, nisi erat porttitor ligula, eget lacinia odio sem nec elit.', '0000-00-00'),
(41, 'mik', 'kim', '2017-05-15 11:46:15', '333309.jpg', '9io', 'jjjj jjjjjjjj', 'xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxxx xxxxxxxxxxxxxxxxxxxxxxxxxxx\r\nfffff', '0000-00-00');

-- --------------------------------------------------------

--
-- Table structure for table `bloodunits`
--

CREATE TABLE `bloodunits` (
  `id` int(10) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `units` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `bloodunits`
--

INSERT INTO `bloodunits` (`id`, `bloodgroup`, `units`) VALUES
(1, 'A+', 90),
(2, 'A-', 95),
(3, 'B+', 107),
(4, 'B-', 79),
(5, 'AB+', 56),
(6, 'AB-', 142),
(7, 'O+', 66),
(8, 'O-', 39);

-- --------------------------------------------------------

--
-- Table structure for table `camps`
--

CREATE TABLE `camps` (
  `id` int(10) NOT NULL,
  `title` varchar(100) NOT NULL,
  `body` varchar(1000) NOT NULL,
  `author` varchar(100) NOT NULL,
  `odate` date NOT NULL,
  `cdate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `camps`
--

INSERT INTO `camps` (`id`, `title`, `body`, `author`, `odate`, `cdate`) VALUES
(9, 'Moi University', 'Eldoret', 'Administrator', '2016-12-31', '2017-01-14'),
(10, 'Kesses', 'Soy', 'Ninja', '2017-03-29', '2017-04-12');

-- --------------------------------------------------------

--
-- Table structure for table `doctorregister`
--

CREATE TABLE `doctorregister` (
  `id` int(10) NOT NULL,
  `fname` varchar(20) DEFAULT NULL,
  `lname` varchar(20) DEFAULT NULL,
  `code` varchar(20) DEFAULT NULL,
  `email` varchar(40) DEFAULT NULL,
  `password` varchar(500) DEFAULT NULL,
  `ppic` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `doctorregister`
--

INSERT INTO `doctorregister` (`id`, `fname`, `lname`, `code`, `email`, `password`, `ppic`) VALUES
(11, 'real', 'doctor', 'DOC123', 'doc@mail.com', '$2y$10$PBQPf1wVHcleZO2Et5dA5e0lNMmvnDK5oDRj7t4VfrQFQQPxNJWNu', '149929.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `donarregister`
--

CREATE TABLE `donarregister` (
  `id` int(100) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `gender` varchar(10) NOT NULL,
  `b_id` varchar(5) NOT NULL,
  `ppic` varchar(1000) NOT NULL,
  `day` int(10) NOT NULL,
  `month` varchar(30) NOT NULL,
  `year` int(5) NOT NULL,
  `county` varchar(30) NOT NULL,
  `mobile` int(15) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL,
  `last_donation_date` date NOT NULL,
  `last_donation_camp` varchar(30) NOT NULL,
  `number_of_donations` int(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donarregister`
--

INSERT INTO `donarregister` (`id`, `fname`, `lname`, `gender`, `b_id`, `ppic`, `day`, `month`, `year`, `county`, `mobile`, `email`, `password`, `last_donation_date`, `last_donation_camp`, `number_of_donations`) VALUES
(9, 'Brian', 'Gacheru', 'Male', 'O-', '457056.jpg', 30, 'October', 1995, '', 710301320, 'bryo4419@gmail.com', '$2y$10$3slXWI6f28TVnsUcrLr6ReJP8RaE3jMX.GroT/ee/.8/kGCbBpCZy', '2016-03-30', 'Eldoret', 5),
(10, 'Peinah', 'Jepkorir', 'Female', 'B+', '728239.jpg', 22, 'December', 1995, '', 729318034, 'peinah@mail.com', '$2y$10$gND8bnkcYOSrUJkVzmFalONP.oziWO7HF5ikq2UEwhSp86WPrmf5u', '2016-04-14', 'Moi University', 4),
(14, 'lil', 'ninja', 'Female', 'A-', '879607.jpg', 17, 'July', 1989, '', 729318067, 'lil@mail.com', '$2y$10$.akNwCFiTwp6xTiNlt5TdeJAxFGiIy6j4TxK6iKhaFz1.3QjewbVm', '2015-06-25', 'Moi University', 4),
(15, 'real', 'user', 'Female', 'AB-', '', 17, 'February', 1990, '', 729318009, 'user1@mail.com', '$2y$10$ZIfUEOmdABC0jAqAeAgsM.aW/RQXVaCZDQN8mHLdcjB1rOnZVVene', '2016-07-21', 'Kesses', 6),
(16, 'julie', 'wambui', 'Female', 'B-', '71608.jpg', 19, 'December', 1995, '', 705701719, 'julie@mail.com', '$2y$10$OL3ZY1hdIJ9xCdrwczAZq.Nndff26V4tWsVXT/rv3/mvP0tIcV/gG', '2015-10-19', 'Kesses', 3),
(18, 'Yule', 'Msee', 'Female', 'AB+', '565255.jpg', 1, 'January', 1993, '', 710301323, 'msee@mail.com', '$2y$10$XSmFUqcceZDnmAY2p/buduTIDs3jqhhaGiqkuA4TNDLWyjymgxRI2', '2017-01-16', 'Kesses', 6),
(19, 'Donor', 'Ninja', 'Female', 'O-', '869180.jpg', 10, 'April', 1995, '', 705107916, 'donor@mail.com', '$2y$10$kV57o9DlJXrAJ8GmDu0Wf.pDx0R.sc93Ng6jB7vzaY9eP0Hqg7vXC', '2017-01-16', 'Moi University', 3),
(20, 'Latifa', 'Lee', 'Female', 'O+', '873083.jpg', 30, 'November', 1997, '', 710301326, 'lee@mail.com', '$2y$10$yOhLpg1gUwdQLonQBC7BG.NArhAnSR8Q5G5Of0Ft/dPZH.Z4mzB96', '2017-02-15', 'Eldoret', 6),
(21, 'Don', 'Don', 'Female', 'A+', '382515.jpg', 1, 'January', 1993, '', 710301329, 'don@mail', '$2y$10$Yr0MBUkjbidSLltBjhQm0eNQiUAcakvs6A0AcP7tSGPgmFxL4nGYK', '2017-02-15', 'Town', 5),
(22, 'Developer', 'Carol', 'Female', 'B-', '3652.png', 16, 'October', 1996, '', 710342342, 'developer@mail.com', '$2y$10$XSkSN2m.EaX6J1opbb7Ahecdm8sQGdiWr9.COzOyJTJwfgqg2UyWO', '2017-04-16', 'Kesses', 6),
(23, 'Freezie', 'Humphrey', 'Male', 'AB+', '396112.png', 28, 'February', 1993, '', 708720092, 'humphreyb@appslab.co.ke', '$2y$10$QeFdSidV/9dwlv1k6//gae2DRnzjhA3o2cT8PLlKopI68mk0RA4sC', '2017-04-04', 'mukuru', 1),
(27, 'The', 'Operator', 'Male', 'O-', '', 1, 'January', 1990, 'Kiambu', 710301328, 'op@mail.com', '$2y$10$lSMUPjPYfum6tcb90smeMuC2mpknSBW.Vmte9pnH/R/bVXzhOecUK', '2017-04-16', 'Moi University', 5),
(28, 'Manu', 'El', 'Male', '', '', 4, 'March', 1993, 'Uasin Gishu', 710301334, 'manu@mail.com', '$2y$10$uf1R/oTg7D9E4TN3BjqI2e./0cLv98jSk2mHleRfhPF9YRskzb.Qy', '0000-00-00', '', 0),
(29, 'Siali', 'Gibs', 'Male', '', '450837.png', 1, 'January', 2000, 'Kiambu', 789898989, 'silali@gmail.com', '$2y$10$aASgXNmjwvV7YefpLAMHx.LEnEhxS/LMMYvgXaqs5m9Ksy51AQyQK', '0000-00-00', '', 0),
(30, 'Manu', 'gEEK', 'Male', 'o-', '', 1, 'January', 1994, 'Machakos', 712909090, 'mail@mail.com', '$2y$10$NkUrbCZbSAEybM9zQjMtIOsqnfokYyH9BaEBEz7N9Um02MnEQkgN2', '0000-00-00', '', 0);

-- --------------------------------------------------------

--
-- Table structure for table `donation`
--

CREATE TABLE `donation` (
  `id` int(10) NOT NULL,
  `bloodgroup` varchar(10) NOT NULL,
  `pints` int(20) NOT NULL,
  `camp` varchar(50) NOT NULL,
  `ddate` date NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `donation`
--

INSERT INTO `donation` (`id`, `bloodgroup`, `pints`, `camp`, `ddate`, `timestamp`) VALUES
(5, 'AB-', 51, 'Kesses', '2017-04-23', '2017-04-23 17:37:34'),
(6, 'O+', 28, 'Kesses', '2017-04-23', '2017-04-23 18:07:10'),
(7, 'B-', 29, 'Kesses', '2017-04-24', '2017-04-24 02:20:06'),
(8, 'O-', 26, 'Kesses', '2017-04-24', '2017-04-24 02:28:50'),
(9, 'A+', 53, 'Kesses', '2017-04-24', '2017-04-24 02:29:13'),
(10, 'A-', 44, 'Kesses', '2017-04-24', '2017-04-24 02:29:34'),
(11, 'B+', 58, 'Kesses', '2017-04-24', '2017-04-24 02:30:17'),
(12, 'AB+', 41, 'Kesses', '2017-04-24', '2017-04-24 02:30:37'),
(13, 'B-', 35, 'Moi University', '2017-04-24', '2017-04-24 02:31:25'),
(14, 'B+', 34, 'Grace', '2017-05-15', '2017-05-15 11:49:50');

-- --------------------------------------------------------

--
-- Table structure for table `requests`
--

CREATE TABLE `requests` (
  `id` int(10) NOT NULL,
  `email` varchar(50) NOT NULL,
  `fname` varchar(30) NOT NULL,
  `lname` varchar(30) NOT NULL,
  `mobile` varchar(11) NOT NULL,
  `b_id` varchar(4) NOT NULL,
  `code` varchar(30) NOT NULL,
  `reqdate` date NOT NULL,
  `status` varchar(10) NOT NULL,
  `added_timestamp` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `units` int(10) NOT NULL,
  `issuedunits` int(30) NOT NULL,
  `issueddate` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `requests`
--

INSERT INTO `requests` (`id`, `email`, `fname`, `lname`, `mobile`, `b_id`, `code`, `reqdate`, `status`, `added_timestamp`, `units`, `issuedunits`, `issueddate`) VALUES
(52, 'julie@mail.com', 'julie', 'wambui', '705701719', 'B-', '', '2017-01-07', 'Waiting', '2017-05-15 11:43:53', 4, 0, '0000-00-00'),
(55, 'donor@mail.com', 'Donor', 'Ninja', '705107916', 'O-', '', '2017-01-23', 'Received', '2017-04-28 03:13:09', 3, 0, '2017-04-23'),
(57, 'trying@mail.com', 'Just', 'Trying', '705107943', 'AB-', '', '2017-02-21', 'Received', '2017-04-28 03:13:19', 6, 6, '2017-04-23'),
(61, 'humphreyb@appslab.co.ke', 'Freezie', 'Humphrey', '708720092', 'AB+', '', '2017-04-11', 'Received', '2017-04-28 03:13:30', 5, 5, '2017-04-23'),
(93, 'bryo4419@gmail.com', 'Brian', 'Gacheru', '710301320', 'O-', '', '2017-04-23', 'Received', '2017-04-28 03:13:38', 2, 2, '2017-04-23'),
(96, 'developer@mail.com', 'Developer', 'Carol', '710342342', 'B-', '', '2017-05-01', 'Waiting', '2017-04-28 03:13:48', 4, 4, '2017-04-23'),
(97, 'op@mail.com', 'The', 'Operator', '710301328', 'O-', 'DOC123', '2017-05-03', 'Waiting', '2017-04-28 03:13:55', 4, 4, '2017-04-23'),
(98, 'mail@mail.com', 'Manu', 'gEEK', '712909090', 'o-', 'DOC123', '2017-05-05', 'Waiting', '2017-04-28 07:09:39', 5, 0, '0000-00-00');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `bloodnews`
--
ALTER TABLE `bloodnews`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `bloodunits`
--
ALTER TABLE `bloodunits`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `camps`
--
ALTER TABLE `camps`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctorregister`
--
ALTER TABLE `doctorregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donarregister`
--
ALTER TABLE `donarregister`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `donation`
--
ALTER TABLE `donation`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `requests`
--
ALTER TABLE `requests`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `admin_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `bloodnews`
--
ALTER TABLE `bloodnews`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;
--
-- AUTO_INCREMENT for table `bloodunits`
--
ALTER TABLE `bloodunits`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `camps`
--
ALTER TABLE `camps`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `doctorregister`
--
ALTER TABLE `doctorregister`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `donarregister`
--
ALTER TABLE `donarregister`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `donation`
--
ALTER TABLE `donation`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;
--
-- AUTO_INCREMENT for table `requests`
--
ALTER TABLE `requests`
  MODIFY `id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=99;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
