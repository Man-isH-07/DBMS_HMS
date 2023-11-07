-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 06, 2023 at 04:35 PM
-- Server version: 10.4.28-MariaDB
-- PHP Version: 8.0.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbms_secb`
--

-- --------------------------------------------------------

--
-- Table structure for table `appointed_patients`
--

CREATE TABLE `appointed_patients` (
  `pat_id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `age` int(3) NOT NULL,
  `doc` varchar(200) NOT NULL,
  `type` varchar(200) NOT NULL,
  `gender` varchar(20) NOT NULL,
  `added` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `appointed_patients`
--

INSERT INTO `appointed_patients` (`pat_id`, `name`, `age`, `doc`, `type`, `gender`, `added`) VALUES
(1, 'manish', 22, 'Dr. Raj', 'Inpatient', 'Male', 'Submitted'),
(2, 'mandar', 23, 'Dr. Vikas', 'Inpatient', 'Male', 'Submitted'),
(3, 'jay', 23, 'Dr. Raj', 'Outpatient', 'Male', 'Submitted'),
(7, 'ram', 22, 'Dr. Raj', 'Inpatient', 'Male', 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `bill_sec`
--

CREATE TABLE `bill_sec` (
  `bill_id` int(3) NOT NULL,
  `name` varchar(500) NOT NULL,
  `receipt` varchar(8000) NOT NULL,
  `amt` int(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `bill_sec`
--

INSERT INTO `bill_sec` (`bill_id`, `name`, `receipt`, `amt`) VALUES
(74, 'manish', '5755-mandar1.png', 20000),
(77, 'ram', '6722-report_HMS .pdf', 757788);

-- --------------------------------------------------------

--
-- Table structure for table `cash_log`
--

CREATE TABLE `cash_log` (
  `cash_id` int(3) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `password` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `cash_log`
--

INSERT INTO `cash_log` (`cash_id`, `name`, `password`) VALUES
(1, 'Demo-1', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `desk_logins`
--

CREATE TABLE `desk_logins` (
  `id` int(100) NOT NULL,
  `name` varchar(500) NOT NULL,
  `email` varchar(100) NOT NULL,
  `password` varchar(25) NOT NULL,
  `session` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `desk_logins`
--

INSERT INTO `desk_logins` (`id`, `name`, `email`, `password`, `session`) VALUES
(1, 'Manish', 'manish@gmail.com', '1111', '2023-10-22 14:34:37');

-- --------------------------------------------------------

--
-- Table structure for table `doctors`
--

CREATE TABLE `doctors` (
  `doc_id` int(3) NOT NULL,
  `doc_name` varchar(200) NOT NULL,
  `doc_age` int(200) NOT NULL,
  `doc_special` varchar(200) NOT NULL,
  `doc_gender` varchar(200) NOT NULL,
  `doc_submitted` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `doctors`
--

INSERT INTO `doctors` (`doc_id`, `doc_name`, `doc_age`, `doc_special`, `doc_gender`, `doc_submitted`) VALUES
(2, 'Dr.Aman', 29, 'Surgeon', 'Male', 'Submitted'),
(3, 'Dr. Raj', 28, 'Surgeon', 'Male', 'Submitted'),
(5, 'Dr. Jay kale', 34, 'Surgeon', 'Male', 'Submitted'),
(8, 'Dr.jay', 11, 'Surgeon', 'Male', 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `em_id` int(3) NOT NULL,
  `em_name` varchar(200) NOT NULL,
  `em_type` varchar(200) NOT NULL,
  `em_gender` varchar(100) NOT NULL,
  `em_submitted` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`em_id`, `em_name`, `em_type`, `em_gender`, `em_submitted`) VALUES
(11, 'ayush', 'Nurse', 'Male', 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `lab_logins`
--

CREATE TABLE `lab_logins` (
  `lab_no` varchar(100) NOT NULL,
  `password` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_logins`
--

INSERT INTO `lab_logins` (`lab_no`, `password`) VALUES
('LAB-01', '1111');

-- --------------------------------------------------------

--
-- Table structure for table `lab_reports`
--

CREATE TABLE `lab_reports` (
  `rep_id` int(5) NOT NULL,
  `name` varchar(2000) NOT NULL,
  `filename` varchar(8000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `lab_reports`
--

INSERT INTO `lab_reports` (`rep_id`, `name`, `filename`) VALUES
(16, 'manish', '1148-report_HMS .pdf'),
(17, '1111', '5626-report_HMS .pdf'),
(18, 'ram', '5656-report_HMS .pdf');

-- --------------------------------------------------------

--
-- Table structure for table `patients`
--

CREATE TABLE `patients` (
  `id` int(100) NOT NULL,
  `name` varchar(200) NOT NULL,
  `age` int(3) NOT NULL,
  `doc` varchar(200) NOT NULL,
  `type` varchar(100) NOT NULL,
  `gender` varchar(100) NOT NULL,
  `added` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `patients`
--

INSERT INTO `patients` (`id`, `name`, `age`, `doc`, `type`, `gender`, `added`) VALUES
(42, 'manish', 22, 'Dr. Raj', 'Inpatient', 'Male', 'Submitted'),
(43, 'mandar', 23, 'Dr. Vikas', 'Inpatient', 'Male', 'Submitted'),
(44, 'jay', 23, 'Dr. Raj', 'Outpatient', 'Male', 'Submitted'),
(48, 'ram', 22, 'Dr. Raj', 'Inpatient', 'Male', 'Submitted');

-- --------------------------------------------------------

--
-- Table structure for table `prescribe_files`
--

CREATE TABLE `prescribe_files` (
  `file_id` int(10) NOT NULL,
  `name` varchar(5000) NOT NULL,
  `prescription` varchar(5000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `prescribe_files`
--

INSERT INTO `prescribe_files` (`file_id`, `name`, `prescription`) VALUES
(8, 'manish', 'abc');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `appointed_patients`
--
ALTER TABLE `appointed_patients`
  ADD PRIMARY KEY (`pat_id`);

--
-- Indexes for table `bill_sec`
--
ALTER TABLE `bill_sec`
  ADD PRIMARY KEY (`bill_id`);

--
-- Indexes for table `cash_log`
--
ALTER TABLE `cash_log`
  ADD PRIMARY KEY (`cash_id`);

--
-- Indexes for table `desk_logins`
--
ALTER TABLE `desk_logins`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `doctors`
--
ALTER TABLE `doctors`
  ADD PRIMARY KEY (`doc_id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`em_id`);

--
-- Indexes for table `lab_logins`
--
ALTER TABLE `lab_logins`
  ADD PRIMARY KEY (`lab_no`);

--
-- Indexes for table `lab_reports`
--
ALTER TABLE `lab_reports`
  ADD PRIMARY KEY (`rep_id`);

--
-- Indexes for table `patients`
--
ALTER TABLE `patients`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `prescribe_files`
--
ALTER TABLE `prescribe_files`
  ADD PRIMARY KEY (`file_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `appointed_patients`
--
ALTER TABLE `appointed_patients`
  MODIFY `pat_id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `bill_sec`
--
ALTER TABLE `bill_sec`
  MODIFY `bill_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=78;

--
-- AUTO_INCREMENT for table `cash_log`
--
ALTER TABLE `cash_log`
  MODIFY `cash_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `desk_logins`
--
ALTER TABLE `desk_logins`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `doctors`
--
ALTER TABLE `doctors`
  MODIFY `doc_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `em_id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `lab_reports`
--
ALTER TABLE `lab_reports`
  MODIFY `rep_id` int(5) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `patients`
--
ALTER TABLE `patients`
  MODIFY `id` int(100) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `prescribe_files`
--
ALTER TABLE `prescribe_files`
  MODIFY `file_id` int(10) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
