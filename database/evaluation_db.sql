-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 27, 2022 at 03:57 AM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `evaluation_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `academic_list`
--

CREATE TABLE `academic_list` (
  `id` int(11) NOT NULL,
  `year` text NOT NULL,
  `semester` int(30) NOT NULL,
  `is_default` tinyint(1) NOT NULL DEFAULT 0,
  `status` int(1) NOT NULL DEFAULT 0 COMMENT '0=Pending,1=Start,2=Closed'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `academic_list`
--

INSERT INTO `academic_list` (`id`, `year`, `semester`, `is_default`, `status`) VALUES
(3, '2022-2023', 1, 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `class_list`
--

CREATE TABLE `class_list` (
  `id` int(11) NOT NULL,
  `curriculum` text NOT NULL,
  `level` text NOT NULL,
  `section` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `class_list`
--

INSERT INTO `class_list` (`id`, `curriculum`, `level`, `section`) VALUES
(1, 'Converge', '-Makati', 'IT Department'),
(5, 'IBM', 'Taguig', 'IT Department'),
(6, 'Accenture', 'Cubao', 'Logistic'),
(7, 'Fang', 'Cubao', 'IT Department');

-- --------------------------------------------------------

--
-- Table structure for table `criteria_list`
--

CREATE TABLE `criteria_list` (
  `id` int(11) NOT NULL,
  `criteria` text NOT NULL,
  `order_by` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `criteria_list`
--

INSERT INTO `criteria_list` (`id`, `criteria`, `order_by`) VALUES
(5, 'Rating Scale: 5-Highest and 1-Lowest', 3);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_answers`
--

