-- phpMyAdmin SQL Dump
-- version 4.6.6deb5
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 21, 2020 at 02:45 PM
-- Server version: 10.1.43-MariaDB-0ubuntu0.18.04.1
-- PHP Version: 7.2.26-1+ubuntu18.04.1+deb.sury.org+1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csvtask`
--

-- --------------------------------------------------------

--
-- Table structure for table `Details`
--

CREATE TABLE `Details` (
  `ID` int(10) NOT NULL,
  `First_Name` varchar(20) NOT NULL,
  `Last_Name` varchar(30) NOT NULL,
  `Username` varchar(50) NOT NULL,
  `Password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `Details`
--

INSERT INTO `Details` (`ID`, `First_Name`, `Last_Name`, `Username`, `Password`) VALUES
(1343, 'Ram ', 'Sharma', 'Ram@123.com', '25d55ad283aa400af464c76d713c07ad'),
(1344, 'Radhe ', 'Sharma', 'Radhe@123.com', '25d55ad283aa400af464c76d713c07ad'),
(1346, 'Om ', 'Prakash', 'Omprakash@123.com', '25d55ad283aa400af464c76d713c07ad'),
(1350, 'Pain ', 'Akora', 'Akora@123.com', '0573bab8ef78be0c866ef674e26860c6'),
(1351, 'Aron ', 'Finch', 'Finch@1233.com', '0573bab8ef78be0c866ef674e26860c6'),
(1354, 'Raj ', 'Rudani', 'raj@123g.com', '25d55ad283aa400af464c76d713c07ad'),
(1357, 'John ', 'Jac', 'John@123.com', '25d55ad283aa400af464c76d713c07ad'),
(1360, 'Gyan ', 'Vatsal', 'Gyan@123.com', '25d55ad283aa400af464c76d713c07ad'),
(1367, 'David ', 'Warner', 'David@123.com', '0573bab8ef78be0c866ef674e26860c6'),
(1370, 'Samad ', 'Vora', 'Samad@123.com', '25d55ad283aa400af464c76d713c07ad'),
(1377, 'Wood ', 'Mark', 'Wood@123.com', '0573bab8ef78be0c866ef674e26860c6'),
(1383, 'Urvik ', 'Patel', 'patel@123g.com', '25d55ad283aa400af464c76d713c07ad'),
(1386, 'Dhaval ', 'Soni', 'Dhaval@123.com', '25d55ad283aa400af464c76d713c07ad'),
(1393, 'Navik ', 'Nak', 'Nakn@123.com', '0573bab8ef78be0c866ef674e26860c6'),
(1394, 'Nandu ', 'Prakash', 'Nandu@124.com', '0573bab8ef78be0c866ef674e26860c6');

-- --------------------------------------------------------

--
-- Table structure for table `login_details`
--

