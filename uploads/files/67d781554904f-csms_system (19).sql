-- phpMyAdmin SQL Dump
-- version 5.2.1deb1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Mar 16, 2025 at 04:51 PM
-- Server version: 10.11.11-MariaDB-0+deb12u1
-- PHP Version: 8.2.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `csms_system`
--

-- --------------------------------------------------------

--
-- Table structure for table `activities`
--

CREATE TABLE `activities` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `type` text NOT NULL,
  `message` text DEFAULT NULL,
  `due_date` date NOT NULL,
  `due_time` text NOT NULL,
  `min_points` int(11) NOT NULL,
  `max_points` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `term` enum('midterm','final','other') DEFAULT 'other'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `activities`
--

INSERT INTO `activities` (`id`, `title`, `type`, `message`, `due_date`, `due_time`, `min_points`, `max_points`, `class_id`, `subject_id`, `created_at`, `updated_at`, `term`) VALUES
(309, 'Midterm Exam', 'Major Exam', 'asdasd', '2025-03-14', '11:59PM', 60, 120, 156, 113, '2025-03-14 05:18:03', '2025-03-14 05:18:03', 'midterm'),
(310, 'final exam', 'Major Exam', 'Hello', '2025-03-14', '11:59PM', 70, 140, 156, 113, '2025-03-14 05:18:26', '2025-03-14 05:18:26', 'final'),
(311, 'LE1', 'Laboratory Exercise', '1', '2025-03-14', '11:59PM', 25, 50, 156, 113, '2025-03-14 05:18:45', '2025-03-14 05:18:45', 'midterm'),
(312, 'LE2', 'Laboratory Exercise', 'asdad', '2025-03-14', '11:56PM', 20, 40, 156, 113, '2025-03-14 05:19:06', '2025-03-14 05:19:06', 'final'),
(313, 'AA1', 'Assignment/Attendance', 'asdasd', '2025-03-14', '11:59PM', 20, 40, 156, 113, '2025-03-14 05:19:22', '2025-03-14 05:19:22', 'midterm'),
(314, 'AA2', 'Assignment/Attendance', 'asdasd', '2025-03-14', '11:59PM', 30, 60, 156, 113, '2025-03-14 05:19:34', '2025-03-14 05:19:34', 'final'),
(315, '1', 'Major Exam', 'aasdad', '2025-03-14', '11:59PM', 60, 120, 155, 113, '2025-03-14 05:25:01', '2025-03-14 05:25:01', 'midterm'),
(316, '2', 'Major Exam', 'asd', '2025-03-14', '11:59PM', 80, 160, 155, 113, '2025-03-14 05:25:14', '2025-03-14 05:25:14', 'final'),
(317, '3', 'Quizzes', 'asda', '2025-03-14', '11:59PM', 30, 60, 155, 113, '2025-03-14 05:25:25', '2025-03-14 05:25:25', 'midterm'),
(318, 'q2', 'Quizzes', 'adad', '2025-03-14', '11:59PM', 25, 50, 155, 113, '2025-03-14 05:25:56', '2025-03-14 05:25:56', 'final'),
(319, 'aa1', 'Assignment/Attendance/Activities', 'adads', '2025-03-14', '11:59PM', 30, 60, 155, 113, '2025-03-14 05:26:09', '2025-03-14 05:26:09', 'midterm'),
(320, 'aa2', 'Assignment/Attendance/Activities', 'asdas', '2025-03-14', '11:59PM', 40, 80, 155, 113, '2025-03-14 05:26:20', '2025-03-14 05:26:20', 'final'),
(345, 'Midterm', 'Major Exam', 'asdasd', '2025-03-15', '11:59PM', 20, 40, 154, 111, '2025-03-15 07:37:38', '2025-03-15 07:38:00', 'midterm'),
(346, 'Final', 'Major Exam', 'asdad', '2025-03-15', '11:59PM', 20, 40, 154, 111, '2025-03-15 07:38:16', '2025-03-15 07:38:16', 'final'),
(347, 'LE', 'Laboratory Exercises', 'asdasd', '2025-03-15', '11:59PM', 40, 80, 154, 111, '2025-03-15 07:38:30', '2025-03-15 07:38:44', 'midterm'),
(348, 'LE2', 'Laboratory Exercises', 'asdasd', '2025-03-15', '11:59PM', 40, 80, 154, 111, '2025-03-15 07:39:00', '2025-03-15 07:39:00', 'final'),
(349, 'AA1', 'Assignments/Attendance', 'asdasd', '2025-03-15', '11:59PM', 50, 100, 154, 111, '2025-03-15 07:39:20', '2025-03-15 07:39:20', 'midterm'),
(350, 'AA2', 'Assignments/Attendance', 'asdsd', '2025-03-15', '11:59PM', 40, 80, 154, 111, '2025-03-15 07:39:34', '2025-03-15 07:39:34', 'final'),
(351, 'Midterm', 'Major Exam', 'asd', '2025-03-15', '11:59PM', 60, 120, 153, 111, '2025-03-15 07:40:20', '2025-03-15 07:40:20', 'midterm'),
(352, 'Finals', 'Major Exam', 'asdsd', '2025-03-15', '11:59PM', 60, 120, 153, 111, '2025-03-15 07:40:33', '2025-03-15 07:40:33', 'final'),
(353, 'q1', 'Quizzes', 'asdasd', '2025-03-15', '11:59PM', 20, 40, 153, 111, '2025-03-15 07:40:47', '2025-03-15 07:40:47', 'midterm'),
(354, 'q2', 'Quizzes', 'asd', '2025-03-15', '11:59PM', 20, 40, 153, 111, '2025-03-15 07:41:04', '2025-03-15 07:41:04', 'final'),
(355, 'aaa1', 'Assignment/Attendance/Activities', 'asdasd', '2025-03-15', '11:59PM', 20, 40, 153, 111, '2025-03-15 07:41:16', '2025-03-15 07:41:16', 'midterm'),
(356, 'aaa2', 'Assignment/Attendance/Activities', 'adasd', '2025-03-15', '11:59PM', 30, 60, 153, 111, '2025-03-15 07:41:26', '2025-03-15 07:41:26', 'final'),
(357, '123', 'Major Exam', 'asdasd', '2025-03-16', '11:59PM', 20, 40, 153, 111, '2025-03-16 12:15:26', '2025-03-16 12:15:26', 'midterm'),
(359, 'Midterm', 'Major exam', 'Babaa', '2025-03-16', '11:55PM', 20, 40, 158, 116, '2025-03-16 13:16:06', '2025-03-16 13:16:06', 'midterm'),
(360, 'Final', 'Major exam', 'Babaa', '2025-03-16', '11:55PM', 80, 160, 158, 116, '2025-03-16 13:17:42', '2025-03-16 13:17:42', 'final'),
(361, 'Act 1', 'Act', 'Babaa', '2025-03-16', '11:55PM', 20, 40, 158, 116, '2025-03-16 13:23:21', '2025-03-16 13:23:21', 'midterm'),
(362, 'Act 2', 'Act', 'Babaa', '2025-03-16', '11:55PM', 25, 50, 158, 116, '2025-03-16 13:23:45', '2025-03-16 13:23:45', 'final'),
(363, 'Aa1', 'Assignment/attendance', 'Babaa', '2025-03-16', '11:55PM', 25, 50, 158, 116, '2025-03-16 13:24:04', '2025-03-16 13:24:04', 'midterm'),
(364, 'Aa2', 'Assignment/attendance', 'Babaa', '2025-03-16', '11:55PM', 25, 50, 158, 116, '2025-03-16 13:24:37', '2025-03-16 13:24:37', 'final');

-- --------------------------------------------------------

--
-- Table structure for table `activity_attachments`
--

CREATE TABLE `activity_attachments` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `file_name` varchar(255) NOT NULL,
  `file_path` varchar(255) NOT NULL,
  `uploaded_at` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `activity_submissions`
--

