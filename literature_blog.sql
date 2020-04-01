-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 01, 2020 at 07:46 AM
-- Server version: 10.4.6-MariaDB
-- PHP Version: 7.3.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `literature blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `contact`
--

CREATE TABLE `contact` (
  `sno` int(50) NOT NULL,
  `phone` varchar(11) NOT NULL,
  `name` varchar(50) NOT NULL,
  `msg` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `date` datetime(6) NOT NULL DEFAULT current_timestamp(6)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `contact`
--

INSERT INTO `contact` (`sno`, `phone`, `name`, `msg`, `email`, `date`) VALUES
(44, '99999999', 'kushal', 'Test 3', 'emailaddress@gmail.com', '2020-03-23 17:21:10.800657');

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `sno` int(11) NOT NULL,
  `title` text NOT NULL,
  `slug` varchar(25) NOT NULL,
  `content` varchar(5000) NOT NULL,
  `img_file` varchar(20) NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`sno`, `title`, `slug`, `content`, `img_file`, `date`) VALUES
(1, 'First post', 'first-post', 'If MAIL_ASCII_ATTACHMENTS is set to True, filenames will be converted to an ASCII equivalent. This can be useful when using a mail relay that modify mail content and mess up Content-Disposition specification when filenames are UTF-8 encoded. The conversion to ASCII is a basic removal of non-ASCII characters. It should be fine for any unicode character that can be decomposed by NFKD into one or more ASCII characters. If you need romanization/transliteration (i.e ß ? ss) then your application should do it and pass a proper ASCII string.', '127372_1.jpg', '2020-03-31 21:39:14'),
(2, 'Second post', 'second-post', 'When you are sending messages inside of unit tests, or in a development environment, it’s useful to be able to suppress email sending.\r\n\r\nIf the setting TESTING is set to True, emails will be suppressed. Calling send() on your messages will not result in any messages being actually sent.\r\n\r\nAlternatively outside a testing environment you can set MAIL_SUPPRESS_SEND to False. This will have the same effect.\r\n\r\nHowever, it’s still useful to keep track of emails that would have been sent when you are writing unit tests.', '127372_1.jpg', '2020-03-25 08:19:35'),
(3, 'Third post', 'third-post', 'Flask-Mail now provides signalling support through a email_dispatched signal. This is sent whenever an email is dispatched (even if the email is not actually sent, i.e. in a testing environment).\r\n\r\nA function connecting to the email_dispatched signal takes a Message instance as a first argument, and the Flask app instance as an optional argument:', '127372_1.jpg', '2020-03-30 12:05:11'),
(139, 'fourth post', 'fourth-post', 'okay', '127372_1.jpg', '2020-04-01 11:07:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `contact`
--
ALTER TABLE `contact`
  ADD PRIMARY KEY (`sno`),
  ADD UNIQUE KEY `phone` (`phone`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`sno`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `contact`
--
ALTER TABLE `contact`
  MODIFY `sno` int(50) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `sno` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
