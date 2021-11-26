-- phpMyAdmin SQL Dump
-- version 5.0.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jul 04, 2021 at 12:47 AM
-- Server version: 10.4.17-MariaDB
-- PHP Version: 8.0.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbjobsportal`
--

-- --------------------------------------------------------

--
-- Table structure for table `application`
--

CREATE TABLE `application` (
  `appid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `jobid` int(11) NOT NULL,
  `cv` varchar(1000) NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `application`
--

INSERT INTO `application` (`appid`, `userid`, `jobid`, `cv`, `date`) VALUES
(3, 2, 1, 'KRINA PDF.pdf' , '2023-11-21')
INSERT INTO `application` (`appid`, `userid`, `jobid`, `cv`, `date`) VALUES
(4, 9, 0, 'RAMESH PDF.pdf' , '2023-11-21')
INSERT INTO `application` (`appid`, `userid`, `jobid`, `cv`, `date`) VALUES
(5, 10, 2, 'YASH PDF.pdf' , '2023-11-21')




-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `catid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`catid`, `name`) VALUES
(1, 'Front End')
INSERT INTO `categories` (`catid`, `name`) VALUES
(2, 'Back End')
INSERT INTO `categories` (`catid`, `name`) VALUES
(3, 'Android Development');

-- --------------------------------------------------------

--
-- Table structure for table `employer`
--

CREATE TABLE `employer` (
  `empid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `employer`
--

INSERT INTO `employer` (`empid`, `name`, `email`, `password`, `type`) VALUES
(4, 'Ramesh', 'ramesh@gmail.com', '1234', 1),
(5, 'Rishabh', 'rishabh@gmail.com', '1234', 1);
(6, 'Samikshya', 'samikshya@gmail.com', '1234', 1);
(5, 'Saniya', 'saniya@gmail.com', '1234', 1);


-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `jobid` int(11) NOT NULL,
  `title` varchar(50) NOT NULL,
  `catid` int(11) NOT NULL,
  `description` varchar(50) NOT NULL,
  `salary` varchar(50) NOT NULL,
  `timing` varchar(50) NOT NULL,
  `location` varchar(50) NOT NULL,
  `empid` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jobs`
--

INSERT INTO `jobs` (`jobid`, `title`, `catid`, `description`, `salary`,
`timing`, `location`, `empid`) VALUES
(1, 'FrontEnd Designer', 1, 'React Js,HTML,CSS,JS', '20000', '11 to 1',
'Delhi,India', 2)
INSERT INTO `jobs` (`jobid`, `title`, `catid`, `description`, `salary`,
`timing`, `location`, `empid`) VALUES
(2, 'Android developer', 3, 'Java,Kotlin', '25000', '3 to 5 ',
'Mumbai,India', 2)
INSERT INTO `jobs` (`jobid`, `title`, `catid`, `description`, `salary`,
`timing`, `location`, `empid`) VALUES
(3, 'Software Tester', 2, 'Software Engineering', '35000', '9 to 5 ',
'Hyderabad,India', 2);

-- --------------------------------------------------------

--
-- Table structure for table `profile`
--

CREATE TABLE `profile` (
  `profileid` int(11) NOT NULL,
  `userid` int(11) NOT NULL,
  `qualification` varchar(50) NOT NULL,
  `exp` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `profile`
--

INSERT INTO `profile`(`profileid`, `userid`, `qualification`, `exp`)
VALUES ('1','1','Btech','3 months');
INSERT INTO `profile`(`profileid`, `userid`, `qualification`, `exp`)
VALUES ('2','3','Mtech','1 yr');
INSERT INTO `profile`(`profileid`, `userid`, `qualification`, `exp`)
VALUES ('3','2','PhD','6 yrs');

-----------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `userid` int(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` varchar(50) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`userid`, `name`, `email`, `password`, `type`) VALUES
(2, 'Yash', 'yash@gmail.com', '1234', 2),
INSERT INTO `user` (`userid`, `name`, `email`, `password`, `type`) VALUES
(9, 'Krina', 'krinapanchal2002@gmail.com', '1234', 2),
INSERT INTO `user` (`userid`, `name`, `email`, `password`, `type`) VALUES
(10, 'Arsal', 'arsal@gmail.com', '1234', 2),
INSERT INTO `user` (`userid`, `name`, `email`, `password`, `type`) VALUES
(11, 'harry potter', 'harrypotter@gmail.com', '1234', 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `application`
--
ALTER TABLE `application`
  ADD PRIMARY KEY (`appid`),
  ADD KEY `FK_application` (`userid`);

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`catid`);

--
-- Indexes for table `employer`
--
ALTER TABLE `employer`
  ADD PRIMARY KEY (`empid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`jobid`),
  ADD KEY `FK_jobs` (`empid`);

--
-- Indexes for table `profile`
--
ALTER TABLE `profile`
  ADD PRIMARY KEY (`profileid`),
  ADD KEY `FK_profile` (`userid`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`userid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `application`
--
ALTER TABLE `application`
  MODIFY `appid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `catid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employer`
--
ALTER TABLE `employer`
  MODIFY `empid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `jobid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `profile`
--
ALTER TABLE `profile`
  MODIFY `profileid` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `userid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `application`
--
ALTER TABLE `application`
  ADD CONSTRAINT `FK_application` FOREIGN KEY (`userid`) REFERENCES `user` (`userid`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