CREATE TABLE `evaluation_answers` (
  `evaluation_id` int(30) NOT NULL,
  `question_id` int(30) NOT NULL,
  `rate` int(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation_answers`
--

INSERT INTO `evaluation_answers` (`evaluation_id`, `question_id`, `rate`) VALUES
(1, 1, 5),
(1, 6, 4),
(1, 3, 5),
(2, 1, 5),
(2, 6, 5),
(2, 3, 4),
(3, 1, 5),
(3, 6, 5),
(3, 3, 4),
(4, 7, 5),
(4, 8, 5),
(4, 9, 5),
(4, 10, 5),
(4, 11, 5),
(4, 12, 5),
(4, 13, 5),
(4, 14, 5),
(4, 15, 5),
(4, 16, 5),
(4, 17, 5),
(4, 18, 5),
(4, 19, 5),
(4, 20, 5),
(4, 21, 5),
(4, 22, 5),
(4, 23, 5),
(4, 24, 5),
(4, 25, 5),
(4, 26, 5),
(5, 7, 6),
(5, 8, 6),
(5, 9, 5),
(5, 10, 4),
(5, 11, 7),
(5, 12, 5),
(5, 13, 5),
(5, 14, 7),
(5, 15, 4),
(5, 16, 7),
(5, 17, 4),
(5, 18, 6),
(5, 19, 5),
(5, 20, 1),
(5, 21, 5),
(5, 22, 5),
(5, 23, 1),
(5, 24, 5),
(5, 25, 1),
(5, 26, 1),
(6, 7, 7),
(6, 8, 7),
(6, 9, 7),
(6, 10, 7),
(6, 11, 7),
(6, 12, 7),
(6, 13, 7),
(6, 14, 7),
(6, 15, 7),
(6, 16, 7),
(6, 17, 7),
(6, 18, 7),
(6, 19, 7),
(6, 20, 7),
(6, 21, 7),
(6, 22, 7),
(6, 23, 7),
(6, 24, 7),
(6, 25, 7),
(6, 26, 7),
(7, 7, 5),
(7, 8, 5),
(7, 9, 5),
(7, 10, 5),
(7, 11, 5),
(7, 12, 5),
(7, 13, 5),
(7, 14, 5),
(7, 15, 5),
(7, 16, 5),
(7, 17, 5),
(7, 18, 5),
(7, 19, 5),
(7, 20, 5),
(7, 21, 5),
(7, 22, 5),
(7, 23, 5),
(7, 24, 5),
(7, 25, 5),
(7, 26, 5),
(8, 7, 5),
(8, 8, 5),
(8, 9, 5),
(8, 10, 5),
(8, 11, 5),
(8, 12, 5),
(8, 13, 5),
(8, 14, 5),
(8, 15, 5),
(8, 16, 5),
(8, 17, 5),
(8, 18, 5),
(8, 19, 5),
(8, 20, 5),
(8, 21, 5),
(8, 22, 5),
(8, 23, 5),
(8, 24, 5),
(8, 25, 5),
(8, 26, 5),
(9, 7, 7),
(9, 8, 7),
(9, 9, 7),
(9, 10, 7),
(9, 11, 7),
(9, 12, 7),
(9, 13, 7),
(9, 14, 7),
(9, 15, 6),
(9, 16, 6),
(9, 17, 6),
(9, 18, 6),
(9, 19, 6),
(9, 20, 6),
(9, 21, 6),
(9, 22, 6),
(9, 23, 6),
(9, 24, 6),
(9, 25, 6),
(9, 26, 6),
(10, 7, 7),
(10, 8, 7),
(10, 9, 7),
(10, 10, 7),
(10, 11, 6),
(10, 12, 4),
(10, 13, 4),
(10, 14, 2),
(10, 15, 7),
(10, 16, 6),
(10, 17, 6),
(10, 18, 7),
(10, 19, 7),
(10, 20, 7),
(10, 21, 6),
(10, 22, 5),
(10, 23, 5),
(10, 24, 4),
(10, 25, 6),
(10, 26, 7),
(11, 7, 1),
(11, 8, 2),
(11, 9, 2),
(11, 10, 2),
(11, 11, 2),
(11, 12, 3),
(11, 13, 3),
(11, 14, 3),
(11, 15, 2),
(11, 16, 2),
(11, 17, 2),
(11, 18, 3),
(11, 19, 3),
(11, 20, 1),
(11, 21, 1),
(11, 22, 2),
(11, 23, 2),
(11, 24, 1),
(11, 25, 1),
(11, 26, 1),
(12, 7, 1),
(12, 8, 2),
(12, 9, 2),
(12, 10, 3),
(12, 11, 4),
(12, 12, 4),
(12, 13, 5),
(12, 14, 5),
(12, 15, 5),
(12, 16, 6),
(12, 17, 6),
(12, 18, 6),
(12, 19, 6),
(12, 20, 4),
(12, 21, 3),
(12, 22, 3),
(12, 23, 2),
(12, 24, 2),
(12, 25, 1),
(12, 26, 1),
(13, 7, 1),
(13, 8, 2),
(13, 9, 3),
(13, 10, 4),
(13, 11, 4),
(13, 12, 4),
(13, 13, 4),
(13, 14, 3),
(13, 15, 1),
(13, 16, 2),
(13, 17, 3),
(13, 18, 4),
(13, 19, 4),
(13, 20, 4),
(13, 21, 3),
(13, 22, 2),
(13, 23, 2),
(13, 24, 1),
(13, 25, 3),
(13, 26, 2),
(14, 7, 1),
(14, 8, 2),
(14, 9, 4),
(14, 10, 4),
(14, 11, 3),
(14, 12, 2),
(14, 13, 3),
(14, 14, 4),
(14, 15, 4),
(14, 16, 4),
(14, 17, 3),
(14, 18, 2),
(14, 19, 2),
(14, 20, 2),
(14, 21, 1),
(14, 22, 1),
(14, 23, 1),
(14, 24, 2),
(14, 25, 3),
(14, 26, 3),
(15, 7, 1),
(15, 8, 2),
(15, 9, 3),
(15, 10, 4),
(15, 11, 5),
(15, 12, 4),
(15, 13, 3),
(15, 14, 4),
(15, 15, 2),
(15, 16, 1),
(15, 17, 1),
(15, 18, 1),
(15, 19, 1),
(15, 20, 1),
(15, 21, 1),
(15, 22, 1),
(15, 23, 1),
(15, 24, 1),
(15, 25, 1),
(15, 26, 1),
(16, 7, 1),
(16, 8, 2),
(16, 9, 3),
(16, 10, 4),
(16, 11, 1),
(16, 12, 4),
(16, 13, 4),
(16, 14, 4),
(16, 15, 4),
(16, 16, 4),
(16, 17, 5),
(16, 18, 6),
(16, 19, 4),
(16, 20, 3),
(16, 21, 2),
(16, 22, 4),
(16, 23, 2),
(16, 24, 1),
(16, 25, 1),
(16, 26, 1),
(17, 7, 1),
(17, 8, 2),
(17, 9, 2),
(17, 10, 3),
(17, 11, 4),
(17, 12, 4),
(17, 13, 3),
(17, 14, 2),
(17, 15, 3),
(17, 16, 3),
(17, 17, 3),
(17, 18, 3),
(17, 19, 3),
(17, 20, 3),
(17, 21, 1),
(17, 22, 4),
(17, 23, 3),
(17, 24, 3),
(17, 25, 3),
(17, 26, 3),
(18, 7, 1),
(18, 8, 2),
(18, 9, 3),
(18, 10, 2),
(18, 11, 1),
(18, 12, 1),
(18, 13, 1),
(18, 14, 2),
(18, 15, 3),
(18, 16, 5),
(18, 17, 1),
(18, 18, 5),
(18, 19, 3),
(18, 20, 3),
(18, 21, 2),
(18, 22, 2),
(18, 23, 2),
(18, 24, 1),
(18, 25, 1),
(18, 26, 2),
(19, 7, 1),
(19, 8, 2),
(19, 9, 2),
(19, 10, 3),
(19, 11, 3),
(19, 12, 4),
(19, 13, 5),
(19, 14, 2),
(19, 15, 3),
(19, 16, 3),
(19, 17, 4),
(19, 18, 4),
(19, 19, 2),
(19, 20, 1),
(19, 21, 6),
(19, 22, 2),
(19, 23, 2),
(19, 24, 1),
(19, 25, 1),
(19, 26, 1),
(20, 7, 1),
(20, 8, 2),
(20, 9, 2),
(20, 10, 2),
(20, 11, 1),
(20, 12, 1),
(20, 13, 2),
(20, 14, 2),
(20, 15, 3),
(20, 16, 3),
(20, 17, 1),
(20, 18, 4),
(20, 19, 3),
(20, 20, 3),
(20, 21, 3),
(20, 22, 2),
(20, 23, 2),
(20, 24, 3),
(20, 25, 2),
(20, 26, 1),
(21, 7, 3),
(21, 8, 2),
(21, 9, 2),
(21, 10, 3),
(21, 11, 4),
(21, 12, 4),
(21, 13, 3),
(21, 14, 3),
(21, 15, 3),
(21, 16, 2),
(21, 17, 2),
(21, 18, 2),
(21, 19, 1),
(21, 20, 2),
(21, 21, 3),
(21, 22, 2),
(21, 23, 2),
(21, 24, 3),
(21, 25, 3),
(21, 26, 2),
(22, 7, 0),
(22, 8, 1),
(22, 9, 2),
(22, 10, 2),
(22, 11, 2),
(22, 12, 1),
(22, 13, 1),
(22, 14, 1),
(22, 15, 2),
(22, 16, 4),
(22, 17, 3),
(22, 18, 0),
(22, 19, 3),
(22, 20, 3),
(22, 21, 3),
(22, 22, 2),
(22, 23, 1),
(22, 24, 2),
(22, 25, 1),
(22, 26, 2),
(23, 7, 0),
(23, 8, 2),
(23, 9, 1),
(23, 10, 1),
(23, 11, 1),
(23, 12, 0),
(23, 13, 2),
(23, 14, 1),
(23, 15, 1),
(23, 16, 1),
(23, 17, 2),
(23, 18, 1),
(23, 19, 2),
(23, 20, 1),
(23, 21, 1),
(23, 22, 2),
(23, 23, 1),
(23, 24, 0),
(23, 25, 0),
(23, 26, 1),
(24, 7, 1),
(24, 8, 2),
(24, 9, 2),
(24, 10, 2),
(24, 11, 3),
(24, 12, 2),
(24, 13, 4),
(24, 14, 2),
(24, 15, 4),
(24, 16, 2),
(24, 17, 1),
(24, 18, 2),
(24, 19, 2),
(24, 20, 2),
(24, 21, 3),
(24, 22, 5),
(24, 23, 2),
(24, 24, 4),
(24, 25, 3),
(24, 26, 3),
(25, 7, 1),
(25, 8, 2),
(25, 9, 2),
(25, 10, 2),
(25, 11, 3),
(25, 12, 3),
(25, 13, 3),
(25, 14, 2),
(25, 15, 2),
(25, 16, 3),
(25, 17, 2),
(25, 18, 1),
(25, 19, 3),
(25, 20, 2),
(25, 21, 2),
(25, 22, 2),
(25, 23, 4),
(25, 24, 5),
(25, 25, 1),
(25, 26, 1);

-- --------------------------------------------------------

--
-- Table structure for table `evaluation_list`
--

CREATE TABLE `evaluation_list` (
  `evaluation_id` int(30) NOT NULL,
  `academic_id` int(30) NOT NULL,
  `class_id` int(30) NOT NULL,
  `student_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL,
  `intern_id` int(30) NOT NULL,
  `restriction_id` int(30) NOT NULL,
  `date_taken` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `evaluation_list`
--

INSERT INTO `evaluation_list` (`evaluation_id`, `academic_id`, `class_id`, `student_id`, `subject_id`, `intern_id`, `restriction_id`, `date_taken`) VALUES
(19, 3, 1, 4, 2, 24, 54, '2022-03-09 13:52:21'),
(20, 3, 5, 5, 2, 22, 56, '2022-03-09 15:27:05'),
(21, 3, 1, 4, 2, 25, 57, '2022-03-09 15:50:03'),
(22, 3, 1, 4, 2, 23, 58, '2022-08-22 15:46:20'),
(23, 3, 5, 5, 2, 24, 60, '2022-09-22 15:58:57'),
(24, 3, 1, 4, 2, 22, 62, '2022-09-26 14:42:12'),
(25, 3, 5, 5, 2, 26, 63, '2022-09-27 14:16:30');

-- --------------------------------------------------------

--
-- Table structure for table `industry_professor_list`
--

CREATE TABLE `industry_professor_list` (
  `id` int(11) NOT NULL,
  `school_id` varchar(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `class_id` int(30) NOT NULL,
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `contact_num` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `industry_professor_list`
--

INSERT INTO `industry_professor_list` (`id`, `school_id`, `firstname`, `lastname`, `email`, `password`, `class_id`, `avatar`, `date_created`, `contact_num`) VALUES
(4, '1', 'Industry', '1', 'IndustryProf@OIM.com', '202cb962ac59075b964b07152d234b70', 1, 'no-image-available.png', '2022-02-04 14:51:50', ''),
(5, '2', 'Industry', '2', 'IndustryProf2@OIM.com', '202cb962ac59075b964b07152d234b70', 5, 'no-image-available.png', '2022-02-04 15:19:17', ''),
(11, '3', 'Industry', '3', 'IndustryProf3@OIM.com', 'ccc2aa7af64d220b4255ae3cd2bde157', 6, 'no-image-available.png', '2022-10-21 14:46:38', '');

-- --------------------------------------------------------

--
-- Table structure for table `intern_list`
--

CREATE TABLE `intern_list` (
  `id` int(11) NOT NULL,
  `school_id` char(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp(),
  `mid_eval` varchar(255) DEFAULT NULL,
  `fin_eval` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `intern_list`
--

INSERT INTO `intern_list` (`id`, `school_id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`, `mid_eval`, `fin_eval`) VALUES
(21, '2022-100543', 'Aires', 'Pagdagdagan', 'aqpagdagdagan@student.apc.edu.ph', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-03-09 00:09:15', NULL, NULL),
(22, '2015-100009', 'Sherwin', 'Ansay', 'sansay@student.apc.edu.ph', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-03-09 10:45:08', NULL, NULL),
(24, '2012-100001', 'Marvin', 'Ribo', 'mtribo@student.apc.edu.ph', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-03-09 13:49:45', NULL, NULL),
(25, '2022-100002', 'Shawn', 'Vergas', 'svargas@student.apc.edu.ph', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-03-09 15:46:56', NULL, NULL),
(26, '2022-100567', 'Clifford', 'Oustria', 'cfaustria@student.apc.edu.ph', '202cb962ac59075b964b07152d234b70', 'no-image-available.png', '2022-09-27 14:13:43', NULL, NULL),
(28, '2019-100345', 'Juan', 'De la Cruz', 'jdelacruz@student.apc.edu.ph', '25d55ad283aa400af464c76d713c07ad', 'no-image-available.png', '2022-10-21 14:44:09', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `question_list`
--

CREATE TABLE `question_list` (
  `id` int(11) NOT NULL,
  `academic_id` int(30) NOT NULL,
  `question` text NOT NULL,
  `order_by` int(30) NOT NULL,
  `criteria_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `question_list`
--

INSERT INTO `question_list` (`id`, `academic_id`, `question`, `order_by`, `criteria_id`) VALUES
(3, 3, 'Test', 2, 2),
(5, 0, 'Question 101', 0, 1),
(6, 3, 'Sample 101', 4, 1),
(7, 3, '1.The intern reports to the office with regular punctuality.', 0, 5),
(8, 3, '2.The intern submits reports on or before the deadline.', 1, 5),
(9, 3, '3.The intern enjoys a comfortable working relationship with the supervisor and colleagues.', 2, 5),
(10, 3, '4.The intern can confidently present recommendations, suggestions and criticisms to the supervisor/peers.', 3, 5),
(11, 3, '5.The intern is comfortable in airing problems and difficulties to the supervisor.', 4, 5),
(12, 3, '6.The intern seeks to improve their skills by taking initiative to learn new paradigms and methodologies.', 5, 5),
(13, 3, '7.The intern makes productive use of the resources (e.g. terminals and or workstations) assigned to them.', 6, 5),
(14, 3, '8.The intern realizes the significance of the tasks assigned to them in the light of the objectives of the entire project.', 7, 5),
(15, 3, '\r\n    9.The intern demonstrates a sense of independence at work and can work with less supervision.\r\n', 8, 5),
(16, 3, '10.The intern can communicate ideas in oral or written form using concise statements and correct grammar.', 9, 5),
(17, 3, '11.The intern is capable of updating him or herself with new technology through self-study.', 10, 5),
(18, 3, '12.The intern regularly informs their supervisor of any deviation from the set project schedules.', 11, 5),
(19, 3, '13.The intern is capable of making appropriate decisions to problems they encounter in the fulfillment of their tasks.', 12, 5),
(20, 3, '14.The intern is capable of making appropriate decisions to problems they encounter in the fulfillment of their tasks.', 13, 5),
(21, 3, '\r\n    15.The intern comes to the office well-groomed and presentable.\r\n', 14, 5),
(22, 3, '16.The intern informs in advance their supervisor when they have to be absent or late.', 15, 5),
(23, 3, '17.The intern accepts miscellaneous jobs and tasks with the right attitude.', 16, 5),
(24, 3, '\r\n    18.The intern is reliable and imbues a sense of responsibility in handling the tasks assigned to them.\r\n', 17, 5),
(25, 3, '19.The intern applies the virtues of integrity in all aspects of their work.', 18, 5),
(26, 3, '20.The trainee possesses the needed technical skills to efficiently and effectively perform\r\ntheir tasks in the following specific areas:\r\n(Pls. enumerate here the task items as purported in the Intern’s Job Description).', 19, 5);

-- --------------------------------------------------------

--
-- Table structure for table `restriction_list`
--

CREATE TABLE `restriction_list` (
  `id` int(11) NOT NULL,
  `academic_id` int(30) NOT NULL,
  `intern_id` int(11) NOT NULL,
  `class_id` int(30) NOT NULL,
  `subject_id` int(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `restriction_list`
--

INSERT INTO `restriction_list` (`id`, `academic_id`, `intern_id`, `class_id`, `subject_id`) VALUES
(60, 3, 24, 5, 5),
(61, 3, 25, 1, 1),
(62, 3, 22, 1, 1),
(63, 3, 26, 5, 5),
(64, 3, 28, 6, 2);

-- --------------------------------------------------------

--
-- Table structure for table `subject_list`
--

CREATE TABLE `subject_list` (
  `id` int(11) NOT NULL,
  `code` varchar(50) NOT NULL,
  `subject` text NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `subject_list`
--

INSERT INTO `subject_list` (`id`, `code`, `subject`, `description`) VALUES
(2, 'INT-1', 'INTERN1', ''),
(3, 'INT-2', 'INTERN2', '');

-- --------------------------------------------------------

--
-- Table structure for table `system_settings`
--

CREATE TABLE `system_settings` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `email` varchar(200) NOT NULL,
  `contact` varchar(20) NOT NULL,
  `address` text NOT NULL,
  `cover_img` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `system_settings`
--

INSERT INTO `system_settings` (`id`, `name`, `email`, `contact`, `address`, `cover_img`) VALUES
(1, 'Online Intern Management System', 'info@sample.comm', '+6948 8542 623', '2102  Caldwell Road, Rochester, New York, 14608', '');

-- --------------------------------------------------------

--
-- Table structure for table `uploaded_resume`
--

CREATE TABLE `uploaded_resume` (
  `id` int(11) NOT NULL,
  `name` varchar(200) NOT NULL,
  `new_name` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `firstname` varchar(200) NOT NULL,
  `lastname` varchar(200) NOT NULL,
  `email` varchar(200) NOT NULL,
  `password` text NOT NULL,
  `avatar` text NOT NULL DEFAULT 'no-image-available.png',
  `date_created` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `firstname`, `lastname`, `email`, `password`, `avatar`, `date_created`) VALUES
(1, 'Administrator', '', 'admin@admin.com', '0192023a7bbd73250516f069df18b500', '1607135820_avatar.jpg', '2020-11-26 10:57:04');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `academic_list`
--
ALTER TABLE `academic_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_list`
--
ALTER TABLE `class_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `criteria_list`
--
ALTER TABLE `criteria_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `evaluation_list`
--
ALTER TABLE `evaluation_list`
  ADD PRIMARY KEY (`evaluation_id`);

--
-- Indexes for table `industry_professor_list`
--
ALTER TABLE `industry_professor_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `intern_list`
--
ALTER TABLE `intern_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `question_list`
--
ALTER TABLE `question_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `restriction_list`
--
ALTER TABLE `restriction_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subject_list`
--
ALTER TABLE `subject_list`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `system_settings`
--
ALTER TABLE `system_settings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `uploaded_resume`
--
ALTER TABLE `uploaded_resume`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `academic_list`
--
ALTER TABLE `academic_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `class_list`
--
ALTER TABLE `class_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `criteria_list`
--
ALTER TABLE `criteria_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `evaluation_list`
--
ALTER TABLE `evaluation_list`
  MODIFY `evaluation_id` int(30) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT for table `industry_professor_list`
--
ALTER TABLE `industry_professor_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `intern_list`
--
ALTER TABLE `intern_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `question_list`
--
ALTER TABLE `question_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `restriction_list`
--
ALTER TABLE `restriction_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=65;

--
-- AUTO_INCREMENT for table `subject_list`
--
ALTER TABLE `subject_list`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `system_settings`
--
ALTER TABLE `system_settings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `uploaded_resume`
--
ALTER TABLE `uploaded_resume`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