CREATE TABLE `activity_submissions` (
  `id` int(11) NOT NULL,
  `activity_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `submission_date` datetime DEFAULT NULL,
  `score` int(11) NOT NULL DEFAULT 0,
  `feedback` text DEFAULT NULL,
  `status` enum('pending','submitted','graded','graded_late') DEFAULT 'pending',
  `file_path` varchar(255) DEFAULT NULL,
  `updated_at` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `activity_submissions`
--

INSERT INTO `activity_submissions` (`id`, `activity_id`, `student_id`, `submission_date`, `score`, `feedback`, `status`, `file_path`, `updated_at`) VALUES
(1903, 309, 202103084, '2025-03-14 05:21:30', 60, 'asda', 'graded', NULL, NULL),
(1904, 309, 202102097, '2025-03-14 05:22:07', 75, 'asdad', 'graded', NULL, NULL),
(1905, 310, 202103084, '2025-03-14 05:21:33', 60, 'asda', 'graded', NULL, NULL),
(1906, 310, 202102097, '2025-03-14 05:22:10', 70, 'asda', 'graded', NULL, NULL),
(1907, 311, 202103084, '2025-03-14 05:21:36', 60, 'asd', 'graded', NULL, NULL),
(1908, 311, 202102097, '2025-03-14 05:22:12', 30, 'asda', 'graded', NULL, NULL),
(1909, 312, 202103084, '2025-03-14 05:21:39', 19, 'asdad', 'graded', NULL, NULL),
(1910, 312, 202102097, '2025-03-14 05:22:15', 40, 'asd', 'graded', NULL, NULL),
(1911, 313, 202103084, '2025-03-14 05:21:41', 30, 'asda', 'graded', NULL, NULL),
(1912, 313, 202102097, '2025-03-14 05:22:17', 35, 'asda', 'graded', NULL, NULL),
(1913, 314, 202103084, '2025-03-14 05:21:43', 40, 'asd', 'graded', NULL, NULL),
(1914, 314, 202102097, '2025-03-14 05:22:20', 60, 'asda', 'graded', NULL, NULL),
(1915, 315, 202103084, '2025-03-14 05:26:36', 100, 'asda', 'graded', NULL, NULL),
(1916, 315, 202102097, '2025-03-14 05:26:55', 82, 'asda', 'graded', NULL, NULL),
(1917, 316, 202103084, '2025-03-14 05:26:39', 120, 'asda', 'graded', NULL, NULL),
(1918, 316, 202102097, '2025-03-14 05:26:57', 83, 'ad', 'graded', NULL, NULL),
(1919, 317, 202103084, '2025-03-14 05:26:41', 55, 'asda', 'graded', NULL, NULL),
(1920, 317, 202102097, '2025-03-14 05:27:00', 46, 'asd', 'graded', NULL, NULL),
(1921, 318, 202103084, '2025-03-14 05:26:43', 20, 'asda', 'graded', NULL, NULL),
(1922, 318, 202102097, '2025-03-14 05:27:02', 25, 'asda', 'graded', NULL, NULL),
(1923, 319, 202103084, '2025-03-14 05:26:45', 60, 'asda', 'graded', NULL, NULL),
(1924, 319, 202102097, '2025-03-14 05:27:05', 32, 'asda', 'graded', NULL, NULL),
(1925, 320, 202103084, '2025-03-14 05:26:47', 80, 'asd', 'graded', NULL, NULL),
(1926, 320, 202102097, '2025-03-14 05:27:08', 70, 'asd', 'graded', NULL, NULL),
(2007, 345, 202103084, '2025-03-16 12:19:44', 35, '2213lmojn', 'graded', NULL, NULL),
(2008, 346, 202103084, '2025-03-16 12:19:46', 36, 'asdad', 'graded', NULL, NULL),
(2009, 347, 202103084, '2025-03-16 12:19:49', 54, 'kmasd', 'graded', NULL, NULL),
(2010, 348, 202103084, '2025-03-16 12:19:51', 46, 'asd', 'graded', NULL, NULL),
(2011, 349, 202103084, '2025-03-16 12:19:53', 80, 'asd', 'graded', NULL, NULL),
(2012, 350, 202103084, '2025-03-16 12:19:55', 70, 'asd', 'graded', NULL, NULL),
(2013, 345, 202102097, '2025-03-16 12:20:02', 20, 'asd', 'graded', NULL, NULL),
(2014, 346, 202102097, '2025-03-16 12:20:04', 20, 'asd', 'graded', NULL, NULL),
(2015, 347, 202102097, '2025-03-16 12:20:06', 45, 'asdad', 'graded', NULL, NULL),
(2016, 348, 202102097, '2025-03-16 12:20:08', 60, 'asdad', 'graded', NULL, NULL),
(2017, 349, 202102097, '2025-03-16 12:20:10', 59, 'asda', 'graded', NULL, NULL),
(2018, 350, 202102097, '2025-03-16 12:20:13', 40, 'asd', 'graded', NULL, NULL),
(2019, 351, 202103084, '2025-03-16 12:20:46', 100, 'asd', 'graded', NULL, NULL),
(2020, 352, 202103084, '2025-03-16 12:20:49', 90, 'asda', 'graded', NULL, NULL),
(2021, 353, 202103084, '2025-03-16 12:20:52', 30, 'asdasd', 'graded', NULL, NULL),
(2022, 354, 202103084, '2025-03-16 12:20:54', 36, 'asd', 'graded', NULL, NULL),
(2023, 355, 202103084, '2025-03-16 12:20:56', 20, 'asdasd', 'graded', NULL, NULL),
(2024, 356, 202103084, '2025-03-16 12:20:58', 36, 'asdasd', 'graded', NULL, NULL),
(2025, 357, 202103084, '2025-03-16 12:21:00', 25, 'asdasd', 'graded', NULL, NULL),
(2026, 351, 202102097, '2025-03-16 12:20:21', 100, 'asdasd', 'graded', NULL, NULL),
(2027, 352, 202102097, '2025-03-16 12:20:23', 100, 'asdasd', 'graded', NULL, NULL),
(2028, 353, 202102097, '2025-03-16 12:20:25', 25, 'asdas', 'graded', NULL, NULL),
(2029, 354, 202102097, '2025-03-16 12:20:27', 35, 'ada', 'graded', NULL, NULL),
(2030, 355, 202102097, '2025-03-16 12:20:28', 26, 'asda', 'graded', NULL, NULL),
(2031, 356, 202102097, '2025-03-16 12:20:31', 36, 'asda', 'graded', NULL, NULL),
(2032, 357, 202102097, '2025-03-16 12:20:33', 35, 'ad', 'graded', NULL, NULL),
(2034, 359, 202100768, '2025-03-16 13:25:31', 38, 'Vaba', 'graded', NULL, NULL),
(2035, 360, 202100768, '2025-03-16 13:25:34', 120, 'Gagahahaha', 'graded', NULL, NULL),
(2036, 361, 202100768, '2025-03-16 13:25:36', 25, '4HHAHA', 'graded', NULL, NULL),
(2037, 362, 202100768, '2025-03-16 13:25:39', 35, 'Ywhaha', 'graded', NULL, NULL),
(2038, 363, 202100768, '2025-03-16 13:25:42', 35, 'Hahaha', 'graded', NULL, NULL),
(2039, 364, 202100768, '2025-03-16 13:25:45', 364, 'Aaaaa', 'graded', NULL, NULL),
(2040, 359, 202102097, NULL, 0, NULL, 'pending', NULL, NULL),
(2041, 360, 202102097, NULL, 0, NULL, 'pending', NULL, NULL),
(2042, 361, 202102097, NULL, 0, NULL, 'pending', NULL, NULL),
(2043, 362, 202102097, NULL, 0, NULL, 'pending', NULL, NULL),
(2044, 363, 202102097, NULL, 0, NULL, 'pending', NULL, NULL),
(2045, 364, 202102097, NULL, 0, NULL, 'pending', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `first_name` varchar(255) NOT NULL,
  `middle_name` varchar(255) NOT NULL,
  `last_name` varchar(255) NOT NULL,
  `date_created` date DEFAULT current_timestamp(),
  `last_login` datetime DEFAULT NULL,
  `phone_number` varchar(255) NOT NULL,
  `gender` text NOT NULL,
  `role` text NOT NULL DEFAULT 'Admin',
  `reset_token` text DEFAULT NULL,
  `status` text DEFAULT 'Inactive',
  `fullName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin`
--

INSERT INTO `admin` (`id`, `username`, `email`, `password`, `first_name`, `middle_name`, `last_name`, `date_created`, `last_login`, `phone_number`, `gender`, `role`, `reset_token`, `status`, `fullName`) VALUES
(11, 'admin_ccs', 'admin_ccs@wmsu.com', '$2y$10$.MViDwKBNYIXCAjJz3iFRea8VEq.TVmG6zoNsd3TYXqw4nDDaBpt2', 'Dean', 'WMSU', 'CCS', '2024-09-22', '2024-12-14 06:52:12', '+639123456789', 'Male', 'Admin', NULL, 'Active', 'Dean WMSU CCS');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notes`
--

CREATE TABLE `admin_notes` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `datetime_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(11) NOT NULL,
  `type` enum('teacher','student','class','subject','semester','account') NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `link` text NOT NULL,
  `status` enum('read','unread') NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_notifications`
--

INSERT INTO `admin_notifications` (`id`, `type`, `title`, `description`, `date`, `link`, `status`) VALUES
(216, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending soon. Please complete all required tasks.', '2025-03-15 04:53:14', '/admin/semester_management.php', 'read'),
(217, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended.', '2025-03-15 15:26:35', '/admin/semester_management.php', 'read'),
(218, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: John Paulo Ortega Abrajano', '2025-03-15 07:43:23', '/capstone/admin/class_management.php', 'read'),
(219, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: John Paulo Ortega Abrajano', '2025-03-15 08:17:44', '/capstone/admin/class_management.php', 'read'),
(220, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: John Paulo Ortega Abrajano', '2025-03-16 03:15:07', '/capstone/admin/class_management.php', 'read'),
(221, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: John Paulo Ortega Abrajano', '2025-03-16 11:32:17', '/capstone/admin/class_management.php', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `admin_reminders`
--

CREATE TABLE `admin_reminders` (
  `id` int(11) NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `level` text NOT NULL,
  `due_date` text NOT NULL,
  `due_time` text NOT NULL,
  `datetime_created` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `archived_semesters`
--

CREATE TABLE `archived_semesters` (
  `id` int(11) NOT NULL,
  `semester_id` int(11) NOT NULL,
  `archive_reason` text NOT NULL,
  `archived_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `archived_semesters`
--

INSERT INTO `archived_semesters` (`id`, `semester_id`, `archive_reason`, `archived_at`) VALUES
(27, 54, 'Semester end reached', '2025-05-14 06:56:14'),
(28, 54, 'Semester end reached', '2025-03-15 03:20:48'),
(29, 54, 'Semester end reached', '2025-03-15 04:10:13'),
(30, 54, 'Semester end reached', '2025-03-15 04:51:10'),
(31, 54, 'Semester end reached', '2025-03-15 07:26:35');

-- --------------------------------------------------------

--
-- Table structure for table `attendance`
--

CREATE TABLE `attendance` (
  `id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `meeting_id` int(11) NOT NULL,
  `status` enum('present','late','absent') NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `date` date NOT NULL,
  `ip_address` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `attendance`
--

INSERT INTO `attendance` (`id`, `student_id`, `class_id`, `meeting_id`, `status`, `timestamp`, `date`, `ip_address`) VALUES
(258, 202103084, 156, 125, 'present', '2025-03-13 20:52:42', '2025-03-14', '158.62.69.57'),
(270, 202102097, 156, 125, 'present', '2025-03-14 04:06:02', '0000-00-00', NULL),
(271, 202103084, 155, 137, 'absent', '2025-03-14 04:11:50', '2025-03-14', NULL),
(272, 202102097, 155, 137, 'present', '2025-03-14 04:11:50', '2025-03-14', NULL),
(312, 202103084, 155, 158, 'present', '2025-03-15 04:48:41', '2025-03-15', '158.62.69.57'),
(313, 202102097, 155, 158, 'absent', '2025-03-15 04:48:19', '2025-03-15', NULL),
(328, 202100768, 157, 169, 'absent', '2025-03-16 12:31:57', '2025-03-16', NULL),
(329, 202103084, 157, 169, 'present', '2025-03-16 12:32:55', '2025-03-16', '158.62.69.57'),
(331, 202103084, 154, 171, 'absent', '2025-03-16 13:31:56', '2025-03-14', NULL),
(332, 202102097, 154, 171, 'absent', '2025-03-16 13:31:56', '2025-03-14', NULL),
(333, 202103084, 153, 172, 'absent', '2025-03-16 13:32:55', '2025-03-16', NULL),
(334, 202102097, 153, 172, 'absent', '2025-03-16 13:32:55', '2025-03-16', NULL),
(338, 202100768, 158, 175, 'present', '2025-03-16 14:00:25', '2025-03-16', '158.62.69.57'),
(339, 202102097, 158, 175, 'absent', '2025-03-16 13:59:39', '2025-03-16', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `classes`
--

CREATE TABLE `classes` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `type` text DEFAULT NULL,
  `subject` text NOT NULL,
  `subject_id` int(11) NOT NULL,
  `code` text DEFAULT NULL,
  `teacher` text NOT NULL,
  `semester` text NOT NULL,
  `studentTotal` int(11) NOT NULL,
  `description` text NOT NULL,
  `classCode` text DEFAULT NULL,
  `requestor` text DEFAULT NULL,
  `status` text NOT NULL,
  `reason` text DEFAULT NULL,
  `datetime_added` datetime NOT NULL DEFAULT current_timestamp(),
  `is_archived` int(11) NOT NULL DEFAULT 0,
  `grade_checker` text DEFAULT 'not_available'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `classes`
--

INSERT INTO `classes` (`id`, `name`, `type`, `subject`, `subject_id`, `code`, `teacher`, `semester`, `studentTotal`, `description`, `classCode`, `requestor`, `status`, `reason`, `datetime_added`, `is_archived`, `grade_checker`) VALUES
(153, 'BSIT-4B', 'Lecture', 'SAM', 111, 'SAM101', 'John Doe A. Padilla', '1st Semester', 2, 'Hello', 'WETSYP', NULL, 'active', NULL, '2025-03-13 20:13:13', 0, 'available'),
(154, 'BSIT-4B', 'Laboratory', 'SAM', 111, 'SAM101', 'John Doe A. Padilla', '1st Semester', 2, 'Hello', 'Q924T9', NULL, 'active', NULL, '2025-03-13 20:13:27', 0, 'available'),
(155, 'BSIT-4B', 'Lecture', 'OOP', 113, 'OOP114', 'John Doe A. Padilla', '1st Semester', 2, 'Hello', '9XFQ1W', NULL, 'active', NULL, '2025-03-13 20:45:40', 0, 'available'),
(156, 'BSIT-4B', 'Laboratory', 'OOP', 113, 'OOP114', 'Jung Sing  Wu', '1st Semester', 2, 'Hello', 'IDQZ4Y', NULL, 'active', NULL, '2025-03-13 20:45:51', 0, 'available'),
(157, 'BSIT-4A', 'Laboratory', 'ATTENDANCE', 115, '1014', 'John Doe A. Padilla', '1st Semester', 2, 'asd', 'DAKAJI', NULL, 'active', NULL, '2025-03-14 00:35:28', 0, 'not_available'),
(158, 'BSCS-4B', 'Lecture', 'Ggggg', 116, 'Gg101', 'Paps Paps Paps', '1st Semester', 2, 'Aaaa', 'CRY5GB', NULL, 'accepted', NULL, '2025-03-16 13:04:36', 0, 'not_available');

-- --------------------------------------------------------

--
-- Table structure for table `classes_meetings`
--

CREATE TABLE `classes_meetings` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `class_id` int(11) NOT NULL,
  `status` text NOT NULL,
  `start_time` text NOT NULL,
  `end_time` text NOT NULL,
  `wmsu_radius` text NOT NULL DEFAULT 'on',
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `classes_meetings`
--

INSERT INTO `classes_meetings` (`id`, `date`, `class_id`, `status`, `start_time`, `end_time`, `wmsu_radius`, `type`) VALUES
(124, '2025-03-14', 153, 'Finished', '4:27 AM', '6:00 AM', 'off', 'Regular'),
(125, '2025-03-14', 156, 'Finished', '4:52 AM', '6:00 AM', 'off', 'Regular'),
(137, '2025-03-14', 155, 'Finished', '12:11 PM', '3:00 PM', 'off', 'Make-up'),
(147, '2025-03-15', 153, 'Finished', '9:00 AM', '9:59 AM', 'off', 'Regular'),
(148, '2025-03-15', 154, 'Finished', '9:45 AM', '12:00 PM', 'on', 'Regular'),
(158, '2025-03-15', 155, 'Finished', '12:48 PM', '3:00 PM', 'off', 'Regular'),
(162, '2025-03-15', 157, 'Finished', '2:51 PM', '3:30 PM', 'on', 'Regular'),
(163, '2025-03-15', 157, 'Finished', '3:33 PM', '4:00 PM', 'on', 'Regular'),
(164, '2025-03-16', 154, 'Ongoing', '5:56 PM', '6:00 PM', 'off', 'Regular'),
(165, '2025-03-16', 153, 'Ongoing', '5:58 PM', '6:00 PM', 'off', 'Regular'),
(169, '2025-03-16', 157, 'Ongoing', '8:31 PM', '9:00 PM', 'on', 'Regular'),
(171, '2025-03-14', 154, 'Scheduled', '9:35 PM', '11:00 PM', 'on', 'Late'),
(172, '2025-03-16', 153, 'Ongoing', '9:30 PM', '11:00 PM', 'on', 'Make-up'),
(175, '2025-03-16', 158, 'Ongoing', '9:59 PM', '11:30 PM', 'off', 'Regular');

-- --------------------------------------------------------

--
-- Table structure for table `class_students`
--

CREATE TABLE `class_students` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `enrollment_date` datetime DEFAULT current_timestamp(),
  `status` enum('active','completed','dropped','withdrawn') DEFAULT 'active',
  `grade` decimal(5,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_requirements_laboratory`
--

CREATE TABLE `course_requirements_laboratory` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `midterm_exams` int(11) NOT NULL,
  `final_exams` int(11) NOT NULL,
  `midterm_assignments` int(11) NOT NULL,
  `final_assignments` int(11) NOT NULL,
  `midterm_exercises` int(11) NOT NULL,
  `final_exercises` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `course_requirements_lecture`
--

CREATE TABLE `course_requirements_lecture` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `midterm_exams` int(11) NOT NULL,
  `final_exams` int(11) NOT NULL,
  `midterm_quizzes` int(11) NOT NULL,
  `final_quizzes` int(11) NOT NULL,
  `midterm_assignments` int(11) NOT NULL,
  `final_assignments` int(11) NOT NULL,
  `midterm_activities` int(11) NOT NULL,
  `final_activities` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `current_semester`
--

CREATE TABLE `current_semester` (
  `id` int(11) NOT NULL,
  `semester` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `current_semester`
--

INSERT INTO `current_semester` (`id`, `semester`) VALUES
(105, '1st Semester');

-- --------------------------------------------------------

--
-- Table structure for table `laboratory_rubrics`
--

CREATE TABLE `laboratory_rubrics` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `major_exam` decimal(5,2) NOT NULL,
  `exercises` decimal(5,2) NOT NULL,
  `assignments_activities_attendance` decimal(5,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `learning_resources`
--

CREATE TABLE `learning_resources` (
  `resource_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `resource_name` varchar(255) NOT NULL,
  `resource_type` text NOT NULL,
  `resource_description` text DEFAULT NULL,
  `resource_url` varchar(500) NOT NULL,
  `uploaded_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lectures`
--

CREATE TABLE `lectures` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `title` text NOT NULL,
  `type` enum('jpg','jpeg','png','pdf','docx','xlsx','mp4','mpeg') NOT NULL,
  `file` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `lecture_rubrics`
--

CREATE TABLE `lecture_rubrics` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `major_exam` decimal(5,2) NOT NULL,
  `quizzes` decimal(5,2) NOT NULL,
  `assignments_activities_attendance` decimal(5,2) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `messages`
--

CREATE TABLE `messages` (
  `id` bigint(255) NOT NULL,
  `sender_id` int(11) NOT NULL,
  `sender_type` enum('admin','student','staff') NOT NULL,
  `receiver_id` int(11) NOT NULL,
  `receiver_type` enum('admin','student','staff') NOT NULL,
  `message` text NOT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp(),
  `sender_name` varchar(255) NOT NULL,
  `receiver_name` varchar(255) NOT NULL,
  `status` text NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `messages`
--

INSERT INTO `messages` (`id`, `sender_id`, `sender_type`, `receiver_id`, `receiver_type`, `message`, `timestamp`, `sender_name`, `receiver_name`, `status`) VALUES
(1741885023203, 11, 'admin', 92, 'staff', 'hey', '2025-03-16 16:42:28', 'Dean WMSU CCS', 'John Doe A. Padilla', 'read'),
(1741885023205, 11, 'admin', 92, 'staff', 'hey', '2025-03-16 16:42:35', 'Dean WMSU CCS', 'John Doe A. Padilla', 'read'),
(1741885023206, 11, 'admin', 92, 'staff', 'asdasd', '2025-03-16 16:42:56', 'Dean WMSU CCS', 'John Doe A. Padilla', 'read'),
(1741885023208, 92, 'staff', 11, 'admin', 'hey', '2025-03-16 16:44:25', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023209, 92, 'staff', 11, 'admin', 'hey', '2025-03-16 16:44:28', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023210, 92, 'staff', 11, 'admin', 'asdasd', '2025-03-16 16:44:39', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023211, 92, 'staff', 11, 'admin', 'asdasdasdasdasd', '2025-03-16 16:44:41', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023212, 92, 'staff', 11, 'admin', 'asdasd', '2025-03-16 16:44:53', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023213, 11, 'admin', 92, 'staff', 'hey', '2025-03-16 16:45:00', 'Dean WMSU CCS', 'John Doe A. Padilla', 'read'),
(1741885023215, 11, 'admin', 92, 'staff', 'asd', '2025-03-16 16:45:07', 'Dean WMSU CCS', 'John Doe A. Padilla', 'read'),
(1741885023216, 11, 'admin', 92, 'staff', 'asdasasd', '2025-03-16 16:45:08', 'Dean WMSU CCS', 'John Doe A. Padilla', 'read'),
(1741885023217, 92, 'staff', 11, 'admin', 'hey', '2025-03-16 16:45:11', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023218, 92, 'staff', 11, 'admin', 'there', '2025-03-16 16:45:12', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023219, 92, 'staff', 11, 'admin', 'xd', '2025-03-16 16:45:46', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023220, 92, 'staff', 11, 'admin', 'wat', '2025-03-16 16:45:48', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023221, 92, 'staff', 11, 'admin', 'hey', '2025-03-16 16:46:16', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023222, 11, 'admin', 92, 'staff', 'hey', '2025-03-16 16:46:28', 'Dean WMSU CCS', 'John Doe A. Padilla', 'read'),
(1741885023223, 92, 'staff', 11, 'admin', 'hey', '2025-03-16 16:46:56', 'John Doe A. Padilla', 'Dean WMSU CCS', 'read'),
(1741885023224, 11, 'admin', 92, 'staff', 'hey', '2025-03-16 16:47:02', 'Dean WMSU CCS', 'John Doe A. Padilla', 'read'),
(1741885023225, 92, 'staff', 11, 'admin', 'nadasdasdas', '2025-03-16 16:47:23', 'John Doe A. Padilla', 'Dean WMSU CCS', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `rubrics`
--

CREATE TABLE `rubrics` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `percentile` decimal(10,0) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rubrics`
--

INSERT INTO `rubrics` (`id`, `class_id`, `subject_id`, `title`, `percentile`, `created_at`, `updated_at`) VALUES
(96, 154, 111, 'Major Exam', 40, '2025-03-13 20:19:20', '2025-03-13 20:19:54'),
(97, 154, 111, 'Laboratory Exercises', 50, '2025-03-13 20:19:32', '2025-03-13 20:19:59'),
(98, 154, 111, 'Assignments/Attendance', 10, '2025-03-13 20:19:45', '2025-03-13 20:20:06'),
(99, 153, 111, 'Major Exam', 40, '2025-03-13 20:20:37', '2025-03-13 20:21:01'),
(100, 153, 111, 'Quizzes', 30, '2025-03-13 20:20:41', '2025-03-13 20:21:21'),
(101, 153, 111, 'Assignment/Attendance/Activities', 30, '2025-03-13 20:20:56', '2025-03-13 20:21:25'),
(102, 155, 113, 'Major Exam', 40, '2025-03-13 20:48:01', '2025-03-15 06:31:13'),
(103, 155, 113, 'Quizzes', 30, '2025-03-13 20:48:09', '2025-03-15 06:31:16'),
(104, 155, 113, 'Assignment/Attendance/Activities', 30, '2025-03-13 20:48:21', '2025-03-13 20:48:33'),
(105, 156, 113, 'Major Exam', 40, '2025-03-13 20:53:31', '2025-03-13 20:53:56'),
(106, 156, 113, 'Laboratory Exercise', 50, '2025-03-13 20:53:40', '2025-03-13 20:53:59'),
(107, 156, 113, 'Assignment/Attendance', 10, '2025-03-13 20:53:49', '2025-03-13 20:54:02'),
(108, 157, 115, 'Major Exam', 40, '2025-03-16 12:27:06', '2025-03-16 12:27:24'),
(109, 157, 115, 'LE', 50, '2025-03-16 12:27:11', '2025-03-16 12:27:27'),
(110, 157, 115, 'Attendance', 10, '2025-03-16 12:27:15', '2025-03-16 12:27:29'),
(111, 158, 116, 'Major exam', 40, '2025-03-16 13:06:59', '2025-03-16 13:07:22'),
(113, 158, 116, 'Act', 30, '2025-03-16 13:07:16', '2025-03-16 13:07:30'),
(114, 158, 116, 'Assignment/attendance', 30, '2025-03-16 13:14:31', '2025-03-16 13:14:46');

-- --------------------------------------------------------

--
-- Table structure for table `rubric_requirements`
--

CREATE TABLE `rubric_requirements` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `rubric_title` varchar(255) NOT NULL,
  `midterm_count` int(11) NOT NULL DEFAULT 0,
  `final_count` int(11) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `rubric_requirements`
--

INSERT INTO `rubric_requirements` (`id`, `class_id`, `rubric_title`, `midterm_count`, `final_count`) VALUES
(57, 154, 'Major Exam', 1, 1),
(58, 154, 'Laboratory Exercises', 1, 1),
(59, 154, 'Assignments/attendance', 1, 1),
(60, 153, 'Major Exam', 1, 1),
(61, 153, 'Quizzes', 1, 1),
(62, 153, 'Assignment/attendance/activities', 1, 1),
(63, 155, 'Major Exam', 1, 1),
(64, 155, 'Quizzes', 1, 1),
(65, 155, 'Assignment/attendance/activities', 1, 1),
(66, 156, 'Major Exam', 1, 1),
(67, 156, 'Laboratory Exercise', 1, 1),
(68, 156, 'Assignment/attendance', 1, 1),
(71, 158, 'Major Exam', 1, 1),
(72, 158, 'Act', 1, 1),
(73, 158, 'Assignment/attendance', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `semester`
--

CREATE TABLE `semester` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `start_date` date NOT NULL,
  `end_date` date NOT NULL,
  `school_year` text NOT NULL,
  `description` text DEFAULT NULL,
  `status` enum('active','inactive','archived') DEFAULT 'inactive',
  `archived` tinyint(1) DEFAULT 0,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `semester`
--

INSERT INTO `semester` (`id`, `name`, `start_date`, `end_date`, `school_year`, `description`, `status`, `archived`, `created_at`, `updated_at`) VALUES
(54, '1st Semester', '2025-03-15', '2025-05-07', '2025', 'Hello', 'active', 0, '2025-03-13 20:11:15', '2025-03-15 07:56:32');

-- --------------------------------------------------------

--
-- Table structure for table `specific_rubrics`
--

CREATE TABLE `specific_rubrics` (
  `id` int(11) NOT NULL,
  `rubric_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `value` decimal(5,2) NOT NULL DEFAULT 0.00
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `staff_accounts`
--

CREATE TABLE `staff_accounts` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `department` text DEFAULT NULL,
  `date_created` date NOT NULL DEFAULT current_timestamp(),
  `phone_number` text DEFAULT NULL,
  `gender` text NOT NULL,
  `datetime_added` datetime NOT NULL DEFAULT current_timestamp(),
  `role` text NOT NULL DEFAULT 'Staff',
  `status` text NOT NULL DEFAULT 'Inactive',
  `reset_token` text DEFAULT NULL,
  `middle_name` text NOT NULL,
  `last_name` text NOT NULL,
  `fullName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff_accounts`
--

INSERT INTO `staff_accounts` (`id`, `first_name`, `email`, `password`, `department`, `date_created`, `phone_number`, `gender`, `datetime_added`, `role`, `status`, `reset_token`, `middle_name`, `last_name`, `fullName`) VALUES
(92, 'John Doe', 'johndoe@gmail.com', '$2y$10$.MViDwKBNYIXCAjJz3iFRea8VEq.TVmG6zoNsd3TYXqw4nDDaBpt2', 'Department of Information Technology', '2025-03-13', '+639657485296', 'Male', '2025-03-13 20:12:59', 'Staff', 'Active', NULL, 'A.', 'Padilla', 'John Doe A. Padilla'),
(93, 'Jung', 'jung@gmail.com', '$2y$10$tNjtp59II//TkvG7P3v9Z./EIMPDtzSmksEz21GSKLQz3q7O2vTAW', 'Department of Information Technology', '2025-03-13', '+639587496285', 'Female', '2025-03-13 20:43:46', 'Staff', 'Active', NULL, 'Sing ', 'Wu', 'Jung Sing  Wu'),
(94, 'Paps', 'paps@gmail.com', '$2y$10$6waYt5xXGvAlnmFF/R2ClOa/nUqo4pL7jd6jELpruxsDIR2xsodle', 'Department of Computer Science', '2025-03-16', '+636598235647', 'Male', '2025-03-16 13:00:37', 'Staff', 'Active', NULL, 'Paps', 'Paps', 'Paps Paps Paps');

-- --------------------------------------------------------

--
-- Table structure for table `staff_advising`
--

CREATE TABLE `staff_advising` (
  `id` int(11) NOT NULL,
  `fullName` text NOT NULL,
  `class_advising` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `staff_advising`
--

INSERT INTO `staff_advising` (`id`, `fullName`, `class_advising`) VALUES
(122, 'John Doe A. Padilla', 'BSIT-3B'),
(123, 'John Doe A. Padilla', 'BSIT-4A'),
(124, 'John Doe A. Padilla', 'BSIT-4B'),
(128, 'Jung Sing  Wukong', 'BSIT-1B'),
(129, 'Jung Sing  Wukong', 'BSIT-2A'),
(130, 'Jung Sing  Wukong', 'BSIT-4B'),
(131, 'Jung Sing  Wu', 'BSIT-1B'),
(132, 'Jung Sing  Wu', 'BSIT-2A'),
(133, 'Jung Sing  Wu', 'BSIT-4B'),
(134, 'Paps Paps Paps', 'BSCS-4A'),
(135, 'Paps Paps Paps', 'BSCS-4B');

-- --------------------------------------------------------

--
-- Table structure for table `staff_notifications`
--

CREATE TABLE `staff_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('teacher','student','class','subject','semester','account') NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `link` text NOT NULL,
  `status` enum('read','unread') NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `staff_notifications`
--

INSERT INTO `staff_notifications` (`id`, `user_id`, `type`, `title`, `description`, `date`, `link`, `status`) VALUES
(222, 93, 'class', 'You have been assigned as a teacher for BSIT-4B to be taught under subject of: OOP!', 'You have been assigned as the teacher for BSIT-4B, under the subject of OOP. Please review the class details and prepare for its integration.', '2025-03-13 20:45:51', '/staff/class_management.php', 'unread'),
(223, 93, 'class', 'A new student has entered your class ID: 156 with student ID of: 202103084', 'A new student with Student ID: 202103084 has joined your class (ID: 156). \n                Visit the class management page for more details.', '2025-03-13 20:52:23', '/staff/class_management.php', 'unread'),
(229, 93, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required documentary requirements to the dean on time!', '2025-03-14 06:52:06', '/ccs-sms.com/capstone/staff/class_management.php', 'unread'),
(231, 93, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required documentary requirements to the dean on time!', '2025-03-14 06:52:46', '/ccs-sms.com/capstone/staff/class_management.php', 'unread'),
(233, 93, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-14 06:56:14', '/ccs-sms.com/capstone/staff/class_management.php', 'unread'),
(235, 93, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-15 11:20:48', '/capstone/staff/class_management.php', 'unread'),
(237, 93, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required documentary requirements to the dean on time!', '2025-03-15 11:23:06', '/capstone/staff/class_management.php', 'unread'),
(239, 93, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required documentary requirements to the dean on time!', '2025-03-15 11:23:18', '/capstone/staff/class_management.php', 'unread'),
(241, 93, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required documentary requirements to the dean on time!', '2025-03-15 11:31:18', '/capstone/staff/class_management.php', 'unread'),
(243, 93, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please complete any required tasks.', '2025-03-15 03:43:10', '/capstone/staff/class_management.php', 'unread'),
(245, 93, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please complete any required tasks.', '2025-03-15 03:43:12', '/capstone/staff/class_management.php', 'unread'),
(247, 93, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please complete any required tasks.', '2025-03-15 03:43:50', '/capstone/staff/class_management.php', 'unread'),
(249, 93, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-15 12:10:13', '/staff/class_management.php', 'unread'),
(251, 93, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-15 12:51:10', '/staff/class_management.php', 'unread'),
(253, 93, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending on March 17, 2025. Please finalize your records.', '2025-03-15 04:56:38', '/staff/class_management.php', 'unread'),
(255, 93, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending on March 17, 2025. Please finalize your records.', '2025-03-15 04:56:40', '/staff/class_management.php', 'unread'),
(257, 93, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending on March 17, 2025. Please finalize your records.', '2025-03-15 04:56:57', '/staff/class_management.php', 'unread'),
(259, 92, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending on March 17, 2025. Please finalize your records.', '2025-03-15 05:17:16', '/staff/class_management.php', 'read'),
(260, 92, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-15 15:26:35', '/staff/class_management.php', 'read'),
(261, 93, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-15 15:26:35', '/staff/class_management.php', 'unread'),
(262, 94, 'class', 'You have been assigned as a teacher for BSCS-4B to be taught under subject of: Ggggg!', 'You have been assigned as the teacher for BSCS-4B, under the subject of Ggggg. Please review the class details and prepare for its integration.', '2025-03-16 13:04:36', '/capstone/staff/class_management.php', 'read');

-- --------------------------------------------------------

--
-- Table structure for table `students`
--

CREATE TABLE `students` (
  `id` int(11) NOT NULL,
  `first_name` text NOT NULL,
  `student_id` int(11) NOT NULL,
  `gender` text NOT NULL,
  `course` text NOT NULL,
  `year_level` text NOT NULL,
  `email` text NOT NULL,
  `password` text NOT NULL,
  `role` text NOT NULL DEFAULT 'Student',
  `status` text NOT NULL DEFAULT 'inactive',
  `activation_token` text DEFAULT NULL,
  `reset_token` text DEFAULT NULL,
  `middle_name` text NOT NULL,
  `last_name` text NOT NULL,
  `fullName` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students`
--

INSERT INTO `students` (`id`, `first_name`, `student_id`, `gender`, `course`, `year_level`, `email`, `password`, `role`, `status`, `activation_token`, `reset_token`, `middle_name`, `last_name`, `fullName`) VALUES
(202100768, 'John Paulo', 202100768, 'Male', 'BSIT', '4th Year', 'qb202100768@wmsu.edu.ph', '$2y$10$OaPpn7dvFQNSbUEATCmsoef.Vf6bpH8mvXrA1C9k.Fz2H9vN9cKhu', 'Student', 'active', '3268216252b8e5ef235e349122aa0d968072b5e997400ec4d2', NULL, 'Ortega', 'Abrajano', 'John Paulo Ortega Abrajano'),
(202102097, 'Leonard', 202102097, 'Male', 'BSIT', '4th Year', 'qb202102097@wmsu.edu.ph', '$2y$10$zJCWWQkh4aYfeZO40NKt1.tRx5TUKR/IzpvTcEEDqcE/KLv5Swy4q', 'Student', 'active', '00bb80b3c3709811edef4d580f701933e2700d58af356d76d7', NULL, 'A.', 'Aquino', 'Leonard A. Aquino'),
(202103084, 'Daniel', 202103084, 'Male', 'BSIT', '4th Year', 'qb202103084@wmsu.edu.ph', '$2y$10$abneaNT21EL1hmn6HbFAVO5jTkZKpssB/kjqbsD2w8Nq1m/6g86/y', 'Student', 'active', 'a0a7fcff8072a2ba53ba0bde01a1debd3253b932a877b20f0c', 'bd23a9ad8d87f5965f65b1902b76d473aaf36d90e334d03898f1085e3e5aa626c52d2f69f5002fc4be5613d339e6a858b598', 'A.', 'Padilla', 'Daniel A. Padilla');

-- --------------------------------------------------------

--
-- Table structure for table `students_enrollments`
--

CREATE TABLE `students_enrollments` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `students_enrollments`
--

INSERT INTO `students_enrollments` (`id`, `class_id`, `student_id`) VALUES
(186, 155, 202103084),
(187, 156, 202103084),
(189, 155, 202102097),
(190, 156, 202102097),
(196, 157, 202100768),
(197, 154, 202103084),
(198, 154, 202102097),
(199, 153, 202103084),
(200, 153, 202102097),
(201, 157, 202103084),
(205, 158, 202100768),
(206, 158, 202102097);

-- --------------------------------------------------------

--
-- Table structure for table `student_grades`
--

CREATE TABLE `student_grades` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `midterm_grade` text NOT NULL DEFAULT '5',
  `final_grade` text NOT NULL DEFAULT '5',
  `overall_grade` text NOT NULL DEFAULT '5',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` text DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_grades`
--

INSERT INTO `student_grades` (`id`, `class_id`, `student_id`, `midterm_grade`, `final_grade`, `overall_grade`, `updated_at`, `status`) VALUES
(555, 155, 202103084, '1.00', '2.00', '1.50', '2025-03-15 06:31:37', NULL),
(556, 156, 202103084, '1.25', '3.00', '2.00', '2025-03-15 06:18:00', NULL),
(558, 155, 202102097, '2.25', '2.50', '2.25', '2025-03-15 06:26:18', ''),
(559, 156, 202102097, '2.50', '1.75', '2.00', '2025-03-14 05:57:51', ''),
(565, 157, 202100768, 'INC', 'INC', 'INC', '2025-03-16 12:27:01', ''),
(566, 154, 202103084, '2.00', '2.25', '2.00', '2025-03-16 12:24:59', ''),
(567, 154, 202102097, '3.00', '2.75', '2.75', '2025-03-16 12:24:59', ''),
(568, 153, 202103084, '2.50', '2.25', '2.25', '2025-03-16 12:25:02', ''),
(569, 153, 202102097, '2.25', '2.00', '2.00', '2025-03-16 12:25:02', ''),
(570, 157, 202103084, 'INC', 'INC', 'INC', '2025-03-16 12:27:01', ''),
(574, 158, 202100768, '2.00', '1.00', '1.50', '2025-03-16 13:27:31', ''),
(575, 158, 202102097, 'INC', 'INC', 'INC', '2025-03-16 13:46:32', '');

-- --------------------------------------------------------

--
-- Table structure for table `student_info`
--

CREATE TABLE `student_info` (
  `id` int(11) NOT NULL,
  `student_id` varchar(50) NOT NULL,
  `full_name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `phone_number` varchar(20) NOT NULL,
  `course_year` varchar(255) NOT NULL,
  `address` text NOT NULL,
  `emergency_contact` varchar(20) NOT NULL,
  `gender` enum('Male','Female','Other') NOT NULL,
  `picture` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_info`
--

INSERT INTO `student_info` (`id`, `student_id`, `full_name`, `email`, `phone_number`, `course_year`, `address`, `emergency_contact`, `gender`, `picture`) VALUES
(8, '202102097', 'Leonard A. Aquino', 'leo@gmail.com', '09567485296', 'Bachelor of Science in Information Technology - 4th Year', 'Zamboanga City', '911', 'Male', NULL),
(9, '202100768', 'John Paulo Ortega Abrajano', 'jpabrajano81@gmail.com', '09651345936', 'Bachelor of Science in Information Technology - 4th Year', 'Maasin Caragasan Zamboanga City', '096865417623', 'Male', NULL),
(10, '202103084', 'Daniel A. Padilla', 'jpabrajano91@gmail.com', '09163075568', 'Bachelor of Science in Information Technology - 4th Year', 'Parat Zamboanga City', '096865417623', 'Male', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_notifications`
--

CREATE TABLE `student_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` enum('teacher','student','class','subject','semester','account','enrollment') NOT NULL,
  `title` text NOT NULL,
  `description` text NOT NULL,
  `date` datetime NOT NULL DEFAULT current_timestamp(),
  `link` text NOT NULL,
  `status` enum('read','unread') NOT NULL DEFAULT 'unread'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `student_notifications`
--

INSERT INTO `student_notifications` (`id`, `user_id`, `type`, `title`, `description`, `date`, `link`, `status`) VALUES
(849, 202103084, 'enrollment', 'You have been enrolled in the class \'SAM\' (Class: BSIT-4B) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'SAM\', instructed by John Doe A. Padilla. Class ID: 153.', '2025-03-13 20:15:57', 'https://ccs-sms.com/students/student_classes.php?class_id=153', 'read'),
(850, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-13 20:16:37', 'https://ccs-sms.com/students/student_dashboard.php?class_id=154', 'read'),
(851, 202103084, '', 'New Assessment Added: Midterm at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:22:11', 'https://ccs-sms.com/students/student_classes.php?class_id=154', 'read'),
(852, 202103084, '', 'New Assessment Added: Final Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:22:31', 'https://ccs-sms.com/students/student_classes.php?class_id=154', 'read'),
(853, 202103084, '', 'New Assessment Added: LE1 at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:22:48', 'https://ccs-sms.com/students/student_classes.php?class_id=154', 'read'),
(854, 202103084, '', 'New Assessment Added: LE2 at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:23:05', 'https://ccs-sms.com/students/student_classes.php?class_id=154', 'read'),
(855, 202103084, '', 'New Assessment Added: Assignments1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:23:25', 'https://ccs-sms.com/students/student_classes.php?class_id=154', 'read'),
(856, 202103084, '', 'New Assessment Added: Assignments2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:23:45', 'https://ccs-sms.com/students/student_classes.php?class_id=154', 'read'),
(857, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 78. Status: Graded.', '2025-03-13 20:24:30', 'view_activity.php?submission_id=1855', 'read'),
(858, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 89. Status: Graded.', '2025-03-13 20:24:38', 'view_activity.php?submission_id=1856', 'read'),
(859, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 31. Status: Graded.', '2025-03-13 20:24:46', 'view_activity.php?submission_id=1857', 'read'),
(860, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 31. Status: Graded.', '2025-03-13 20:24:47', 'view_activity.php?submission_id=1857', 'read'),
(861, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-13 20:24:53', 'view_activity.php?submission_id=1858', 'read'),
(862, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-13 20:24:58', 'view_activity.php?submission_id=1859', 'read'),
(863, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-13 20:24:59', 'view_activity.php?submission_id=1859', 'read'),
(864, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-13 20:25:04', 'view_activity.php?submission_id=1860', 'read'),
(865, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-13 20:27:48', 'https://ccs-sms.com/students/student_dashboard.php?class_id=153', 'read'),
(866, 202103084, '', 'New Assessment Added: Midterm Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:30:32', 'https://ccs-sms.com/students/student_classes.php?class_id=153', 'read'),
(867, 202103084, '', 'New Assessment Added: Finals Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:30:59', 'https://ccs-sms.com/students/student_classes.php?class_id=153', 'read'),
(868, 202103084, '', 'New Assessment Added: Quiz 1  at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:31:15', 'https://ccs-sms.com/students/student_classes.php?class_id=153', 'read'),
(869, 202103084, '', 'New Assessment Added: Quiz 2 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:31:30', 'https://ccs-sms.com/students/student_classes.php?class_id=153', 'read'),
(870, 202103084, '', 'New Assessment Added: Assignments at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:31:57', 'https://ccs-sms.com/students/student_classes.php?class_id=153', 'read'),
(871, 202103084, '', 'New Assessment Added: Assignments2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-13 20:32:11', 'https://ccs-sms.com/students/student_classes.php?class_id=153', 'read'),
(872, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 78. Status: Graded.', '2025-03-13 20:32:47', 'view_activity.php?submission_id=1861', 'read'),
(873, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 80. Status: Graded.', '2025-03-13 20:32:54', 'view_activity.php?submission_id=1862', 'read'),
(874, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-13 20:33:01', 'view_activity.php?submission_id=1863', 'read'),
(875, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-13 20:33:06', 'view_activity.php?submission_id=1864', 'read'),
(876, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-13 20:33:12', 'view_activity.php?submission_id=1865', 'read'),
(877, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-13 20:33:18', 'view_activity.php?submission_id=1866', 'read'),
(878, 202103084, 'enrollment', 'You have been enrolled in the class \'OOP\' (Class: BSIT-4B) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'OOP\', instructed by John Doe A. Padilla. Class ID: 155.', '2025-03-13 20:46:25', 'https://ccs-sms.com/students/student_classes.php?class_id=155', 'read'),
(879, 202103084, '', 'New Assessment Added: Midterm Exam at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:49:13', 'https://ccs-sms.com/students/student_classes.php?class_id=155', 'read'),
(880, 202103084, '', 'New Assessment Added: Final Exam at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:49:31', 'https://ccs-sms.com/students/student_classes.php?class_id=155', 'read'),
(881, 202103084, '', 'New Assessment Added: Quiz1 at subject: OOP', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:49:48', 'https://ccs-sms.com/students/student_classes.php?class_id=155', 'read'),
(882, 202103084, '', 'New Assessment Added: Quiz2 at subject: OOP', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:49:59', 'https://ccs-sms.com/students/student_classes.php?class_id=155', 'read'),
(883, 202103084, '', 'New Assessment Added: Assignment at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:50:16', 'https://ccs-sms.com/students/student_classes.php?class_id=155', 'read'),
(884, 202103084, '', 'New Assessment Added: Assignment2 at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:50:28', 'https://ccs-sms.com/students/student_classes.php?class_id=155', 'read'),
(885, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 58. Status: Graded.', '2025-03-13 20:51:06', 'view_activity.php?submission_id=1867', 'read'),
(886, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 65. Status: Graded.', '2025-03-13 20:51:13', 'view_activity.php?submission_id=1868', 'read'),
(887, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 40. Status: Graded.', '2025-03-13 20:51:17', 'view_activity.php?submission_id=1869', 'read'),
(888, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-13 20:51:24', 'view_activity.php?submission_id=1870', 'read'),
(889, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 23. Status: Graded.', '2025-03-13 20:51:29', 'view_activity.php?submission_id=1871', 'read'),
(890, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 23. Status: Graded.', '2025-03-13 20:51:29', 'view_activity.php?submission_id=1871', 'read'),
(891, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-13 20:51:35', 'view_activity.php?submission_id=1872', 'read'),
(892, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-13 20:52:42', 'https://ccs-sms.com/students/student_dashboard.php?class_id=156', 'read'),
(893, 202103084, '', 'New Assessment Added: Midterm Exam at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:54:51', 'https://ccs-sms.com/students/student_classes.php?class_id=156', 'read'),
(894, 202103084, '', 'New Assessment Added: Final Exam at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:55:07', 'https://ccs-sms.com/students/student_classes.php?class_id=156', 'read'),
(895, 202103084, '', 'New Assessment Added: LE1 at subject: OOP', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:55:27', 'https://ccs-sms.com/students/student_classes.php?class_id=156', 'read'),
(896, 202103084, '', 'New Assessment Added: LE2 at subject: OOP', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:55:40', 'https://ccs-sms.com/students/student_classes.php?class_id=156', 'read'),
(897, 202103084, '', 'New Assessment Added: Assignment1q at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:56:02', 'https://ccs-sms.com/students/student_classes.php?class_id=156', 'read'),
(898, 202103084, '', 'New Assessment Added: Assignment2 at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-13 20:56:15', 'https://ccs-sms.com/students/student_classes.php?class_id=156', 'read'),
(899, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-13 20:56:47', 'view_activity.php?submission_id=1873', 'read'),
(900, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 16. Status: Graded.', '2025-03-13 20:56:52', 'view_activity.php?submission_id=1874', 'read'),
(901, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-13 20:56:58', 'view_activity.php?submission_id=1875', 'read'),
(902, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-13 20:57:05', 'view_activity.php?submission_id=1878', 'read'),
(903, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 10. Status: Graded.', '2025-03-13 20:57:12', 'view_activity.php?submission_id=1876', 'read'),
(904, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-13 20:57:17', 'view_activity.php?submission_id=1877', 'read'),
(905, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 00:58:09', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(906, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 01:13:12', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(907, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 01:13:12', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(908, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 01:13:12', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(909, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 01:13:12', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(910, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 01:13:12', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(911, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 01:13:12', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(912, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 01:13:12', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(913, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 01:13:12', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(914, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 01:13:12', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(915, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 01:21:06', 'https://ccs-sms.com/students/student_dashboard.php?class_id=157', 'read'),
(916, 202102097, 'enrollment', 'You have been enrolled in the class \'OOP\' (Class: BSIT-4B) by Jung Sing  Wu.', 'Congratulations! You have been successfully enrolled in the subject \'OOP\', instructed by Jung Sing  Wu. Class ID: 156.', '2025-03-14 04:06:02', 'https://ccs-sms.com/students/student_classes.php?class_id=156', 'read'),
(917, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 19. Status: Graded.', '2025-03-14 04:07:33', 'view_activity.php?submission_id=1880', 'read'),
(918, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-14 04:07:40', 'view_activity.php?submission_id=1882', 'read'),
(919, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 04:07:48', 'view_activity.php?submission_id=1889', 'read'),
(920, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 04:07:49', 'view_activity.php?submission_id=1889', 'read'),
(921, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 04:07:58', 'view_activity.php?submission_id=1892', 'read'),
(922, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 19. Status: Graded.', '2025-03-14 04:08:08', 'view_activity.php?submission_id=1894', 'read'),
(923, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 29. Status: Graded.', '2025-03-14 04:08:15', 'view_activity.php?submission_id=1898', 'read'),
(924, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-14 04:08:41', 'view_activity.php?submission_id=1879', 'read'),
(925, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 04:08:47', 'view_activity.php?submission_id=1881', 'read'),
(926, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 80. Status: Graded.', '2025-03-14 04:08:55', 'view_activity.php?submission_id=1888', 'read'),
(927, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 65. Status: Graded.', '2025-03-14 04:09:01', 'view_activity.php?submission_id=1897', 'read'),
(928, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 23. Status: Graded.', '2025-03-14 04:09:09', 'view_activity.php?submission_id=1901', 'read'),
(929, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 31. Status: Graded.', '2025-03-14 04:09:19', 'view_activity.php?submission_id=1902', 'read'),
(930, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-14 04:11:50', 'https://ccs-sms.com/students/student_dashboard.php?class_id=155', 'read'),
(931, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-14 04:11:50', 'https://ccs-sms.com/students/student_dashboard.php?class_id=155', 'read'),
(932, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-14 04:13:21', 'https://ccs-sms.com/students/student_dashboard.php?class_id=156', 'read'),
(933, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-14 04:13:21', 'https://ccs-sms.com/students/student_dashboard.php?class_id=156', 'read'),
(934, 202103084, '', 'New Assessment Added: Midterm Exam at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:18:03', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(935, 202102097, '', 'New Assessment Added: Midterm Exam at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:18:03', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(936, 202103084, '', 'New Assessment Added: final exam at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:18:26', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(937, 202102097, '', 'New Assessment Added: final exam at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:18:26', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(938, 202103084, '', 'New Assessment Added: LE1 at subject: OOP', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:18:45', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(939, 202102097, '', 'New Assessment Added: LE1 at subject: OOP', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:18:45', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(940, 202103084, '', 'New Assessment Added: LE2 at subject: OOP', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'OOP\', due on: 11:56PM.', '2025-03-14 05:19:06', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(941, 202102097, '', 'New Assessment Added: LE2 at subject: OOP', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'OOP\', due on: 11:56PM.', '2025-03-14 05:19:06', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(942, 202103084, '', 'New Assessment Added: AA1 at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:19:22', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(943, 202102097, '', 'New Assessment Added: AA1 at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:19:22', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(944, 202103084, '', 'New Assessment Added: AA2 at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:19:34', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(945, 202102097, '', 'New Assessment Added: AA2 at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:19:34', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=156', 'read'),
(946, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 80. Status: Graded.', '2025-03-14 05:22:30', 'view_activity.php?submission_id=1903', 'read'),
(947, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 50. Status: Graded.', '2025-03-14 05:22:36', 'view_activity.php?submission_id=1904', 'read'),
(948, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 81. Status: Graded.', '2025-03-14 05:22:42', 'view_activity.php?submission_id=1905', 'read'),
(949, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 70. Status: Graded.', '2025-03-14 05:22:55', 'view_activity.php?submission_id=1906', 'read'),
(950, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-14 05:23:01', 'view_activity.php?submission_id=1907', 'read'),
(951, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-14 05:23:07', 'view_activity.php?submission_id=1908', 'read'),
(952, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 19. Status: Graded.', '2025-03-14 05:23:15', 'view_activity.php?submission_id=1909', 'read'),
(953, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 36. Status: Graded.', '2025-03-14 05:23:22', 'view_activity.php?submission_id=1910', 'read'),
(954, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-14 05:23:29', 'view_activity.php?submission_id=1911', 'read'),
(955, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-14 05:23:34', 'view_activity.php?submission_id=1912', 'read'),
(956, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 35. Status: Graded.', '2025-03-14 05:23:39', 'view_activity.php?submission_id=1913', 'read'),
(957, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-14 05:23:44', 'view_activity.php?submission_id=1914', 'read'),
(958, 202103084, '', 'New Assessment Added: 1 at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:25:01', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(959, 202102097, '', 'New Assessment Added: 1 at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:25:01', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(960, 202103084, '', 'New Assessment Added: 2 at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:25:14', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(961, 202102097, '', 'New Assessment Added: 2 at subject: OOP', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:25:14', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(962, 202103084, '', 'New Assessment Added: 3 at subject: OOP', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:25:25', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(963, 202102097, '', 'New Assessment Added: 3 at subject: OOP', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:25:25', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(964, 202103084, '', 'New Assessment Added: q2 at subject: OOP', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:25:56', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(965, 202102097, '', 'New Assessment Added: q2 at subject: OOP', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:25:56', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(966, 202103084, '', 'New Assessment Added: aa1 at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:26:09', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(967, 202102097, '', 'New Assessment Added: aa1 at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:26:09', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(968, 202103084, '', 'New Assessment Added: aa2 at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:26:20', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(969, 202102097, '', 'New Assessment Added: aa2 at subject: OOP', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'OOP\', due on: 11:59PM.', '2025-03-14 05:26:20', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(970, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 80. Status: Graded.', '2025-03-14 05:27:17', 'view_activity.php?submission_id=1915', 'read'),
(971, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 58. Status: Graded.', '2025-03-14 05:27:22', 'view_activity.php?submission_id=1916', 'read'),
(972, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 81. Status: Graded.', '2025-03-14 05:27:28', 'view_activity.php?submission_id=1917', 'read'),
(973, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 80. Status: Graded.', '2025-03-14 05:27:34', 'view_activity.php?submission_id=1918', 'read'),
(974, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-14 05:27:39', 'view_activity.php?submission_id=1919', 'read'),
(975, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 05:27:45', 'view_activity.php?submission_id=1920', 'read'),
(976, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 05:27:51', 'view_activity.php?submission_id=1921', 'read'),
(977, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 05:27:55', 'view_activity.php?submission_id=1922', 'read'),
(978, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 29. Status: Graded.', '2025-03-14 05:28:00', 'view_activity.php?submission_id=1923', 'read'),
(979, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 32. Status: Graded.', '2025-03-14 05:28:06', 'view_activity.php?submission_id=1924', 'read'),
(980, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 32. Status: Graded.', '2025-03-14 05:28:06', 'view_activity.php?submission_id=1924', 'read'),
(981, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 50. Status: Graded.', '2025-03-14 05:28:11', 'view_activity.php?submission_id=1925', 'read'),
(982, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 41. Status: Graded.', '2025-03-14 05:28:17', 'view_activity.php?submission_id=1926', 'read'),
(983, 202102097, 'enrollment', 'You have been enrolled in the class \'SAM\' (Class: BSIT-4B) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'SAM\', instructed by John Doe A. Padilla. Class ID: 154.', '2025-03-14 05:42:09', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(984, 202102097, 'enrollment', 'You have been enrolled in the class \'SAM\' (Class: BSIT-4B) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'SAM\', instructed by John Doe A. Padilla. Class ID: 153.', '2025-03-14 05:42:23', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(985, 202103084, '', 'New Assessment Added: 1 at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:42:44', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(986, 202102097, '', 'New Assessment Added: 1 at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:42:44', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(987, 202103084, '', 'New Assessment Added: 2 at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:42:58', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(988, 202102097, '', 'New Assessment Added: 2 at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:42:58', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(989, 202103084, '', 'New Assessment Added: a at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:43:15', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(990, 202102097, '', 'New Assessment Added: a at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:43:15', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(991, 202103084, '', 'New Assessment Added: d at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:43:25', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(992, 202102097, '', 'New Assessment Added: d at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:43:25', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(993, 202103084, '', 'New Assessment Added: add at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:43:38', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(994, 202102097, '', 'New Assessment Added: add at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:43:38', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(995, 202103084, '', 'New Assessment Added: aqwe at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:43:53', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(996, 202102097, '', 'New Assessment Added: aqwe at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:43:53', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(997, 202103084, '', 'New Assessment Added: midterm at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:44:20', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(998, 202102097, '', 'New Assessment Added: midterm at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:44:20', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(999, 202103084, '', 'New Assessment Added: final at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:44:32', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1000, 202102097, '', 'New Assessment Added: final at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:44:32', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1001, 202103084, '', 'New Assessment Added: s at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:44:43', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1002, 202102097, '', 'New Assessment Added: s at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:44:43', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1003, 202103084, '', 'New Assessment Added: c at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:44:56', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1004, 202102097, '', 'New Assessment Added: c at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:44:56', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1005, 202103084, '', 'New Assessment Added: aa1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:45:08', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1006, 202102097, '', 'New Assessment Added: aa1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:45:08', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1007, 202103084, '', 'New Assessment Added: aa2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:45:23', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1008, 202102097, '', 'New Assessment Added: aa2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 05:45:23', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1009, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 80. Status: Graded.', '2025-03-14 05:47:24', 'view_activity.php?submission_id=1939', 'read'),
(1010, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 79. Status: Graded.', '2025-03-14 05:47:31', 'view_activity.php?submission_id=1940', 'read'),
(1011, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 59. Status: Graded.', '2025-03-14 05:47:37', 'view_activity.php?submission_id=1941', 'read'),
(1012, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 31. Status: Graded.', '2025-03-14 05:47:43', 'view_activity.php?submission_id=1943', 'read'),
(1013, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 28. Status: Graded.', '2025-03-14 05:47:49', 'view_activity.php?submission_id=1944', 'read'),
(1014, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-14 05:47:53', 'view_activity.php?submission_id=1945', 'read'),
(1015, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-14 05:48:00', 'view_activity.php?submission_id=1946', 'read'),
(1016, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 21. Status: Graded.', '2025-03-14 05:48:04', 'view_activity.php?submission_id=1947', 'read'),
(1017, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-14 05:48:09', 'view_activity.php?submission_id=1948', 'read'),
(1018, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 41. Status: Graded.', '2025-03-14 05:48:14', 'view_activity.php?submission_id=1949', 'read'),
(1019, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 21. Status: Graded.', '2025-03-14 05:48:19', 'view_activity.php?submission_id=1950', 'read'),
(1020, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 65. Status: Graded.', '2025-03-14 05:49:20', 'view_activity.php?submission_id=1927', 'read'),
(1021, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 61. Status: Graded.', '2025-03-14 05:49:24', 'view_activity.php?submission_id=1928', 'read'),
(1022, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 84. Status: Graded.', '2025-03-14 05:49:31', 'view_activity.php?submission_id=1929', 'read'),
(1023, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 71. Status: Graded.', '2025-03-14 05:49:36', 'view_activity.php?submission_id=1930', 'read'),
(1024, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 34. Status: Graded.', '2025-03-14 05:49:41', 'view_activity.php?submission_id=1931', 'read'),
(1025, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 28. Status: Graded.', '2025-03-14 05:49:46', 'view_activity.php?submission_id=1932', 'read'),
(1026, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 32. Status: Graded.', '2025-03-14 05:49:54', 'view_activity.php?submission_id=1933', 'read'),
(1027, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 32. Status: Graded.', '2025-03-14 05:49:55', 'view_activity.php?submission_id=1933', 'read'),
(1028, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 05:50:01', 'view_activity.php?submission_id=1934', 'read'),
(1029, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-14 05:50:06', 'view_activity.php?submission_id=1935', 'read'),
(1030, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 21. Status: Graded.', '2025-03-14 05:50:11', 'view_activity.php?submission_id=1936', 'read'),
(1031, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 05:50:19', 'view_activity.php?submission_id=1937', 'read'),
(1032, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-14 05:50:24', 'view_activity.php?submission_id=1938', 'read'),
(1033, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 60. Status: Graded.', '2025-03-14 05:53:22', 'view_activity.php?submission_id=1942', 'read'),
(1034, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-14 06:07:18', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=156', 'read'),
(1035, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-14 06:07:18', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=156', 'read'),
(1036, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 06:43:23', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'read'),
(1037, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 06:45:18', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'read'),
(1038, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 06:46:49', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'read'),
(1039, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:06', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1040, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:06', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1041, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:06', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1042, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:06', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1043, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:06', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1044, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:06', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read');
INSERT INTO `student_notifications` (`id`, `user_id`, `type`, `title`, `description`, `date`, `link`, `status`) VALUES
(1045, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:06', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1046, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:06', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1047, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:06', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1048, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:46', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1049, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:46', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1050, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:46', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1051, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:46', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1052, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:46', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1053, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:46', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1054, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:46', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1055, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:46', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1056, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \"1st Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-14 06:52:46', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1057, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-14 06:56:14', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1058, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-14 06:56:14', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1059, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-14 06:56:14', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1060, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-14 06:56:14', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1061, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-14 06:56:14', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1062, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-14 06:56:14', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1063, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-14 06:56:14', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1064, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-14 06:56:14', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1065, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-14 06:56:14', '/ccs-sms.com/capstone/students/student_dashboard.php', 'read'),
(1066, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-14 07:44:35', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1067, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-14 07:44:35', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1068, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE!', 'There is an added attendance for subject: ATTENDANCE Please monitor it regularly!', '2025-03-14 07:45:30', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'read'),
(1069, 202103084, '', 'New Assessment Added: Midterm Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:30:17', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1070, 202102097, '', 'New Assessment Added: Midterm Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:30:17', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1071, 202103084, '', 'New Assessment Added: Final Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:30:50', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1072, 202102097, '', 'New Assessment Added: Final Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:30:50', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1073, 202103084, '', 'New Assessment Added: Quiz1 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:31:07', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1074, 202102097, '', 'New Assessment Added: Quiz1 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:31:07', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1075, 202103084, '', 'New Assessment Added: Quiz2 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:31:27', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1076, 202102097, '', 'New Assessment Added: Quiz2 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:31:27', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1077, 202103084, '', 'New Assessment Added: AA1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:31:42', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1078, 202102097, '', 'New Assessment Added: AA1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:31:42', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1079, 202103084, '', 'New Assessment Added: AA2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:32:03', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1080, 202102097, '', 'New Assessment Added: AA2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:32:03', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1081, 202103084, '', 'New Assessment Added: Midterm Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:56PM.', '2025-03-14 12:32:41', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1082, 202102097, '', 'New Assessment Added: Midterm Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:56PM.', '2025-03-14 12:32:41', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1083, 202103084, '', 'New Assessment Added: Final Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:33:10', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1084, 202102097, '', 'New Assessment Added: Final Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:33:10', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1085, 202103084, '', 'New Assessment Added: Exercise1 at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:33:45', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1086, 202102097, '', 'New Assessment Added: Exercise1 at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:33:45', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1087, 202103084, '', 'New Assessment Added: Exercise at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:33:56', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1088, 202102097, '', 'New Assessment Added: Exercise at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:33:56', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1089, 202103084, '', 'New Assessment Added: AA1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:34:13', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1090, 202102097, '', 'New Assessment Added: AA1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:34:13', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1091, 202103084, '', 'New Assessment Added: AA2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:35:01', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1092, 202102097, '', 'New Assessment Added: AA2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-14 12:35:01', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1093, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 93. Status: Graded.', '2025-03-14 12:37:36', 'view_activity.php?submission_id=1963', 'read'),
(1094, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 65. Status: Graded.', '2025-03-14 12:37:44', 'view_activity.php?submission_id=1964', 'read'),
(1095, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 89. Status: Graded.', '2025-03-14 12:37:55', 'view_activity.php?submission_id=1965', 'read'),
(1096, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 56. Status: Graded.', '2025-03-14 12:38:04', 'view_activity.php?submission_id=1966', 'read'),
(1097, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 21. Status: Graded.', '2025-03-14 12:38:14', 'view_activity.php?submission_id=1967', 'read'),
(1098, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 31. Status: Graded.', '2025-03-14 12:38:19', 'view_activity.php?submission_id=1968', 'read'),
(1099, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 29. Status: Graded.', '2025-03-14 12:38:27', 'view_activity.php?submission_id=1969', 'read'),
(1100, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 29. Status: Graded.', '2025-03-14 12:38:36', 'view_activity.php?submission_id=1970', 'read'),
(1101, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 28. Status: Graded.', '2025-03-14 12:38:45', 'view_activity.php?submission_id=1971', 'read'),
(1102, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 12:38:51', 'view_activity.php?submission_id=1972', 'read'),
(1103, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-14 12:38:58', 'view_activity.php?submission_id=1973', 'read'),
(1104, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 28. Status: Graded.', '2025-03-14 12:39:04', 'view_activity.php?submission_id=1974', 'read'),
(1105, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-14 12:53:14', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'read'),
(1106, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-14 12:53:14', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'read'),
(1107, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-14 12:53:33', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=153', 'read'),
(1109, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 98. Status: Graded.', '2025-03-14 12:59:33', 'view_activity.php?submission_id=1951', 'read'),
(1110, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 50. Status: Graded.', '2025-03-14 12:59:38', 'view_activity.php?submission_id=1952', 'read'),
(1111, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 85. Status: Graded.', '2025-03-14 12:59:45', 'view_activity.php?submission_id=1953', 'read'),
(1112, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 50. Status: Graded.', '2025-03-14 12:59:50', 'view_activity.php?submission_id=1954', 'read'),
(1113, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 40. Status: Graded.', '2025-03-14 12:59:55', 'view_activity.php?submission_id=1955', 'read'),
(1114, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-14 13:00:01', 'view_activity.php?submission_id=1956', 'read'),
(1115, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-14 13:00:06', 'view_activity.php?submission_id=1957', 'read'),
(1116, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-14 13:00:10', 'view_activity.php?submission_id=1958', 'read'),
(1117, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 19. Status: Graded.', '2025-03-14 13:00:16', 'view_activity.php?submission_id=1959', 'read'),
(1118, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 10. Status: Graded.', '2025-03-14 13:00:20', 'view_activity.php?submission_id=1960', 'read'),
(1119, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-14 13:00:25', 'view_activity.php?submission_id=1961', 'read'),
(1120, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 19. Status: Graded.', '2025-03-14 13:00:29', 'view_activity.php?submission_id=1962', 'read'),
(1121, 202103084, '', 'New Learning Material Added: asdasd at subject: SAM', 'A new learning material titled \'asdasd\' has been added to your class. Subject: \'SAM\'.', '2025-03-15 00:35:22', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1122, 202102097, '', 'New Learning Material Added: asdasd at subject: SAM', 'A new learning material titled \'asdasd\' has been added to your class. Subject: \'SAM\'.', '2025-03-15 00:35:22', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1123, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-15 01:03:35', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=153', 'read'),
(1124, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-15 01:03:35', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=153', 'read'),
(1125, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-15 01:45:41', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'read'),
(1126, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-15 01:45:41', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'read'),
(1127, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-15 01:45:43', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'read'),
(1128, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-15 01:45:43', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'read'),
(1129, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 11:20:48', '/capstone/students/student_dashboard.php', 'read'),
(1130, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 11:20:48', '/capstone/students/student_dashboard.php', 'read'),
(1131, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 11:20:48', '/capstone/students/student_dashboard.php', 'read'),
(1132, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 11:20:48', '/capstone/students/student_dashboard.php', 'read'),
(1133, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 11:20:48', '/capstone/students/student_dashboard.php', 'read'),
(1134, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 11:20:48', '/capstone/students/student_dashboard.php', 'read'),
(1135, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 11:20:48', '/capstone/students/student_dashboard.php', 'read'),
(1136, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 11:20:48', '/capstone/students/student_dashboard.php', 'read'),
(1137, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 11:20:48', '/capstone/students/student_dashboard.php', 'read'),
(1138, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:06', '/capstone/students/student_dashboard.php', 'read'),
(1139, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:06', '/capstone/students/student_dashboard.php', 'read'),
(1140, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:06', '/capstone/students/student_dashboard.php', 'read'),
(1141, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:06', '/capstone/students/student_dashboard.php', 'read'),
(1142, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:06', '/capstone/students/student_dashboard.php', 'read'),
(1143, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:06', '/capstone/students/student_dashboard.php', 'read'),
(1144, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:06', '/capstone/students/student_dashboard.php', 'read'),
(1145, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:06', '/capstone/students/student_dashboard.php', 'read'),
(1146, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:06', '/capstone/students/student_dashboard.php', 'read'),
(1147, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:18', '/capstone/students/student_dashboard.php', 'read'),
(1148, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:18', '/capstone/students/student_dashboard.php', 'read'),
(1149, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:18', '/capstone/students/student_dashboard.php', 'read'),
(1150, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:18', '/capstone/students/student_dashboard.php', 'read'),
(1151, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:18', '/capstone/students/student_dashboard.php', 'read'),
(1152, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:18', '/capstone/students/student_dashboard.php', 'read'),
(1153, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:18', '/capstone/students/student_dashboard.php', 'read'),
(1154, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:18', '/capstone/students/student_dashboard.php', 'read'),
(1155, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:23:18', '/capstone/students/student_dashboard.php', 'read'),
(1156, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:31:18', '/capstone/students/student_dashboard.php', 'read'),
(1157, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:31:18', '/capstone/students/student_dashboard.php', 'read'),
(1158, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:31:18', '/capstone/students/student_dashboard.php', 'read'),
(1159, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:31:18', '/capstone/students/student_dashboard.php', 'read'),
(1160, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:31:18', '/capstone/students/student_dashboard.php', 'read'),
(1161, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:31:18', '/capstone/students/student_dashboard.php', 'read'),
(1162, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:31:18', '/capstone/students/student_dashboard.php', 'read'),
(1163, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:31:18', '/capstone/students/student_dashboard.php', 'read'),
(1164, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Please submit/complete any required class requirements on time!', '2025-03-15 11:31:18', '/capstone/students/student_dashboard.php', 'read'),
(1165, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:10', '/capstone/students/student_dashboard.php', 'read'),
(1166, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:10', '/capstone/students/student_dashboard.php', 'read'),
(1167, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:10', '/capstone/students/student_dashboard.php', 'read'),
(1168, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:10', '/capstone/students/student_dashboard.php', 'read'),
(1169, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:10', '/capstone/students/student_dashboard.php', 'read'),
(1170, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:10', '/capstone/students/student_dashboard.php', 'read'),
(1171, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:10', '/capstone/students/student_dashboard.php', 'read'),
(1172, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:10', '/capstone/students/student_dashboard.php', 'read'),
(1173, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:10', '/capstone/students/student_dashboard.php', 'read'),
(1174, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:12', '/capstone/students/student_dashboard.php', 'read'),
(1175, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:12', '/capstone/students/student_dashboard.php', 'read'),
(1176, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:12', '/capstone/students/student_dashboard.php', 'read'),
(1177, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:12', '/capstone/students/student_dashboard.php', 'read'),
(1178, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:12', '/capstone/students/student_dashboard.php', 'read'),
(1179, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:12', '/capstone/students/student_dashboard.php', 'read'),
(1180, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:12', '/capstone/students/student_dashboard.php', 'read'),
(1181, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:12', '/capstone/students/student_dashboard.php', 'read'),
(1182, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:12', '/capstone/students/student_dashboard.php', 'read'),
(1183, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:50', '/capstone/students/student_dashboard.php', 'read'),
(1184, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:50', '/capstone/students/student_dashboard.php', 'read'),
(1185, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:50', '/capstone/students/student_dashboard.php', 'read'),
(1186, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:50', '/capstone/students/student_dashboard.php', 'read'),
(1187, 202103084, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:50', '/capstone/students/student_dashboard.php', 'read'),
(1188, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:50', '/capstone/students/student_dashboard.php', 'read'),
(1189, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:50', '/capstone/students/student_dashboard.php', 'read'),
(1190, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:50', '/capstone/students/student_dashboard.php', 'read'),
(1191, 202102097, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \"2nd Semester\" is ending soon. Submit your requirements on time!', '2025-03-15 03:43:50', '/capstone/students/student_dashboard.php', 'read'),
(1192, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 03:54:25', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1193, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 03:54:25', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1194, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:08:38', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1195, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:08:38', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1196, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:10:13', '/students/student_dashboard.php', 'read'),
(1197, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:10:13', '/students/student_dashboard.php', 'read'),
(1198, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:10:13', '/students/student_dashboard.php', 'read'),
(1199, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:10:13', '/students/student_dashboard.php', 'read'),
(1200, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:10:13', '/students/student_dashboard.php', 'read'),
(1201, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:10:13', '/students/student_dashboard.php', 'read'),
(1202, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:10:13', '/students/student_dashboard.php', 'read'),
(1203, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:10:13', '/students/student_dashboard.php', 'read'),
(1204, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:10:13', '/students/student_dashboard.php', 'read'),
(1205, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:17:28', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1206, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:17:28', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1207, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:19:27', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1208, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:19:27', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1209, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:30:13', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1210, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:30:13', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1211, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:42:03', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1212, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:42:03', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1213, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:43:15', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1214, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:43:15', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1215, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:44:29', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1216, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:44:29', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1217, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:48:19', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1218, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:48:19', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1219, 202103084, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:49:26', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1220, 202102097, 'class', 'Class Attendance Added for Subject: OOP!', 'There is an added attendance for subject: OOP Please monitor it regularly!', '2025-03-15 04:49:26', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=155', 'read'),
(1221, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:51:10', '/students/student_dashboard.php', 'read'),
(1222, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:51:10', '/students/student_dashboard.php', 'read'),
(1223, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:51:10', '/students/student_dashboard.php', 'read'),
(1224, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:51:10', '/students/student_dashboard.php', 'read'),
(1225, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:51:10', '/students/student_dashboard.php', 'read'),
(1226, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:51:10', '/students/student_dashboard.php', 'read'),
(1227, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:51:10', '/students/student_dashboard.php', 'read'),
(1228, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:51:10', '/students/student_dashboard.php', 'read'),
(1229, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 12:51:10', '/students/student_dashboard.php', 'read'),
(1230, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending soon. Submit all required work before March 17, 2025!', '2025-03-15 04:56:38', '/students/student_dashboard.php', 'read'),
(1231, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending soon. Submit all required work before March 17, 2025!', '2025-03-15 04:56:38', '/students/student_dashboard.php', 'read'),
(1232, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending soon. Submit all required work before March 17, 2025!', '2025-03-15 04:56:40', '/students/student_dashboard.php', 'read'),
(1233, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending soon. Submit all required work before March 17, 2025!', '2025-03-15 04:56:40', '/students/student_dashboard.php', 'read'),
(1234, 202103084, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending soon. Submit all required work before March 17, 2025!', '2025-03-15 04:56:57', '/students/student_dashboard.php', 'read'),
(1235, 202102097, 'semester', 'Semester Ending Soon: 1st Semester', 'The semester \'1st Semester\' is ending soon. Submit all required work before March 17, 2025!', '2025-03-15 04:56:57', '/students/student_dashboard.php', 'read'),
(1236, 202103084, '', 'New Learning Material Added: asd at subject: OOP', 'A new learning material titled \'asd\' has been added to your class. Subject: \'OOP\'.', '2025-03-15 05:10:47', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(1237, 202102097, '', 'New Learning Material Added: asd at subject: OOP', 'A new learning material titled \'asd\' has been added to your class. Subject: \'OOP\'.', '2025-03-15 05:10:47', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(1238, 202103084, '', 'New Learning Material Added: asdasd at subject: OOP', 'A new learning material titled \'asdasd\' has been added to your class. Subject: \'OOP\'.', '2025-03-15 05:12:03', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(1239, 202102097, '', 'New Learning Material Added: asdasd at subject: OOP', 'A new learning material titled \'asdasd\' has been added to your class. Subject: \'OOP\'.', '2025-03-15 05:12:03', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=155', 'read'),
(1240, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE CHECK!', 'There is an added attendance for subject: ATTENDANCE CHECK Please monitor it regularly!', '2025-03-15 06:10:48', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'read'),
(1241, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE CHECK!', 'There is an added attendance for subject: ATTENDANCE CHECK Please monitor it regularly!', '2025-03-15 06:11:39', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'read');
INSERT INTO `student_notifications` (`id`, `user_id`, `type`, `title`, `description`, `date`, `link`, `status`) VALUES
(1242, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 58. Status: Graded.', '2025-03-15 06:13:50', 'view_activity.php?submission_id=1916', 'read'),
(1243, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-15 06:13:56', 'view_activity.php?submission_id=1916', 'read'),
(1244, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-15 06:14:05', 'view_activity.php?submission_id=1920', 'read'),
(1245, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-15 06:14:48', 'view_activity.php?submission_id=1915', 'read'),
(1246, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 40. Status: Graded.', '2025-03-15 06:14:56', 'view_activity.php?submission_id=1917', 'read'),
(1247, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 82. Status: Graded.', '2025-03-15 06:18:36', 'view_activity.php?submission_id=1916', 'read'),
(1248, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 83. Status: Graded.', '2025-03-15 06:18:46', 'view_activity.php?submission_id=1918', 'read'),
(1249, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 46. Status: Graded.', '2025-03-15 06:18:54', 'view_activity.php?submission_id=1920', 'read'),
(1250, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-15 06:19:34', 'view_activity.php?submission_id=1919', 'read'),
(1251, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-15 06:19:42', 'view_activity.php?submission_id=1921', 'read'),
(1252, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-15 06:19:49', 'view_activity.php?submission_id=1923', 'read'),
(1253, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-15 06:20:04', 'view_activity.php?submission_id=1925', 'read'),
(1254, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 71. Status: Graded.', '2025-03-15 06:20:50', 'view_activity.php?submission_id=1915', 'read'),
(1255, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 120. Status: Graded.', '2025-03-15 06:21:02', 'view_activity.php?submission_id=1917', 'read'),
(1256, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 55. Status: Graded.', '2025-03-15 06:21:09', 'view_activity.php?submission_id=1919', 'read'),
(1257, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 41. Status: Graded.', '2025-03-15 06:21:22', 'view_activity.php?submission_id=1921', 'read'),
(1258, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 45. Status: Graded.', '2025-03-15 06:21:28', 'view_activity.php?submission_id=1923', 'read'),
(1259, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 56. Status: Graded.', '2025-03-15 06:21:39', 'view_activity.php?submission_id=1925', 'read'),
(1260, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 60. Status: Graded.', '2025-03-15 06:22:14', 'view_activity.php?submission_id=1915', 'read'),
(1261, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 75. Status: Graded.', '2025-03-15 06:22:22', 'view_activity.php?submission_id=1917', 'read'),
(1262, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 16. Status: Graded.', '2025-03-15 06:22:29', 'view_activity.php?submission_id=1919', 'read'),
(1263, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 19. Status: Graded.', '2025-03-15 06:22:37', 'view_activity.php?submission_id=1921', 'read'),
(1264, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 16. Status: Graded.', '2025-03-15 06:22:45', 'view_activity.php?submission_id=1923', 'read'),
(1265, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-15 06:22:52', 'view_activity.php?submission_id=1925', 'read'),
(1266, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 111. Status: Graded.', '2025-03-15 06:27:52', 'view_activity.php?submission_id=1917', 'read'),
(1267, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 45. Status: Graded.', '2025-03-15 06:28:11', 'view_activity.php?submission_id=1919', 'read'),
(1268, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 80. Status: Graded.', '2025-03-15 06:28:22', 'view_activity.php?submission_id=1925', 'read'),
(1269, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 60. Status: Graded.', '2025-03-15 06:28:28', 'view_activity.php?submission_id=1923', 'read'),
(1270, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 1. Status: Graded.', '2025-03-15 06:28:39', 'view_activity.php?submission_id=1921', 'read'),
(1271, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-15 06:28:52', 'view_activity.php?submission_id=1921', 'read'),
(1272, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 55. Status: Graded.', '2025-03-15 06:29:11', 'view_activity.php?submission_id=1919', 'read'),
(1273, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 89. Status: Graded.', '2025-03-15 06:29:23', 'view_activity.php?submission_id=1917', 'read'),
(1274, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 70. Status: Graded.', '2025-03-15 06:29:44', 'view_activity.php?submission_id=1917', 'read'),
(1275, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 120. Status: Graded.', '2025-03-15 06:29:55', 'view_activity.php?submission_id=1915', 'read'),
(1276, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 50. Status: Graded.', '2025-03-15 06:30:07', 'view_activity.php?submission_id=1915', 'read'),
(1277, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 100. Status: Graded.', '2025-03-15 06:31:26', 'view_activity.php?submission_id=1915', 'read'),
(1278, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 120. Status: Graded.', '2025-03-15 06:31:35', 'view_activity.php?submission_id=1917', 'read'),
(1279, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE CHECK!', 'There is an added attendance for subject: ATTENDANCE CHECK Please monitor it regularly!', '2025-03-15 06:51:28', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'read'),
(1280, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 15:26:35', '/students/student_dashboard.php', 'read'),
(1281, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 15:26:35', '/students/student_dashboard.php', 'read'),
(1282, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 15:26:35', '/students/student_dashboard.php', 'read'),
(1283, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 15:26:35', '/students/student_dashboard.php', 'read'),
(1284, 202103084, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 15:26:35', '/students/student_dashboard.php', 'read'),
(1285, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 15:26:35', '/students/student_dashboard.php', 'read'),
(1286, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 15:26:35', '/students/student_dashboard.php', 'read'),
(1287, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 15:26:35', '/students/student_dashboard.php', 'read'),
(1288, 202102097, 'semester', 'Semester Has Ended: 1st Semester', 'The semester \"1st Semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-15 15:26:35', '/students/student_dashboard.php', 'read'),
(1289, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE CHECK!', 'There is an added attendance for subject: ATTENDANCE CHECK Please monitor it regularly!', '2025-03-15 07:33:18', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'read'),
(1290, 202103084, '', 'New Assessment Added: 1 at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:37:38', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1291, 202102097, '', 'New Assessment Added: 1 at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:37:38', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1292, 202103084, '', 'New Assessment Added: Final at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:38:16', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1293, 202102097, '', 'New Assessment Added: Final at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:38:16', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1294, 202103084, '', 'New Assessment Added: LE at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:38:30', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1295, 202102097, '', 'New Assessment Added: LE at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:38:30', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1296, 202103084, '', 'New Assessment Added: LE2 at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:39:00', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1297, 202102097, '', 'New Assessment Added: LE2 at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercises\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:39:00', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1298, 202103084, '', 'New Assessment Added: AA1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:39:20', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1299, 202102097, '', 'New Assessment Added: AA1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:39:20', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1300, 202103084, '', 'New Assessment Added: AA2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:39:34', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1301, 202102097, '', 'New Assessment Added: AA2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignments/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:39:34', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1302, 202103084, '', 'New Assessment Added: Midterm at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:40:20', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1303, 202102097, '', 'New Assessment Added: Midterm at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:40:20', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1304, 202103084, '', 'New Assessment Added: Finals at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:40:33', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1305, 202102097, '', 'New Assessment Added: Finals at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exam\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:40:33', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1306, 202103084, '', 'New Assessment Added: q1 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:40:47', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1307, 202102097, '', 'New Assessment Added: q1 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:40:47', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1308, 202103084, '', 'New Assessment Added: q2 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:41:04', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1309, 202102097, '', 'New Assessment Added: q2 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:41:04', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1310, 202103084, '', 'New Assessment Added: aaa1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:41:16', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1311, 202102097, '', 'New Assessment Added: aaa1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:41:16', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1312, 202103084, '', 'New Assessment Added: aaa2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:41:27', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1313, 202102097, '', 'New Assessment Added: aaa2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-15 07:41:27', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(1314, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 35. Status: Graded.', '2025-03-15 07:49:29', 'view_activity.php?submission_id=1975', 'read'),
(1315, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 32. Status: Graded.', '2025-03-15 07:49:34', 'view_activity.php?submission_id=1976', 'read'),
(1316, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-15 07:49:39', 'view_activity.php?submission_id=1977', 'read'),
(1317, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-15 07:49:45', 'view_activity.php?submission_id=1978', 'read'),
(1318, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 75. Status: Graded.', '2025-03-15 07:49:52', 'view_activity.php?submission_id=1979', 'read'),
(1319, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 69. Status: Graded.', '2025-03-15 07:50:03', 'view_activity.php?submission_id=1980', 'read'),
(1320, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 35. Status: Graded.', '2025-03-15 07:50:10', 'view_activity.php?submission_id=1981', 'read'),
(1321, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 32. Status: Graded.', '2025-03-15 07:50:18', 'view_activity.php?submission_id=1982', 'read'),
(1322, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 60. Status: Graded.', '2025-03-15 07:50:24', 'view_activity.php?submission_id=1983', 'read'),
(1323, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 74. Status: Graded.', '2025-03-15 07:50:30', 'view_activity.php?submission_id=1984', 'read'),
(1324, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 52. Status: Graded.', '2025-03-15 07:50:37', 'view_activity.php?submission_id=1985', 'read'),
(1325, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 46. Status: Graded.', '2025-03-15 07:50:44', 'view_activity.php?submission_id=1986', 'read'),
(1326, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 100. Status: Graded.', '2025-03-15 07:51:29', 'view_activity.php?submission_id=1988', 'read'),
(1327, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 111. Status: Graded.', '2025-03-15 07:51:49', 'view_activity.php?submission_id=1989', 'read'),
(1328, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 111. Status: Graded.', '2025-03-15 07:51:49', 'view_activity.php?submission_id=1989', 'read'),
(1329, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 95. Status: Graded.', '2025-03-15 07:51:57', 'view_activity.php?submission_id=1990', 'read'),
(1330, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-15 07:52:05', 'view_activity.php?submission_id=1991', 'read'),
(1331, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-15 07:52:11', 'view_activity.php?submission_id=1992', 'read'),
(1332, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-15 07:52:15', 'view_activity.php?submission_id=1993', 'read'),
(1333, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 19. Status: Graded.', '2025-03-15 07:52:20', 'view_activity.php?submission_id=1994', 'read'),
(1334, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-15 07:52:27', 'view_activity.php?submission_id=1995', 'read'),
(1335, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-15 07:52:32', 'view_activity.php?submission_id=1996', 'read'),
(1336, 202103084, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 50. Status: Graded.', '2025-03-15 07:52:39', 'view_activity.php?submission_id=1997', 'read'),
(1337, 202102097, '', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 50. Status: Graded.', '2025-03-15 07:52:44', 'view_activity.php?submission_id=1998', 'read'),
(1338, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-16 09:56:52', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'read'),
(1339, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-16 09:56:52', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'read'),
(1340, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-16 09:58:41', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=153', 'read'),
(1341, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-16 09:58:41', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=153', 'read'),
(1342, 202100768, 'enrollment', 'You have been enrolled in the class \'SAM\' (Class: BSIT-4B) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'SAM\', instructed by John Doe A. Padilla. Class ID: 153.', '2025-03-16 11:57:27', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'unread'),
(1343, 202100768, 'enrollment', 'You have been enrolled in the class \'ATTENDANCE\' (Class: BSIT-4A) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'ATTENDANCE\', instructed by John Doe A. Padilla. Class ID: 157.', '2025-03-16 11:57:58', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=157', 'unread'),
(1344, 202103084, 'enrollment', 'You have been enrolled in the class \'ATTENDANCE\' (Class: BSIT-4A) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'ATTENDANCE\', instructed by John Doe A. Padilla. Class ID: 157.', '2025-03-16 11:58:49', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=157', 'unread'),
(1345, 202100768, 'class', 'Class Attendance Added for Subject: ATTENDANCE CHECK!', 'There is an added attendance for subject: ATTENDANCE CHECK Please monitor it regularly!', '2025-03-16 12:02:33', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'unread'),
(1346, 202100768, 'enrollment', 'You have been enrolled in the class \'ATTENDANCE\' (Class: BSIT-4A) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'ATTENDANCE\', instructed by John Doe A. Padilla. Class ID: 157.', '2025-03-16 12:04:16', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=157', 'unread'),
(1347, 202100768, 'class', 'Class Attendance Added for Subject: ATTENDANCE CHECK!', 'There is an added attendance for subject: ATTENDANCE CHECK Please monitor it regularly!', '2025-03-16 12:05:05', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'unread'),
(1348, 202103084, 'enrollment', 'You have been enrolled in the class \'SAM\' (Class: BSIT-4B) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'SAM\', instructed by John Doe A. Padilla. Class ID: 154.', '2025-03-16 12:17:07', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'unread'),
(1349, 202102097, 'enrollment', 'You have been enrolled in the class \'SAM\' (Class: BSIT-4B) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'SAM\', instructed by John Doe A. Padilla. Class ID: 154.', '2025-03-16 12:17:16', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(1350, 202103084, 'enrollment', 'You have been enrolled in the class \'ATTENDANCE\' (Class: BSIT-4A) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'ATTENDANCE\', instructed by John Doe A. Padilla. Class ID: 157.', '2025-03-16 12:26:10', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=157', 'unread'),
(1351, 202102097, 'enrollment', 'You have been enrolled in the class \'ATTENDANCE\' (Class: BSIT-4A) by John Doe A. Padilla.', 'Congratulations! You have been successfully enrolled in the subject \'ATTENDANCE\', instructed by John Doe A. Padilla. Class ID: 157.', '2025-03-16 12:26:29', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=157', 'read'),
(1352, 202100768, 'class', 'Class Attendance Added for Subject: ATTENDANCE CHECK!', 'There is an added attendance for subject: ATTENDANCE CHECK Please monitor it regularly!', '2025-03-16 12:28:23', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'unread'),
(1353, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE CHECK!', 'There is an added attendance for subject: ATTENDANCE CHECK Please monitor it regularly!', '2025-03-16 12:28:23', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'unread'),
(1354, 202100768, 'class', 'Class Attendance Added for Subject: ATTENDANCE CHECK!', 'There is an added attendance for subject: ATTENDANCE CHECK Please monitor it regularly!', '2025-03-16 12:31:57', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'unread'),
(1355, 202103084, 'class', 'Class Attendance Added for Subject: ATTENDANCE CHECK!', 'There is an added attendance for subject: ATTENDANCE CHECK Please monitor it regularly!', '2025-03-16 12:31:57', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=157', 'unread'),
(1356, 202100768, 'enrollment', 'You have been enrolled in the class \'Ggggg\' (Class: BSCS-4B) by Paps Paps Paps.', 'Congratulations! You have been successfully enrolled in the subject \'Ggggg\', instructed by Paps Paps Paps. Class ID: 158.', '2025-03-16 13:06:14', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=158', 'unread'),
(1357, 202103084, 'enrollment', 'You have been enrolled in the class \'Ggggg\' (Class: BSCS-4B) by Paps Paps Paps.', 'Congratulations! You have been successfully enrolled in the subject \'Ggggg\', instructed by Paps Paps Paps. Class ID: 158.', '2025-03-16 13:06:26', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=158', 'unread'),
(1358, 202100768, 'enrollment', 'You have been enrolled in the class \'Ggggg\' (Class: BSCS-4B) by Paps Paps Paps.', 'Congratulations! You have been successfully enrolled in the subject \'Ggggg\', instructed by Paps Paps Paps. Class ID: 158.', '2025-03-16 13:06:37', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=158', 'unread'),
(1359, 202100768, 'class', 'Class Attendance Added for Subject: Ggggg!', 'There is an added attendance for subject: Ggggg Please monitor it regularly!', '2025-03-16 13:08:30', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=158', 'unread'),
(1360, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-16 13:31:56', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'unread'),
(1361, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-16 13:31:56', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'read'),
(1362, 202103084, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-16 13:32:55', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=153', 'unread'),
(1363, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-16 13:32:55', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=153', 'read'),
(1364, 202100768, 'class', 'Class Attendance Added for Subject: Ggggg!', 'There is an added attendance for subject: Ggggg Please monitor it regularly!', '2025-03-16 13:41:07', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=158', 'unread'),
(1365, 202102097, 'enrollment', 'You have been enrolled in the class \'Ggggg\' (Class: BSCS-4B) by Paps Paps Paps.', 'Congratulations! You have been successfully enrolled in the subject \'Ggggg\', instructed by Paps Paps Paps. Class ID: 158.', '2025-03-16 13:42:36', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=158', 'unread'),
(1366, 202100768, 'class', 'Class Attendance Added for Subject: Ggggg!', 'There is an added attendance for subject: Ggggg Please monitor it regularly!', '2025-03-16 13:44:34', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=158', 'unread'),
(1367, 202102097, 'class', 'Class Attendance Added for Subject: Ggggg!', 'There is an added attendance for subject: Ggggg Please monitor it regularly!', '2025-03-16 13:44:34', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=158', 'unread'),
(1368, 202100768, 'class', 'Class Attendance Added for Subject: Ggggg!', 'There is an added attendance for subject: Ggggg Please monitor it regularly!', '2025-03-16 13:59:39', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=158', 'unread'),
(1369, 202102097, 'class', 'Class Attendance Added for Subject: Ggggg!', 'There is an added attendance for subject: Ggggg Please monitor it regularly!', '2025-03-16 13:59:39', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=158', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `student_pictures`
--

CREATE TABLE `student_pictures` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects`
--

CREATE TABLE `subjects` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `type` text NOT NULL,
  `code` text NOT NULL,
  `semester` text NOT NULL,
  `datetime_added` datetime NOT NULL DEFAULT current_timestamp(),
  `is_archived` int(11) NOT NULL DEFAULT 0,
  `course` varchar(100) NOT NULL,
  `year_level` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subjects`
--

INSERT INTO `subjects` (`id`, `name`, `type`, `code`, `semester`, `datetime_added`, `is_archived`, `course`, `year_level`) VALUES
(111, 'SAM', 'Lecture', 'SAM101', '1st Semester', '2025-03-13 20:11:45', 0, 'BSIT', '4B'),
(112, 'SAM', 'Laboratory', 'SAM101', '1st Semester', '2025-03-13 20:12:19', 0, 'BSIT', '4B'),
(113, 'OOP', 'Lecture', 'OOP114', '1st Semester', '2025-03-13 20:44:55', 0, 'BSIT', '4B'),
(114, 'OOP', 'Laboratory', 'OOP114', '1st Semester', '2025-03-13 20:45:20', 0, 'BSIT', '4B'),
(115, 'ATTENDANCE CHECK', 'Laboratory', '1014', '1st Semester', '2025-03-14 00:33:56', 0, 'BSIT', '4A'),
(116, 'Ggggg', 'Lecture', 'Gg101', '1st Semester', '2025-03-16 13:04:14', 0, 'BSCS', '4B');

-- --------------------------------------------------------

--
-- Table structure for table `subjects_meetings`
--

CREATE TABLE `subjects_meetings` (
  `id` int(11) NOT NULL,
  `date` date NOT NULL,
  `subject_id` int(11) NOT NULL,
  `status` text NOT NULL,
  `start_time` text NOT NULL,
  `end_time` text NOT NULL,
  `type` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `subjects_schedules`
--

CREATE TABLE `subjects_schedules` (
  `id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `meeting_days` enum('Monday','Tuesday','Wednesday','Thursday','Friday','Saturday','Sunday') NOT NULL,
  `start_time` varchar(555) NOT NULL,
  `end_time` varchar(555) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `subjects_schedules`
--

INSERT INTO `subjects_schedules` (`id`, `subject_id`, `meeting_days`, `start_time`, `end_time`, `created_at`, `updated_at`) VALUES
(127, 111, 'Thursday', '04:15', '06:00', '2025-03-13 20:11:45', '2025-03-13 20:11:45'),
(128, 111, 'Friday', '04:15', '06:00', '2025-03-13 20:11:45', '2025-03-13 20:11:45'),
(129, 111, 'Saturday', '04:15', '06:00', '2025-03-13 20:11:45', '2025-03-13 20:11:45'),
(130, 112, 'Friday', '10:00', '12:00', '2025-03-13 20:12:19', '2025-03-13 20:12:19'),
(131, 112, 'Saturday', '10:00', '12:00', '2025-03-13 20:12:19', '2025-03-13 20:12:19'),
(132, 113, 'Friday', '13:00', '15:00', '2025-03-13 20:44:55', '2025-03-13 20:44:55'),
(133, 113, 'Saturday', '13:00', '15:00', '2025-03-13 20:44:55', '2025-03-13 20:44:55'),
(134, 114, 'Friday', '15:30', '17:00', '2025-03-13 20:45:20', '2025-03-13 20:45:20'),
(135, 114, 'Saturday', '15:30', '17:00', '2025-03-13 20:45:20', '2025-03-13 20:45:20'),
(138, 115, 'Friday', '02:00', '03:00', '2025-03-15 00:41:25', '2025-03-15 00:41:25'),
(139, 116, 'Monday', '18:30', '19:30', '2025-03-16 13:04:14', '2025-03-16 13:04:14'),
(140, 116, 'Thursday', '18:30', '19:30', '2025-03-16 13:04:14', '2025-03-16 13:04:14');

-- --------------------------------------------------------

--
-- Table structure for table `teacher_notes`
--

CREATE TABLE `teacher_notes` (
  `id` int(11) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `note_title` varchar(255) NOT NULL,
  `note_content` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- --------------------------------------------------------

--
-- Table structure for table `teacher_reminders`
--

CREATE TABLE `teacher_reminders` (
  `id` int(11) NOT NULL,
  `teacher_name` varchar(255) NOT NULL,
  `reminder_content` text NOT NULL,
  `reminder_date` date DEFAULT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `activities`
--
ALTER TABLE `activities`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `activity_attachments`
--
ALTER TABLE `activity_attachments`
  ADD PRIMARY KEY (`id`),
  ADD KEY `activity_id` (`activity_id`);

--
-- Indexes for table `activity_submissions`
--
ALTER TABLE `activity_submissions`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notes`
--
ALTER TABLE `admin_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `admin_reminders`
--
ALTER TABLE `admin_reminders`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `archived_semesters`
--
ALTER TABLE `archived_semesters`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `attendance`
--
ALTER TABLE `attendance`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes`
--
ALTER TABLE `classes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `classes_meetings`
--
ALTER TABLE `classes_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `class_students`
--
ALTER TABLE `class_students`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `student_id` (`student_id`);

--
-- Indexes for table `course_requirements_laboratory`
--
ALTER TABLE `course_requirements_laboratory`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `course_requirements_lecture`
--
ALTER TABLE `course_requirements_lecture`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `current_semester`
--
ALTER TABLE `current_semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `laboratory_rubrics`
--
ALTER TABLE `laboratory_rubrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `learning_resources`
--
ALTER TABLE `learning_resources`
  ADD PRIMARY KEY (`resource_id`);

--
-- Indexes for table `lectures`
--
ALTER TABLE `lectures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lecture_rubrics`
--
ALTER TABLE `lecture_rubrics`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `rubrics`
--
ALTER TABLE `rubrics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `class_id` (`class_id`),
  ADD KEY `rubrics_ibfk_2` (`subject_id`);

--
-- Indexes for table `rubric_requirements`
--
ALTER TABLE `rubric_requirements`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `semester`
--
ALTER TABLE `semester`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `specific_rubrics`
--
ALTER TABLE `specific_rubrics`
  ADD PRIMARY KEY (`id`),
  ADD KEY `rubric_id` (`rubric_id`);

--
-- Indexes for table `staff_accounts`
--
ALTER TABLE `staff_accounts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_advising`
--
ALTER TABLE `staff_advising`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `staff_notifications`
--
ALTER TABLE `staff_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students`
--
ALTER TABLE `students`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `students_enrollments`
--
ALTER TABLE `students_enrollments`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_grades`
--
ALTER TABLE `student_grades`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_info`
--
ALTER TABLE `student_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `student_id` (`student_id`);

--
-- Indexes for table `student_notifications`
--
ALTER TABLE `student_notifications`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `student_pictures`
--
ALTER TABLE `student_pictures`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects`
--
ALTER TABLE `subjects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects_meetings`
--
ALTER TABLE `subjects_meetings`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `subjects_schedules`
--
ALTER TABLE `subjects_schedules`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_subject` (`subject_id`);

--
-- Indexes for table `teacher_notes`
--
ALTER TABLE `teacher_notes`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `teacher_reminders`
--
ALTER TABLE `teacher_reminders`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `activities`
--
ALTER TABLE `activities`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=365;

--
-- AUTO_INCREMENT for table `activity_attachments`
--
ALTER TABLE `activity_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `activity_submissions`
--
ALTER TABLE `activity_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2046;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_notes`
--
ALTER TABLE `admin_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=129;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=222;

--
-- AUTO_INCREMENT for table `admin_reminders`
--
ALTER TABLE `admin_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `archived_semesters`
--
ALTER TABLE `archived_semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=340;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `classes_meetings`
--
ALTER TABLE `classes_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=176;

--
-- AUTO_INCREMENT for table `class_students`
--
ALTER TABLE `class_students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `course_requirements_laboratory`
--
ALTER TABLE `course_requirements_laboratory`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `course_requirements_lecture`
--
ALTER TABLE `course_requirements_lecture`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `current_semester`
--
ALTER TABLE `current_semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=106;

--
-- AUTO_INCREMENT for table `laboratory_rubrics`
--
ALTER TABLE `laboratory_rubrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `learning_resources`
--
ALTER TABLE `learning_resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `lectures`
--
ALTER TABLE `lectures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `lecture_rubrics`
--
ALTER TABLE `lecture_rubrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `messages`
--
ALTER TABLE `messages`
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1741885023226;

--
-- AUTO_INCREMENT for table `rubrics`
--
ALTER TABLE `rubrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=115;

--
-- AUTO_INCREMENT for table `rubric_requirements`
--
ALTER TABLE `rubric_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=74;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=56;

--
-- AUTO_INCREMENT for table `specific_rubrics`
--
ALTER TABLE `specific_rubrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_accounts`
--
ALTER TABLE `staff_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=95;

--
-- AUTO_INCREMENT for table `staff_advising`
--
ALTER TABLE `staff_advising`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT for table `staff_notifications`
--
ALTER TABLE `staff_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=263;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202103085;

--
-- AUTO_INCREMENT for table `students_enrollments`
--
ALTER TABLE `students_enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=207;

--
-- AUTO_INCREMENT for table `student_grades`
--
ALTER TABLE `student_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=576;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `student_notifications`
--
ALTER TABLE `student_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1370;

--
-- AUTO_INCREMENT for table `student_pictures`
--
ALTER TABLE `student_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=117;

--
-- AUTO_INCREMENT for table `subjects_meetings`
--
ALTER TABLE `subjects_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subjects_schedules`
--
ALTER TABLE `subjects_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `teacher_notes`
--
ALTER TABLE `teacher_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `teacher_reminders`
--
ALTER TABLE `teacher_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `activity_attachments`
--
ALTER TABLE `activity_attachments`
  ADD CONSTRAINT `activity_attachments_ibfk_1` FOREIGN KEY (`activity_id`) REFERENCES `activities` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `class_students`
--
ALTER TABLE `class_students`
  ADD CONSTRAINT `class_students_ibfk_1` FOREIGN KEY (`class_id`) REFERENCES `classes` (`id`) ON DELETE CASCADE,
  ADD CONSTRAINT `class_students_ibfk_2` FOREIGN KEY (`student_id`) REFERENCES `students` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `rubrics`
--
ALTER TABLE `rubrics`
  ADD CONSTRAINT `rubrics_ibfk_2` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `specific_rubrics`
--
ALTER TABLE `specific_rubrics`
  ADD CONSTRAINT `specific_rubrics_ibfk_1` FOREIGN KEY (`rubric_id`) REFERENCES `rubrics` (`id`) ON DELETE CASCADE;

--
-- Constraints for table `subjects_schedules`
--
ALTER TABLE `subjects_schedules`
  ADD CONSTRAINT `fk_subject` FOREIGN KEY (`subject_id`) REFERENCES `subjects` (`id`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
