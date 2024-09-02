-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 14, 2022 at 07:33 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `demo`
--

-- --------------------------------------------------------

--
-- Table structure for table `scholarship`
--

CREATE TABLE `scholarship` (
  `s_id` int(11) NOT NULL,
  `s_type` varchar(15) NOT NULL,
  `s_name` varchar(450) NOT NULL,
  `s_field` varchar(30) NOT NULL,
  `s_det` varchar(450) NOT NULL,
  `s_merit` text NOT NULL,
  `s_image` varchar(100) NOT NULL,
  `s_status` enum('0','1') CHARACTER SET utf16 NOT NULL COMMENT '0-active,1-inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `scholarship`
--

INSERT INTO `scholarship` (`s_id`, `s_type`, `s_name`, `s_field`, `s_det`, `s_merit`, `s_image`, `s_status`) VALUES
(1, 'National', 'ISHAN UDAY–Special Scholarship Scheme for North Eastern Region', 'Others', 'provider- University Grants Commission	\r\nlast Date to apply - 15 January 2022', 'UG', '', '1'),
(2, 'International', 'PG Indira Gandhi Scholarship for Single Girl Child	University Grants Commission – MHRD	15 January 2022', 'Arts', 'Provider - University Grants Commission – MHRD	\r\nLast Date to Apply - 15 January 2022', 'PG', '', '1'),
(3, 'National', 'PG Scholarship for University Rank Holders ', 'Science', 'Provider - University Grants Commission – MHRD	\r\nLast Date - 15 January 2022', 'PG', '', '1'),
(5, 'International', 'Saksham Scholarship Scheme for Differently Abled Students for Technical Education', 'Engineering', 'Provider- Ministry of Human Resource Development– AICTE	\r\nLast Date- 15 January 2022', 'HS', '', '1'),
(6, 'National', 'Post-Matric Scholarship (PMS) for BC/EBC Students	Bihar	N/A', 'Engineering', 'Providing State- Bihar	\r\nLast date to apply- N/A', 'POST MATRIC', '', '1'),
(7, 'International', 'Chevening Scholarships (UK)', 'Others', 'Valid for international students looking to apply to any university in the UK. It is granted to students coming from Chevening-eligible countries(India is one of them). There are a few conditions to be satisfied, like you must have 2 years work experience, you must return to your home country for at least two years post completion of your scholarship, and satisfy their english language requirements.', 'PG', '', '1'),
(8, 'National', 'Pre-Matric Scholarship Scheme for Minorities	Admission fee, tuition fee, and maintenance allowance', 'Others', 'Scholarship includes-  Admission fee, tuition fee, and maintenance allowance', 'School', '', '1'),
(9, 'National', 'PG Indira Gandhi Scholarship for Single Girl Child	INR 36,200 per annum for two years', 'Others', 'Benefit-  INR 36,200 per annum for two years', 'PG', '', '1'),
(10, 'National', 'AICTE Pragati Scholarship for Girls	', 'Others', 'Up to INR 50,000 per annum and other benefits\r\n', 'UG', '', '1');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `usertype` varchar(22) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `email`, `password`, `usertype`) VALUES
(9, 'khiranjit', 'khiranjitkumar99@gmail.com', '566a9619c8365a5f35001f2d756d26c1', ''),
(10, 'dipa', 'wwww@gmail.com', 'a2b033e86381c366d51d42aa618d5416', ''),
(11, 'biswa', 'qqq@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(12, 'sourav', '111@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(13, 'jyoti', 'jyoti@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', ''),
(14, 'demo', 'demo@gmail.com', 'fe01ce2a7fbac8fafaed7c982a04e229', ''),
(15, 'raj', 'raj@gmail.com', '81dc9bdb52d04dc20036dbd8313ed055', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `scholarship`
--
ALTER TABLE `scholarship`
  ADD PRIMARY KEY (`s_id`),
  ADD UNIQUE KEY `s_id` (`s_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `email` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `scholarship`
--
ALTER TABLE `scholarship`
  MODIFY `s_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