CREATE TABLE `login_details` (
  `username` varchar(40) NOT NULL,
  `last_activity` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `login_details`
--

INSERT INTO `login_details` (`username`, `last_activity`) VALUES
('', '2020-03-21 06:39:28'),
('Akora@123.com', '2020-03-20 10:31:40'),
('David@123.com', '2020-03-20 12:16:00'),
('Dhaval@123.com', '2020-03-21 08:16:27'),
('Finch@1233.com', '2020-03-20 12:14:57'),
('Gyan@123.com', '2020-03-19 07:12:09'),
('John@123.com', '2020-03-19 07:07:51'),
('Nakn@123.com', '2020-03-19 07:14:06'),
('Nandu@124.com', '2020-03-19 07:13:07'),
('Omprakash@123.com', '2020-03-19 07:11:21'),
('patel@123g.com', '2020-03-21 09:15:31'),
('Radhe@123.com', '2020-03-20 08:52:39'),
('raj@123g.com', '2020-03-18 07:28:13'),
('Ram@123.com', '2020-03-20 12:16:25'),
('Samad@123.com', '2020-03-19 07:14:54'),
('Wood@123.com', '2020-03-19 07:10:07');

-- --------------------------------------------------------

--
-- Table structure for table `Message`
--

CREATE TABLE `Message` (
  `Id` int(100) NOT NULL,
  `Sender_Id` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `Receiver_Id` varchar(100) COLLATE utf8mb4_bin NOT NULL,
  `Message` varchar(1000) COLLATE utf8mb4_bin NOT NULL,
  `Time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `Status` varchar(10) COLLATE utf8mb4_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_bin;

--
-- Dumping data for table `Message`
--

INSERT INTO `Message` (`Id`, `Sender_Id`, `Receiver_Id`, `Message`, `Time`, `Status`) VALUES
(2, 'patel@123g.com', 'John@123.com', 'hello', '2020-03-12 10:20:40', 'read'),
(3, 'patel@123g.com', 'Dhaval@123.com', 'hello', '2020-03-12 10:59:11', 'Delete'),
(4, 'patel@123g.com', 'John@123.com', 'How Are You', '2020-03-12 10:59:27', 'read'),
(5, 'patel@123g.com', 'Dhaval@123.com', 'gfdgf', '2020-03-12 11:16:13', 'read'),
(6, 'patel@123g.com', 'Dhaval@123.com', 'hello', '2020-03-12 11:33:02', 'read'),
(7, 'patel@123g.com', 'Dhaval@123.com', 'fds', '2020-03-12 11:33:08', 'read'),
(8, 'patel@123g.com', 'Dhaval@123.com', 'good', '2020-03-12 11:33:31', 'read'),
(10, 'raj@123g.com', 'patel@123g.com', 'hiii', '2020-03-12 12:51:39', 'read'),
(11, 'patel@123g.com', 'Samad@123.com', 'hello', '2020-03-12 13:19:15', 'read'),
(12, 'patel@123g.com', 'Wood@123.com', 'gfdgf', '2020-03-12 13:19:33', 'read'),
(13, 'patel@123g.com', 'Dhaval@123.com', 'yjyj', '2020-03-13 05:37:49', 'read'),
(14, 'patel@123g.com', 'Dhaval@123.com', 'rettr', '2020-03-13 05:52:22', 'read'),
(15, 'patel@123g.com', 'Dhaval@123.com', 'vnhvbghjg', '2020-03-13 06:02:15', 'Delete'),
(16, 'patel@123g.com', 'Dhaval@123.com', 'fghg  yrttttttttttttttttttttttttt ytryyyyyyyyyyyyyyyyyyy hfggggggggggggggggggg  tfyhtg', '2020-03-13 06:03:41', 'read'),
(17, 'patel@123g.com', 'raj@123g.com', 'hii', '2020-03-13 06:13:25', 'read'),
(18, 'patel@123g.com', 'raj@123g.com', 'How Are You', '2020-03-13 06:13:38', 'read'),
(19, 'patel@123g.com', 'raj@123g.com', 'how are you', '2020-03-13 07:05:51', 'read'),
(20, 'Dhaval@123.com', 'patel@123g.com', 'hii', '2020-03-13 07:14:40', 'read'),
(21, 'Dhaval@123.com', 'patel@123g.com', 'good morning', '2020-03-13 07:14:53', 'read'),
(22, 'Dhaval@123.com', 'Samad@123.com', 'hii', '2020-03-13 07:16:31', 'read'),
(23, 'Dhaval@123.com', 'Samad@123.com', 'how r u', '2020-03-13 07:17:08', 'read'),
(24, 'Dhaval@123.com', 'patel@123g.com', 'Not Now', '2020-03-13 07:18:20', 'read'),
(25, 'patel@123g.com', 'Dhaval@123.com', 'hii', '2020-03-13 09:36:03', 'read'),
(26, 'raj@123g.com', 'patel@123g.com', 'hello', '2020-03-13 10:07:01', 'read'),
(27, 'patel@123g.com', 'raj@123g.com', 'how r u', '2020-03-13 10:07:16', 'read'),
(28, 'raj@123g.com', 'patel@123g.com', 'what', '2020-03-13 10:07:43', 'read'),
(29, 'patel@123g.com', 'raj@123g.com', 'how r u', '2020-03-13 10:07:50', 'Delete'),
(30, 'Samad@123.com', 'patel@123g.com', 'hello', '2020-03-13 10:24:17', 'read'),
(31, 'Samad@123.com', 'patel@123g.com', 'whats up', '2020-03-13 10:25:40', 'read'),
(32, 'patel@123g.com', 'Samad@123.com', 'nothing', '2020-03-13 10:26:10', 'Delete'),
(33, 'Samad@123.com', 'patel@123g.com', 'whats up', '2020-03-13 10:26:20', 'read'),
(34, 'Samad@123.com', 'patel@123g.com', 'ok', '2020-03-13 10:26:32', 'read'),
(36, 'patel@123g.com', 'Samad@123.com', 'ok', '2020-03-13 10:26:48', 'Delete'),
(37, 'Samad@123.com', 'patel@123g.com', 'no problrm', '2020-03-13 10:27:14', 'read'),
(38, 'patel@123g.com', 'Samad@123.com', 'hmm', '2020-03-13 10:27:26', 'Delete'),
(39, 'Samad@123.com', 'patel@123g.com', 'hmm', '2020-03-13 10:28:01', 'read'),
(42, 'patel@123g.com', 'Samad@123.com', 'helllo', '2020-03-13 10:33:55', 'read'),
(43, 'patel@123g.com', 'Samad@123.com', 'helllo', '2020-03-13 10:34:00', 'read'),
(44, 'patel@123g.com', 'Samad@123.com', 'fghg', '2020-03-13 10:40:58', 'read'),
(45, 'patel@123g.com', 'Samad@123.com', 'rftgrtg', '2020-03-13 10:41:12', 'read'),
(46, 'patel@123g.com', 'Samad@123.com', 'rftgrtg', '2020-03-13 10:41:14', 'read'),
(47, 'patel@123g.com', 'Samad@123.com', 'rettr', '2020-03-13 10:41:30', 'read'),
(48, 'patel@123g.com', 'Samad@123.com', 'grttr', '2020-03-13 10:43:45', 'read'),
(49, 'patel@123g.com', 'Samad@123.com', 'grttr', '2020-03-13 10:43:49', 'read'),
(50, 'patel@123g.com', 'Samad@123.com', 'grttr', '2020-03-13 10:44:15', 'read'),
(51, 'patel@123g.com', 'Samad@123.com', '5tr56', '2020-03-13 10:44:23', 'read'),
(57, 'patel@123g.com', 'Samad@123.com', 'hello', '2020-03-13 11:04:59', 'read'),
(58, 'patel@123g.com', 'Samad@123.com', 'hii', '2020-03-13 11:06:56', 'read'),
(59, 'patel@123g.com', 'Dhaval@123.com', 'hii', '2020-03-13 12:31:01', 'read'),
(60, 'patel@123g.com', 'Dhaval@123.com', 'hello', '2020-03-13 12:31:17', 'read'),
(61, 'patel@123g.com', 'John@123.com', 'msg', '2020-03-16 07:00:23', 'read'),
(62, 'patel@123g.com', 'John@123.com', 'msg', '2020-03-16 07:02:21', 'read'),
(63, 'patel@123g.com', 'John@123.com', 'sendinput', '2020-03-16 07:07:15', 'read'),
(64, 'patel@123g.com', 'John@123.com', 'sendinput', '2020-03-16 07:07:25', 'Delete'),
(65, 'patel@123g.com', 'John@123.com', 'sendinput', '2020-03-16 07:07:27', 'read'),
(66, 'patel@123g.com', 'John@123.com', 'sendinput', '2020-03-16 07:07:29', 'read'),
(67, 'patel@123g.com', 'John@123.com', 'sendinput', '2020-03-16 07:07:31', 'read'),
(68, 'patel@123g.com', 'John@123.com', 'sendinput', '2020-03-16 07:07:33', 'read'),
(69, 'patel@123g.com', 'John@123.com', 'sendinput', '2020-03-16 07:07:35', 'read'),
(70, 'patel@123g.com', 'Samad@123.com', 'hii', '2020-03-16 07:28:34', 'read'),
(71, 'patel@123g.com', 'John@123.com', 'koi', '2020-03-16 07:29:25', 'read'),
(72, 'patel@123g.com', 'John@123.com', 'koi', '2020-03-16 07:29:30', 'read'),
(73, 'patel@123g.com', 'John@123.com', 'koi', '2020-03-16 07:29:41', 'read'),
(74, 'patel@123g.com', 'Samad@123.com', 'hii', '2020-03-16 07:35:20', 'read'),
(75, 'patel@123g.com', 'Samad@123.com', 'hello', '2020-03-16 07:35:27', 'read'),
(76, 'patel@123g.com', 'Nakn@123.com', 'helllo', '2020-03-16 08:25:16', 'Delete'),
(77, 'patel@123g.com', 'Dhaval@123.com', 'rettr', '2020-03-16 08:25:23', 'read'),
(78, 'patel@123g.com', 'Dhaval@123.com', 'hrllo', '2020-03-16 08:26:46', 'read'),
(79, 'patel@123g.com', 'Dhaval@123.com', 'gfdgf', '2020-03-16 08:27:04', 'read'),
(80, 'patel@123g.com', 'Dhaval@123.com', 'gfdgf', '2020-03-16 08:27:07', 'read'),
(81, 'patel@123g.com', 'Samad@123.com', 'how', '2020-03-16 08:33:43', 'read'),
(82, 'patel@123g.com', 'Samad@123.com', 'helllo', '2020-03-16 08:35:11', 'read'),
(83, 'patel@123g.com', 'Omprakash@123.com', 'hrllo', '2020-03-16 08:36:16', 'read'),
(84, 'patel@123g.com', 'Omprakash@123.com', 'hii', '2020-03-16 08:36:28', 'read'),
(85, 'patel@123g.com', 'Omprakash@123.com', 'hii', '2020-03-16 08:47:53', 'read'),
(86, 'patel@123g.com', 'Omprakash@123.com', 'hello', '2020-03-16 08:50:09', 'read'),
(87, 'patel@123g.com', 'Omprakash@123.com', 'rettr', '2020-03-16 08:51:23', 'read'),
(88, 'patel@123g.com', 'Samad@123.com', ' hello', '2020-03-16 08:54:18', 'read'),
(89, 'patel@123g.com', 'Samad@123.com', ' how', '2020-03-16 08:54:24', 'read'),
(90, 'patel@123g.com', 'Samad@123.com', ' hello', '2020-03-16 08:56:39', 'read'),
(91, 'patel@123g.com', 'Samad@123.com', 'no', '2020-03-16 08:56:44', 'read'),
(93, 'patel@123g.com', 'Dhaval@123.com', 'gfdgf', '2020-03-16 09:44:31', 'read'),
(94, 'patel@123g.com', 'Dhaval@123.com', 'vnhvbghjg', '2020-03-16 09:44:35', 'read'),
(95, 'patel@123g.com', 'Dhaval@123.com', 'rettrrtrtrtr', '2020-03-16 12:53:50', 'read'),
(96, 'Dhaval@123.com', 'patel@123g.com', 'fgffgfgfgfgfgfgfgffgffgf', '2020-03-16 12:56:44', 'read'),
(97, 'patel@123g.com', 'Dhaval@123.com', 'dfgg', '2020-03-16 12:56:55', 'read'),
(98, 'patel@123g.com', 'Dhaval@123.com', 'fdffdfdddddfdd', '2020-03-16 13:10:53', 'read'),
(99, 'patel@123g.com', 'Dhaval@123.com', 'fgfgfgfggfgggfggfgfgfgfgfgfg', '2020-03-17 05:26:15', 'read'),
(100, 'Dhaval@123.com', 'patel@123g.com', 'fgfgffggfgfgfffgfgfgfgfgfgfgf', '2020-03-17 05:26:17', 'read'),
(101, 'patel@123g.com', 'Dhaval@123.com', 'ghhhghghgghghghgghhghghghhgh', '2020-03-17 05:49:51', 'read'),
(102, 'Dhaval@123.com', 'patel@123g.com', 'ghgggggghgghghghgghghgghg', '2020-03-17 05:49:55', 'read'),
(107, 'patel@123g.com', 'Nakn@123.com', 'trtvvbvvvc', '2020-03-17 06:02:53', 'Delete'),
(108, 'patel@123g.com', 'Dhaval@123.com', 'rgr', '2020-03-17 06:02:56', 'read'),
(109, 'patel@123g.com', 'Gyan@123.com', 'rettr', '2020-03-17 11:19:01', 'read'),
(110, 'patel@123g.com', 'Gyan@123.com', 'Not Now', '2020-03-17 11:19:09', 'read'),
(111, 'patel@123g.com', 'Nandu@124.com', 'ohh', '2020-03-17 11:19:25', 'read'),
(112, 'patel@123g.com', 'David@123.com', 'hello', '2020-03-17 11:19:39', 'read'),
(113, 'patel@123g.com', 'David@123.com', 'u6uy', '2020-03-17 11:57:14', 'read'),
(114, 'David@123.com', 'patel@123g.com', 'hello', '2020-03-17 12:06:49', 'read'),
(115, 'David@123.com', 'patel@123g.com', 'tyyt', '2020-03-17 12:10:08', 'read'),
(116, 'patel@123g.com', 'David@123.com', 'no', '2020-03-17 12:19:53', 'read'),
(117, 'patel@123g.com', 'David@123.com', 'bgrtyh', '2020-03-17 12:19:55', 'read'),
(118, 'patel@123g.com', 'David@123.com', 'tretr', '2020-03-17 12:25:44', 'read'),
(119, 'Dhaval@123.com', 'Omprakash@123.com', 'hello', '2020-03-17 12:32:39', 'read'),
(120, 'patel@123g.com', 'Dhaval@123.com', 'dsfdf', '2020-03-17 12:35:33', 'read'),
(121, 'patel@123g.com', 'Dhaval@123.com', 'fhghg', '2020-03-17 12:35:39', 'read'),
(122, 'Dhaval@123.com', 'patel@123g.com', 'hyh', '2020-03-17 12:36:05', 'read'),
(123, 'patel@123g.com', 'Dhaval@123.com', 'frtgftg', '2020-03-17 12:54:58', 'read'),
(124, 'patel@123g.com', 'Dhaval@123.com', 'how', '2020-03-17 12:55:47', 'read'),
(125, 'Dhaval@123.com', 'patel@123g.com', 'hello', '2020-03-17 12:59:45', 'read'),
(126, 'Dhaval@123.com', 'patel@123g.com', 'how', '2020-03-17 12:59:49', 'read'),
(127, 'patel@123g.com', 'Dhaval@123.com', 'how', '2020-03-17 13:10:38', 'read'),
(128, 'patel@123g.com', 'Radhe@123.com', 'uiui', '2020-03-17 13:24:53', 'read'),
(129, 'patel@123g.com', 'Dhaval@123.com', 'hrllo', '2020-03-18 09:01:46', 'read'),
(130, 'Dhaval@123.com', 'patel@123g.com', 'hi', '2020-03-18 09:02:24', 'read'),
(131, 'patel@123g.com', 'Dhaval@123.com', 'fgfgf', '2020-03-18 09:03:14', 'read'),
(132, 'patel@123g.com', 'Dhaval@123.com', 'how', '2020-03-18 09:06:59', 'read'),
(133, 'Dhaval@123.com', 'patel@123g.com', 'gggghggghgghggghgghg', '2020-03-18 09:07:19', 'read'),
(134, 'patel@123g.com', 'Dhaval@123.com', 'gfhgfhghghggghgghggghg', '2020-03-18 09:07:29', 'read'),
(135, 'Dhaval@123.com', 'patel@123g.com', 'fg', '2020-03-18 09:08:04', 'read'),
(136, 'patel@123g.com', 'Dhaval@123.com', 'fgf', '2020-03-18 09:08:10', 'read'),
(137, 'patel@123g.com', 'Dhaval@123.com', 'ggyh', '2020-03-18 09:18:47', 'read'),
(138, 'patel@123g.com', 'Dhaval@123.com', 'y', '2020-03-18 09:18:52', 'read'),
(139, 'patel@123g.com', 'Dhaval@123.com', 'tytytf', '2020-03-18 09:18:57', 'read'),
(140, 'patel@123g.com', 'Dhaval@123.com', 'ddf', '2020-03-18 09:20:16', 'read'),
(141, 'patel@123g.com', 'John@123.com', 'hi', '2020-03-18 09:29:44', 'read'),
(142, 'patel@123g.com', 'John@123.com', 'hi', '2020-03-18 09:29:47', 'read'),
(143, 'patel@123g.com', 'John@123.com', 'hi', '2020-03-18 09:29:52', 'read'),
(144, 'patel@123g.com', 'John@123.com', 'hello', '2020-03-18 09:29:57', 'read'),
(145, 'patel@123g.com', 'Dhaval@123.com', 'hello', '2020-03-18 09:30:18', 'read'),
(146, 'patel@123g.com', 'Nakn@123.com', 'hii', '2020-03-18 09:30:25', 'delete'),
(147, 'patel@123g.com', 'raj@123g.com', 'how', '2020-03-18 09:30:47', 'unread'),
(148, 'patel@123g.com', 'raj@123g.com', 'ujku', '2020-03-18 09:31:24', 'unread'),
(149, 'patel@123g.com', 'Dhaval@123.com', 'hi', '2020-03-18 09:33:06', 'read'),
(150, 'patel@123g.com', 'Dhaval@123.com', 'how', '2020-03-18 09:33:11', 'read'),
(151, 'patel@123g.com', 'Dhaval@123.com', 'fdgdfg', '2020-03-18 09:43:01', 'read'),
(152, 'patel@123g.com', 'Dhaval@123.com', 'fgfgf', '2020-03-18 09:43:28', 'read'),
(153, 'patel@123g.com', 'Dhaval@123.com', 'fgfdgf', '2020-03-18 09:43:32', 'read'),
(154, 'patel@123g.com', 'raj@123g.com', 'gfdgf', '2020-03-18 09:43:49', 'unread'),
(155, 'patel@123g.com', 'Dhaval@123.com', 'ge', '2020-03-18 09:44:34', 'read'),
(156, 'Dhaval@123.com', 'patel@123g.com', 'ghgf', '2020-03-18 09:44:57', 'read'),
(157, 'patel@123g.com', 'Dhaval@123.com', 'hgh', '2020-03-18 09:45:02', 'read'),
(158, 'patel@123g.com', 'Dhaval@123.com', 'havo', '2020-03-18 09:45:31', 'read'),
(159, 'patel@123g.com', 'Dhaval@123.com', 'rtrr', '2020-03-18 09:45:34', 'read'),
(160, 'Dhaval@123.com', 'patel@123g.com', 'tyty', '2020-03-18 09:45:44', 'read'),
(161, 'Dhaval@123.com', 'patel@123g.com', 'hello', '2020-03-18 09:45:58', 'read'),
(162, 'patel@123g.com', 'Dhaval@123.com', 'ytyt', '2020-03-18 09:46:05', 'read'),
(163, 'patel@123g.com', 'Dhaval@123.com', 'tyt', '2020-03-18 09:46:21', 'read'),
(164, 'Dhaval@123.com', 'patel@123g.com', 'tytrt', '2020-03-18 09:46:26', 'read'),
(165, 'patel@123g.com', 'Dhaval@123.com', 'trtrtrttrrtrt', '2020-03-18 09:47:06', 'read'),
(166, 'Dhaval@123.com', 'patel@123g.com', 'rtrtrtrtrrtrtr', '2020-03-18 09:47:07', 'read'),
(167, 'patel@123g.com', 'Dhaval@123.com', 'tyty', '2020-03-18 09:47:53', 'read'),
(168, 'Dhaval@123.com', 'patel@123g.com', 'heeloo', '2020-03-18 10:52:18', 'read'),
(169, 'Dhaval@123.com', 'patel@123g.com', 'how', '2020-03-18 10:52:21', 'read'),
(170, 'Dhaval@123.com', 'patel@123g.com', 'why', '2020-03-18 10:52:23', 'read'),
(171, 'Dhaval@123.com', 'patel@123g.com', 'ehay', '2020-03-18 10:52:25', 'read'),
(173, 'patel@123g.com', 'Dhaval@123.com', 'fgfgfgfgf', '2020-03-18 11:36:16', 'read'),
(176, 'patel@123g.com', 'Omprakash@123.com', 'Samad@123.com', '2020-03-18 12:25:40', 'read'),
(177, 'patel@123g.com', 'Samad@123.com', 'dftrytyty', '2020-03-18 12:56:21', 'read'),
(178, 'patel@123g.com', 'Samad@123.com', 'ytyt', '2020-03-18 12:56:22', 'read'),
(179, 'patel@123g.com', 'Samad@123.com', 'tyth', '2020-03-18 12:56:25', 'read'),
(180, 'patel@123g.com', 'Samad@123.com', 'htgh', '2020-03-18 12:56:29', 'read'),
(181, 'patel@123g.com', 'Samad@123.com', 'hgh', '2020-03-18 12:56:31', 'read'),
(182, 'patel@123g.com', 'Samad@123.com', 'rttf', '2020-03-18 12:56:38', 'read'),
(183, 'patel@123g.com', 'Samad@123.com', 'trytr', '2020-03-18 12:56:39', 'read'),
(184, 'patel@123g.com', 'Samad@123.com', 'ytygyytyt', '2020-03-18 12:56:41', 'read'),
(185, 'Dhaval@123.com', 'patel@123g.com', 'hftghg', '2020-03-18 12:57:43', 'read'),
(186, 'Dhaval@123.com', 'patel@123g.com', 'ghghhg', '2020-03-18 12:57:46', 'read'),
(187, 'Dhaval@123.com', 'patel@123g.com', 'tyty', '2020-03-18 12:57:48', 'read'),
(188, 'Dhaval@123.com', 'patel@123g.com', 'tretretrtr', '2020-03-18 13:07:44', 'read'),
(189, 'Dhaval@123.com', 'patel@123g.com', 'rtret', '2020-03-18 13:07:47', 'read'),
(190, 'Dhaval@123.com', 'patel@123g.com', 'dessfr', '2020-03-18 13:13:22', 'read'),
(191, 'patel@123g.com', 'Dhaval@123.com', 'rrefef', '2020-03-18 13:13:28', 'read'),
(192, 'patel@123g.com', 'Dhaval@123.com', 'ererer', '2020-03-18 13:13:41', 'read'),
(193, 'patel@123g.com', 'Dhaval@123.com', 'erew', '2020-03-18 13:13:42', 'read'),
(194, 'patel@123g.com', 'John@123.com', 'trtretdr', '2020-03-18 13:24:13', 'read'),
(196, 'Dhaval@123.com', 'patel@123g.com', 'rrtrtrtrtrtrtrttrtrtrrrtrtrtrrtrtrtrt', '2020-03-19 05:12:54', 'read'),
(197, 'patel@123g.com', 'Dhaval@123.com', 'ererererereererrererererererererererererererereererereretrtrtrtrtererrtrtrtrtrrtrtrtrrrrtrtrtr', '2020-03-19 05:12:57', 'read'),
(198, 'patel@123g.com', 'Dhaval@123.com', 'trtrtrtrrrt', '2020-03-19 05:16:06', 'Delete'),
(199, 'Dhaval@123.com', 'patel@123g.com', 'rtrrtrtrtrtrttrttdfgfgfgfggfggffgfgffgfgfgfgfgfgfggfgvcgdfgfgfgfgfgfgfgfgfggfgfffgdffgfgfggfgfgfgfgdfgfdgfgfgggfgfgf', '2020-03-19 05:58:09', 'Delete'),
(200, 'patel@123g.com', 'Dhaval@123.com', 'trytyhfgh  yhfghfghg fghfgh gffh fghfgh fghfg ', '2020-03-19 06:57:27', 'read'),
(201, 'patel@123g.com', 'Dhaval@123.com', 'tyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyyy', '2020-03-19 06:57:40', 'read'),
(202, 'patel@123g.com', 'Dhaval@123.com', 'gfhhhhhhhhhhhhhhhh rrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrrr gdfffffffffffffff gggggggggg', '2020-03-19 07:03:33', 'Delete'),
(203, 'John@123.com', 'patel@123g.com', 'hoe', '2020-03-19 07:07:47', 'read'),
(204, 'Wood@123.com', 'patel@123g.com', 'hi', '2020-03-19 07:09:52', 'read'),
(205, 'Wood@123.com', 'Dhaval@123.com', 'hi', '2020-03-19 07:09:55', 'read'),
(206, 'Wood@123.com', 'Dhaval@123.com', 'yhg', '2020-03-19 07:09:58', 'read'),
(207, 'Wood@123.com', 'Ram@123.com', 'uyhi', '2020-03-19 07:10:05', 'read'),
(208, 'Omprakash@123.com', 'patel@123g.com', 'tyty', '2020-03-19 07:11:17', 'read'),
(209, 'Omprakash@123.com', 'Dhaval@123.com', 'tytryfg', '2020-03-19 07:11:20', 'read'),
(210, 'Gyan@123.com', 'patel@123g.com', 'hello', '2020-03-19 07:12:02', 'read'),
(211, 'Gyan@123.com', 'Ram@123.com', 'sdsds', '2020-03-19 07:12:06', 'read'),
(212, 'Gyan@123.com', 'John@123.com', 'sds', '2020-03-19 07:12:09', 'unread'),
(213, 'Nandu@124.com', 'patel@123g.com', 'uyhuyhu', '2020-03-19 07:12:52', 'read'),
(214, 'Nandu@124.com', 'Radhe@123.com', 'uyu', '2020-03-19 07:12:55', 'unread'),
(215, 'Nandu@124.com', 'Omprakash@123.com', 'uyhuyhu', '2020-03-19 07:12:59', 'unread'),
(216, 'Nandu@124.com', 'Nakn@123.com', 'yuyu', '2020-03-19 07:13:03', 'read'),
(217, 'Nakn@123.com', 'patel@123g.com', 'tyuytuhghg', '2020-03-19 07:13:52', 'read'),
(218, 'Nakn@123.com', 'patel@123g.com', '1434353rewre', '2020-03-19 07:14:00', 'read'),
(219, 'Nakn@123.com', 'Ram@123.com', 'fgdfgf', '2020-03-19 07:14:03', 'read'),
(220, 'Nakn@123.com', 'Omprakash@123.com', 'fgfgf', '2020-03-19 07:14:06', 'unread'),
(221, 'Samad@123.com', 'patel@123g.com', 'rtdfrtdfg', '2020-03-19 07:14:40', 'read'),
(222, 'Samad@123.com', 'patel@123g.com', 'dfdcf', '2020-03-19 07:14:45', 'read'),
(223, 'Samad@123.com', 'Radhe@123.com', 'dff', '2020-03-19 07:14:49', 'read'),
(224, 'Samad@123.com', 'Dhaval@123.com', 'srfdsf', '2020-03-19 07:14:53', 'read'),
(225, 'patel@123g.com', 'John@123.com', 'thtr', '2020-03-19 09:08:08', 'unread'),
(226, 'patel@123g.com', 'Dhaval@123.com', 'hello', '2020-03-19 10:20:30', 'read'),
(227, 'patel@123g.com', 'Dhaval@123.com', 'how', '2020-03-19 10:20:33', 'read'),
(228, 'patel@123g.com', 'Dhaval@123.com', 'fdsfd', '2020-03-19 10:33:28', 'read'),
(229, 'patel@123g.com', 'Dhaval@123.com', 'w8769', '2020-03-19 10:33:30', 'read'),
(230, 'patel@123g.com', 'Dhaval@123.com', 'gfgfgfgfgffgfgfgfgfgfgfgfggfg', '2020-03-19 10:39:07', 'read'),
(231, 'patel@123g.com', 'raj@123g.com', 'hrllo', '2020-03-19 10:46:12', 'unread'),
(232, 'patel@123g.com', 'Nakn@123.com', 'yuyu', '2020-03-19 12:43:20', 'unread'),
(233, 'patel@123g.com', 'raj@123g.com', 'jhjh', '2020-03-19 12:43:54', 'unread'),
(234, 'patel@123g.com', 'Samad@123.com', 'jhjhjh', '2020-03-19 12:53:56', 'unread'),
(235, 'patel@123g.com', 'Samad@123.com', 'fg', '2020-03-19 13:05:11', 'unread'),
(236, 'patel@123g.com', 'Samad@123.com', 'gvb', '2020-03-19 13:05:16', 'unread'),
(237, 'patel@123g.com', 'Gyan@123.com', 'dfgfgfgfgg', '2020-03-19 13:16:30', 'unread'),
(238, 'patel@123g.com', 'Nakn@123.com', 'gfgfgff', '2020-03-19 13:17:35', 'unread'),
(239, 'patel@123g.com', 'Dhaval@123.com', 'fgfgg', '2020-03-19 13:17:47', 'read'),
(240, 'patel@123g.com', 'Dhaval@123.com', 'fgfgf', '2020-03-19 13:17:57', 'read'),
(241, 'patel@123g.com', 'Samad@123.com', 'tytyttytyt', '2020-03-19 13:21:58', 'unread'),
(242, 'patel@123g.com', 'Nakn@123.com', 'dfdfdf', '2020-03-19 13:29:25', 'unread'),
(243, 'patel@123g.com', 'John@123.com', 'fdfdfdf', '2020-03-19 13:29:38', 'unread'),
(244, 'patel@123g.com', 'John@123.com', 'as', '2020-03-19 13:29:42', 'unread'),
(245, 'patel@123g.com', 'Radhe@123.com', 'eerr', '2020-03-19 13:30:07', 'read'),
(246, 'patel@123g.com', 'Nakn@123.com', 'rtrtr', '2020-03-19 13:30:11', 'unread'),
(247, 'patel@123g.com', 'Nakn@123.com', 'rtrt', '2020-03-19 13:32:21', 'unread'),
(248, 'patel@123g.com', 'Nakn@123.com', 'vc b', '2020-03-19 13:32:24', 'unread'),
(249, 'Dhaval@123.com', 'patel@123g.com', 'rtrtrtrttrtrtr', '2020-03-20 04:50:27', 'read'),
(250, 'patel@123g.com', 'Dhaval@123.com', 'tytytyyttyyrtrtrrrtrtrtrtrtrtrtrrtrtrt', '2020-03-20 04:51:18', 'read'),
(251, 'Dhaval@123.com', 'patel@123g.com', 'rtrtrrtrtrtrtrtrtrtrrtrtr', '2020-03-20 04:51:34', 'read'),
(252, 'patel@123g.com', 'Dhaval@123.com', 'gghghghhh', '2020-03-20 04:51:41', 'read'),
(253, 'Dhaval@123.com', 'patel@123g.com', 'fgffgfgfgfgfgfgfgffgffgf', '2020-03-20 04:51:46', 'read'),
(254, 'patel@123g.com', 'Nakn@123.com', '🙂', '2020-03-20 05:26:30', 'Delete'),
(255, 'patel@123g.com', 'Nakn@123.com', '😄', '2020-03-20 05:28:09', 'unread'),
(256, 'patel@123g.com', 'Nakn@123.com', 'hello😆', '2020-03-20 05:28:56', 'unread'),
(257, 'patel@123g.com', 'Nakn@123.com', 'hello🙂', '2020-03-20 05:30:02', 'unread'),
(258, 'patel@123g.com', 'Nakn@123.com', 'rtrrr😇', '2020-03-20 05:30:50', 'unread'),
(259, 'patel@123g.com', 'Nakn@123.com', 'hello🤣', '2020-03-20 05:31:23', 'unread'),
(260, 'patel@123g.com', 'Nakn@123.com', 'hello😅', '2020-03-20 05:31:48', 'unread'),
(261, 'patel@123g.com', 'Nakn@123.com', 'tytyt🙃', '2020-03-20 05:32:42', 'unread'),
(262, 'patel@123g.com', 'Nakn@123.com', 'dffggfgf😄', '2020-03-20 05:33:03', 'unread'),
(263, 'patel@123g.com', 'Nakn@123.com', 'h☺', '2020-03-20 05:35:43', 'unread'),
(264, 'patel@123g.com', 'Nakn@123.com', 'ghghhg😍', '2020-03-20 05:36:24', 'unread'),
(265, 'patel@123g.com', 'Nakn@123.com', '😜', '2020-03-20 05:36:57', 'unread'),
(266, 'patel@123g.com', 'Nakn@123.com', 'dfdfdfdff☺', '2020-03-20 05:37:48', 'Delete'),
(267, 'patel@123g.com', 'Nakn@123.com', 'fdfg🙂', '2020-03-20 05:38:58', 'unread'),
(268, 'patel@123g.com', 'Nakn@123.com', 'gdfrgdfg🤩', '2020-03-20 05:39:17', 'unread'),
(269, 'patel@123g.com', 'Nakn@123.com', '😇', '2020-03-20 05:39:40', 'unread'),
(270, 'patel@123g.com', 'Dhaval@123.com', 'retrtr😗', '2020-03-20 05:39:53', 'read'),
(271, 'patel@123g.com', 'Ram@123.com', '😜', '2020-03-20 05:46:20', 'read'),
(272, 'patel@123g.com', 'Akora@123.com', 'hrt🤩', '2020-03-20 06:48:37', 'unread'),
(273, 'Radhe@123.com', 'patel@123g.com', 'ghhghghhghghghgghgghghghg😣', '2020-03-20 06:53:23', 'read'),
(274, 'Radhe@123.com', 'patel@123g.com', 'ghghgghghghghghhghgghghggghghghgghhgghghghghghghghhghghghghghg hghghgghgg hghghhghgggghghgh ghgghghghghghghhhghghgh', '2020-03-20 06:56:44', 'read'),
(275, 'patel@123g.com', 'Radhe@123.com', 'hghghghghh ghghghhgh ghghghhhghghghgghgghggh', '2020-03-20 06:56:51', 'read'),
(276, 'patel@123g.com', 'Radhe@123.com', 'dsfdf🤩', '2020-03-20 06:59:07', 'read'),
(277, 'patel@123g.com', 'Radhe@123.com', 'rttr', '2020-03-20 07:05:23', 'read'),
(278, 'patel@123g.com', 'Radhe@123.com', 'fgfgfg', '2020-03-20 07:05:41', 'read'),
(279, 'patel@123g.com', 'Radhe@123.com', 'trtrr', '2020-03-20 07:05:51', 'read'),
(280, 'patel@123g.com', 'Radhe@123.com', 'erer', '2020-03-20 07:06:08', 'read'),
(281, 'patel@123g.com', 'Radhe@123.com', 'err', '2020-03-20 07:06:16', 'read'),
(282, 'patel@123g.com', 'Radhe@123.com', 'rere', '2020-03-20 07:06:34', 'read'),
(283, 'patel@123g.com', 'Radhe@123.com', 'fgfgfg', '2020-03-20 08:53:00', 'unread'),
(284, 'patel@123g.com', 'Radhe@123.com', '😅', '2020-03-20 08:53:21', 'unread'),
(285, 'patel@123g.com', 'Radhe@123.com', 'ytyty', '2020-03-20 09:05:12', 'unread'),
(286, 'patel@123g.com', 'Radhe@123.com', 'bgfff', '2020-03-20 09:05:17', 'unread'),
(287, 'patel@123g.com', 'Radhe@123.com', '😄', '2020-03-20 09:05:24', 'unread'),
(288, 'patel@123g.com', 'Radhe@123.com', 'gfg', '2020-03-20 09:06:40', 'unread'),
(289, 'patel@123g.com', 'Radhe@123.com', 'rt', '2020-03-20 09:07:08', 'unread'),
(290, 'patel@123g.com', 'Radhe@123.com', 'fdf', '2020-03-20 09:11:48', 'unread'),
(291, 'patel@123g.com', 'Radhe@123.com', 'sdsd', '2020-03-20 09:12:45', 'unread'),
(292, 'patel@123g.com', 'John@123.com', 'rrrt', '2020-03-20 09:14:57', 'unread'),
(293, 'patel@123g.com', 'John@123.com', '🤪', '2020-03-20 09:15:03', 'unread'),
(294, 'patel@123g.com', 'John@123.com', 'uytuuu', '2020-03-20 09:15:29', 'unread'),
(295, 'patel@123g.com', 'John@123.com', 'tytyt', '2020-03-20 09:26:17', 'unread'),
(296, 'patel@123g.com', 'John@123.com', '😝', '2020-03-20 09:26:21', 'unread'),
(297, 'patel@123g.com', 'Dhaval@123.com', 'ytu', '2020-03-20 09:28:06', 'read'),
(298, 'Dhaval@123.com', 'patel@123g.com', 'gghghghghghghghhghgghghhghghgh', '2020-03-20 09:28:10', 'read'),
(299, 'patel@123g.com', 'Dhaval@123.com', 'hghhgh', '2020-03-20 09:28:15', 'read'),
(300, 'Dhaval@123.com', 'patel@123g.com', 'hghghggggh', '2020-03-20 09:28:18', 'read'),
(301, 'patel@123g.com', 'Dhaval@123.com', '😟', '2020-03-20 09:28:27', 'read'),
(302, 'Dhaval@123.com', 'patel@123g.com', '😜', '2020-03-20 09:28:32', 'read'),
(303, 'Dhaval@123.com', 'patel@123g.com', '😗', '2020-03-20 09:28:47', 'read'),
(304, 'patel@123g.com', 'Dhaval@123.com', 'gfg', '2020-03-20 09:29:34', 'read'),
(305, 'patel@123g.com', 'Dhaval@123.com', 'gfgfgfgf', '2020-03-20 09:30:16', 'read'),
(306, 'Dhaval@123.com', 'patel@123g.com', 'dfgfgfgf', '2020-03-20 09:30:18', 'read'),
(307, 'Dhaval@123.com', 'patel@123g.com', '😚fgfgfgfgfgfgfgf', '2020-03-20 09:30:27', 'read'),
(308, 'patel@123g.com', 'Dhaval@123.com', '😍gfgfgfggfggfgfgf', '2020-03-20 09:30:31', 'read'),
(309, 'patel@123g.com', 'Dhaval@123.com', 'tyyt', '2020-03-20 09:31:34', 'read'),
(310, 'Dhaval@123.com', 'patel@123g.com', 'dsddsddfdfdfdfdffgfggfffgfg', '2020-03-20 09:32:08', 'read'),
(311, 'patel@123g.com', 'Dhaval@123.com', 'gfgfgfgfgghghgfgfgfgfgfggfgfgfg', '2020-03-20 09:32:17', 'read'),
(312, 'Dhaval@123.com', 'patel@123g.com', 'fgfgfggfggfgfff', '2020-03-20 09:32:23', 'read'),
(313, 'Dhaval@123.com', 'patel@123g.com', 'rrerr', '2020-03-20 09:33:04', 'read'),
(314, 'patel@123g.com', 'Dhaval@123.com', 'ererer', '2020-03-20 09:33:07', 'read'),
(315, 'patel@123g.com', 'Dhaval@123.com', 'rererrrerererrererererererereerererererreree', '2020-03-20 09:33:30', 'read'),
(316, 'Dhaval@123.com', 'patel@123g.com', 'rrereererrerererre', '2020-03-20 09:33:31', 'read'),
(317, 'patel@123g.com', 'Radhe@123.com', '👨‍👧eedw', '2020-03-20 09:39:23', 'unread'),
(318, 'patel@123g.com', 'Radhe@123.com', '😛', '2020-03-20 10:11:43', 'unread'),
(319, 'patel@123g.com', 'Radhe@123.com', '🙃', '2020-03-20 10:11:52', 'unread'),
(320, 'Dhaval@123.com', 'patel@123g.com', 'dfdfdfdfddfdfdfd', '2020-03-20 10:14:57', 'read'),
(321, 'Dhaval@123.com', 'patel@123g.com', 'fdfddfd', '2020-03-20 10:15:03', 'read'),
(322, 'Dhaval@123.com', 'patel@123g.com', 'dfdfd', '2020-03-20 10:15:05', 'read'),
(323, 'Dhaval@123.com', 'patel@123g.com', 'dfddxc', '2020-03-20 10:15:07', 'read'),
(324, 'patel@123g.com', 'raj@123g.com', 'how', '2020-03-20 10:24:44', 'unread'),
(325, 'patel@123g.com', 'raj@123g.com', 'rttry', '2020-03-20 10:25:23', 'Delete'),
(326, 'patel@123g.com', 'raj@123g.com', 'tytuy', '2020-03-20 10:25:25', 'unread'),
(327, 'Akora@123.com', 'Nakn@123.com', 'rtrrtr', '2020-03-20 10:26:32', 'unread'),
(328, 'Akora@123.com', 'Nakn@123.com', '😛retrtrt', '2020-03-20 10:26:39', 'unread'),
(329, 'Akora@123.com', 'Nakn@123.com', 'ytyt', '2020-03-20 10:28:00', 'unread'),
(330, 'Akora@123.com', 'Nakn@123.com', '😚rtr', '2020-03-20 10:28:36', 'unread'),
(331, 'Akora@123.com', 'Nakn@123.com', 'tyty', '2020-03-20 10:28:41', 'unread'),
(332, 'Akora@123.com', 'Nakn@123.com', 'rere', '2020-03-20 10:29:23', 'unread'),
(333, 'Akora@123.com', 'Nakn@123.com', '😝', '2020-03-20 10:29:31', 'unread'),
(334, 'patel@123g.com', 'Ram@123.com', 'gfrg', '2020-03-20 10:32:33', 'read'),
(335, 'patel@123g.com', 'Ram@123.com', 'ffg', '2020-03-20 10:33:12', 'read'),
(336, 'patel@123g.com', 'Ram@123.com', '😋', '2020-03-20 10:33:25', 'read'),
(337, 'Dhaval@123.com', 'patel@123g.com', 'tyty', '2020-03-20 10:34:01', 'read'),
(338, 'Dhaval@123.com', 'patel@123g.com', 'fgfgfggfggfgfff', '2020-03-20 10:35:53', 'read'),
(339, 'Dhaval@123.com', 'patel@123g.com', 'dsddsddfdfdfdfdffgfggfffgfg', '2020-03-20 10:35:58', 'read'),
(340, 'Dhaval@123.com', 'patel@123g.com', 'ghghg', '2020-03-20 10:36:57', 'read'),
(341, 'Dhaval@123.com', 'patel@123g.com', 'uyuu', '2020-03-20 10:37:45', 'read'),
(342, 'Dhaval@123.com', 'patel@123g.com', 'tyty', '2020-03-20 10:38:59', 'read'),
(343, 'Dhaval@123.com', 'patel@123g.com', 'yty', '2020-03-20 10:39:04', 'read'),
(344, 'Dhaval@123.com', 'patel@123g.com', '😙', '2020-03-20 10:39:06', 'read'),
(345, 'Dhaval@123.com', 'patel@123g.com', 'tyty', '2020-03-20 10:44:12', 'read'),
(346, 'patel@123g.com', 'Gyan@123.com', 'yuyuyuyuyuyuyyyuyjkjk', '2020-03-20 10:56:55', 'unread'),
(347, 'Dhaval@123.com', 'patel@123g.com', 'kklkjk', '2020-03-20 10:56:56', 'read'),
(348, 'patel@123g.com', 'Omprakash@123.com', 'tyyty', '2020-03-20 11:04:01', 'Delete'),
(349, 'patel@123g.com', 'Omprakash@123.com', 'ytygyytyt', '2020-03-20 11:04:04', 'unread'),
(350, 'patel@123g.com', 'Omprakash@123.com', 'ytu', '2020-03-20 11:04:10', 'unread'),
(351, 'patel@123g.com', 'Omprakash@123.com', 'tyhty', '2020-03-20 11:04:20', 'unread'),
(352, 'patel@123g.com', 'Omprakash@123.com', 'tretr', '2020-03-20 11:04:25', 'unread'),
(353, 'patel@123g.com', 'Omprakash@123.com', 'hgh', '2020-03-20 11:04:31', 'unread'),
(354, 'patel@123g.com', 'Omprakash@123.com', 'rtrrtrtrtrtrttrttdfgfgfgfggfggffgfgffgfgfgfgfgfgfggfgvcgdfgfgfgfgfgfgfgfgfggfgfffgdffgfgfggfgfgfgfgdfgfdgfgfgggfgfgf', '2020-03-20 11:06:08', 'Delete'),
(355, 'Finch@1233.com', 'patel@123g.com', 'hello', '2020-03-20 12:14:46', 'read'),
(356, 'Finch@1233.com', 'patel@123g.com', 'hewehw', '2020-03-20 12:14:51', 'read'),
(357, 'David@123.com', 'patel@123g.com', 'eewdee', '2020-03-20 12:15:56', 'read'),
(358, 'patel@123g.com', 'Dhaval@123.com', 'fgfgfgffgffgfgff', '2020-03-20 13:14:35', 'read'),
(359, 'patel@123g.com', 'Dhaval@123.com', 'fgfgfgfgfgfgfgfgf', '2020-03-20 13:14:44', 'read'),
(360, 'Dhaval@123.com', 'patel@123g.com', 'dffdfdfdfdfdfd', '2020-03-20 13:21:49', 'read'),
(361, 'Dhaval@123.com', 'patel@123g.com', 'ghghghff', '2020-03-21 05:24:43', 'read'),
(362, 'patel@123g.com', 'Dhaval@123.com', 'rtrtrt', '2020-03-21 05:25:02', 'read'),
(363, 'patel@123g.com', 'Dhaval@123.com', 'hjjhj', '2020-03-21 05:25:10', 'read'),
(364, 'patel@123g.com', 'Dhaval@123.com', 'trttr', '2020-03-21 05:25:14', 'read'),
(365, 'patel@123g.com', 'Dhaval@123.com', 'cvbn', '2020-03-21 05:25:16', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `status`
--

CREATE TABLE `status` (
  `sender_id` varchar(40) NOT NULL,
  `receiverid` varchar(30) NOT NULL,
  `status` enum('Yes','No') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `status`
--

INSERT INTO `status` (`sender_id`, `receiverid`, `status`) VALUES
('Akora@123.com', 'Samad@123.com', 'No'),
('David@123.com', 'patel@123g.com', 'No'),
('Dhaval@123.com', 'Ram@123.com', 'Yes'),
('Finch@1233.com', 'patel@123g.com', 'No'),
('patel@123g.com', 'John@123.com', 'No'),
('Radhe@123.com', 'patel@123g.com', 'No');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Details`
--
ALTER TABLE `Details`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `login_details`
--
ALTER TABLE `login_details`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `Message`
--
ALTER TABLE `Message`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `status`
--
ALTER TABLE `status`
  ADD PRIMARY KEY (`sender_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Details`
--
ALTER TABLE `Details`
  MODIFY `ID` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1398;
--
-- AUTO_INCREMENT for table `Message`
--
ALTER TABLE `Message`
  MODIFY `Id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=366;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
