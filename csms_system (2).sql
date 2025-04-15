-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 24, 2025 at 09:36 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

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
(392, 'Lab 1', 'Laboratory Exercise', 'asdad', '2025-03-18', '11:59PM', 20, 40, 181, 130, '2025-03-18 10:08:50', '2025-03-18 10:08:50', 'midterm'),
(393, 'Lab 2', 'Laboratory Exercise', 'asdsd', '2025-03-18', '11:59PM', 25, 50, 181, 130, '2025-03-18 10:09:08', '2025-03-18 10:09:08', 'final'),
(394, 'Midterm Exam', 'Major Exams', 'asdasd', '2025-03-18', '11:59PM', 60, 120, 181, 130, '2025-03-18 10:09:24', '2025-03-18 10:09:24', 'midterm'),
(395, 'Finals Exam', 'Major Exams', 'adasd', '2025-03-18', '11:59PM', 60, 110, 181, 130, '2025-03-18 10:09:44', '2025-03-18 10:09:44', 'final'),
(396, 'AAA1', 'Assignment/Activities/Attendance', 'asdad', '2025-03-18', '11:59PM', 10, 20, 181, 130, '2025-03-18 10:09:57', '2025-03-18 10:09:57', 'midterm'),
(397, 'AAA2', 'Assignment/Activities/Attendance', 'adsd', '2025-03-18', '11:59PM', 20, 40, 181, 130, '2025-03-18 10:10:09', '2025-03-18 10:10:09', 'final'),
(398, 'Quiz 1', 'Quizzes', 'asda', '2025-03-18', '11:59PM', 20, 40, 180, 130, '2025-03-18 10:13:20', '2025-03-18 14:18:05', 'midterm'),
(399, 'Quiz 2', 'Quizzes', 'asdasd', '2025-03-18', '11:59PM', 30, 60, 180, 130, '2025-03-18 10:13:35', '2025-03-18 14:18:05', 'final'),
(400, 'Midterm Exams', 'Major Exams', 'asdasd', '2025-03-18', '11:59PM', 60, 120, 180, 130, '2025-03-18 10:13:53', '2025-03-18 10:13:53', 'midterm'),
(401, 'Finals Exams', 'Major Exams', 'asdd', '2025-03-18', '11:59PM', 50, 100, 180, 130, '2025-03-18 10:14:15', '2025-03-18 10:14:15', 'final'),
(402, 'AA1', 'Assignment/Attendance', 'asdasd', '2025-03-18', '11:59PM', 30, 60, 180, 130, '2025-03-18 10:14:25', '2025-03-18 10:14:25', 'midterm'),
(403, 'AA2', 'Assignment/Attendance', 'asdasd', '2025-03-18', '11:59PM', 20, 40, 180, 130, '2025-03-18 10:14:37', '2025-03-18 10:14:37', 'final'),
(404, 'A1', 'Activities/Attendance', 'asd', '2025-03-18', '12:12PM', 30, 50, 182, 132, '2025-03-18 15:16:15', '2025-03-18 15:16:15', 'midterm'),
(405, 'A2', 'Activities/Attendance', 'asd', '2025-03-18', '12:12PM', 20, 40, 182, 132, '2025-03-18 15:16:34', '2025-03-18 15:16:34', 'final'),
(406, 'E1', 'Exam', 'asd', '2025-03-18', '12:12PM', 30, 50, 182, 132, '2025-03-18 15:16:52', '2025-03-18 15:16:52', 'midterm'),
(407, 'E2', 'Exam', 'asd', '2025-03-18', '12:12PM', 20, 40, 182, 132, '2025-03-18 15:17:15', '2025-03-18 15:17:15', 'final'),
(408, 'Q1', 'Quizzes', 'asd', '2025-03-18', '12:12AM', 20, 40, 182, 132, '2025-03-18 15:17:41', '2025-03-18 15:17:41', 'midterm'),
(409, 'Q2', 'Quizzes', 'asd', '2025-03-18', '12:12PM', 20, 30, 182, 132, '2025-03-18 15:18:15', '2025-03-18 15:18:15', 'final'),
(416, 'Midterm', 'Major Exams', 'asdasd', '2025-03-19', '11:59PM', 20, 40, 183, 132, '2025-03-19 05:32:21', '2025-03-19 05:32:21', 'midterm'),
(417, 'Final', 'Major Exams', 'asdad', '2025-03-19', '11:59PM', 60, 120, 183, 132, '2025-03-19 05:32:34', '2025-03-19 05:32:34', 'final'),
(418, 'LE1', 'Laboratory Exercise', 'asasd', '2025-03-19', '11:15PM', 20, 40, 183, 132, '2025-03-19 05:32:46', '2025-03-19 05:32:46', 'midterm'),
(419, 'LE2', 'Laboratory Exercise', 'adasd', '2025-03-19', '11:59PM', 30, 60, 183, 132, '2025-03-19 05:33:50', '2025-03-19 05:33:50', 'final'),
(420, 'AAA1', 'Assignment/Attendance/Activities', 'asdasd', '2025-03-19', '11:59PM', 30, 60, 183, 132, '2025-03-19 05:34:02', '2025-03-19 05:34:02', 'midterm'),
(434, 'midterm', 'Major Exams', 'asdasd', '2025-03-20', '11:59PM', 60, 120, 186, 138, '2025-03-20 03:37:40', '2025-03-20 03:37:40', 'midterm'),
(435, 'finals', 'Major Exams', 'asdasd', '2025-03-20', '11:59PM', 50, 100, 186, 138, '2025-03-20 03:38:13', '2025-03-20 03:38:13', 'final'),
(461, 'QUIZ1', 'Quiz', 'TEST', '2025-03-24', '12:03PM', 1, 25, 192, 141, '2025-03-23 21:03:40', '2025-03-23 21:03:40', 'midterm'),
(462, 'QUIZ2', 'Quiz', 'Q2', '2025-03-24', '12:03PM', 1, 25, 192, 141, '2025-03-23 21:03:49', '2025-03-23 21:03:49', 'final'),
(463, 'ACT1', 'Activities', 'ACT1', '2025-03-24', '12:04PM', 1, 25, 192, 141, '2025-03-23 21:04:03', '2025-03-23 21:04:03', 'midterm'),
(464, 'ACT2', 'Activities', 'ACT2', '2025-03-24', '12:04PM', 1, 25, 192, 141, '2025-03-23 21:04:16', '2025-03-23 21:04:16', 'final'),
(465, 'Q1', 'Quiz', 'Q1', '2025-03-24', '12:04PM', 1, 25, 189, 141, '2025-03-23 21:04:42', '2025-03-23 21:04:42', 'midterm'),
(466, 'T1', 'Test', 'T1', '2025-03-24', '12:04PM', 1, 25, 189, 141, '2025-03-23 21:04:53', '2025-03-23 21:04:53', 'midterm'),
(467, 'Q2', 'Quiz', 'Q2', '2025-03-24', '12:05PM', 1, 25, 189, 141, '2025-03-23 21:05:10', '2025-03-23 21:05:10', 'final'),
(468, 'T2', 'Test', 'T2', '2025-03-24', '12:05PM', 1, 25, 189, 141, '2025-03-23 21:05:22', '2025-03-23 21:05:22', 'final');

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

--
-- Dumping data for table `activity_attachments`
--

INSERT INTO `activity_attachments` (`id`, `activity_id`, `file_name`, `file_path`, `uploaded_at`) VALUES
(114, 409, 'TOUR RECEIPT.docx', '67d98eb707923-TOUR RECEIPT.docx', '2025-03-18 23:18:15');

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
(2112, 392, 202103084, '2025-03-18 18:10:36', 35, 'asda', 'graded', NULL, NULL),
(2113, 392, 202102097, '2025-03-18 18:10:18', 29, 'asda', 'graded', NULL, NULL),
(2114, 393, 202103084, '2025-03-18 18:10:38', 36, 'asda', 'graded', NULL, NULL),
(2115, 393, 202102097, '2025-03-18 18:10:20', 26, 'asda', 'graded', NULL, NULL),
(2116, 394, 202103084, '2025-03-18 18:10:40', 98, 'asda', 'graded', NULL, NULL),
(2117, 394, 202102097, '2025-03-18 18:10:22', 85, 'sdasd', 'graded', NULL, NULL),
(2118, 395, 202103084, '2025-03-18 18:10:42', 85, 'asda', 'graded', NULL, NULL),
(2119, 395, 202102097, '2025-03-18 18:10:25', 75, 'asda', 'graded', NULL, NULL),
(2120, 396, 202103084, '2025-03-18 18:10:44', 20, 'asda', 'graded', NULL, NULL),
(2121, 396, 202102097, '2025-03-18 18:10:27', 20, 'asda', 'graded', NULL, NULL),
(2122, 397, 202103084, '2025-03-18 18:10:46', 30, 'asda', 'graded', NULL, NULL),
(2123, 397, 202102097, '2025-03-18 18:10:29', 30, 'asda', 'graded', NULL, NULL),
(2124, 398, 202103084, '2025-03-18 18:15:06', 35, 'asdasd', 'graded', NULL, NULL),
(2125, 398, 202102097, '2025-03-18 18:14:48', 24, 'asdad', 'graded', NULL, NULL),
(2126, 399, 202103084, '2025-03-18 18:15:08', 45, 'asdasd', 'graded', NULL, NULL),
(2127, 399, 202102097, '2025-03-18 18:14:50', 40, 'asdas', 'graded', NULL, NULL),
(2128, 400, 202103084, '2025-03-18 18:15:10', 101, 'asdasd', 'graded', NULL, NULL),
(2129, 400, 202102097, '2025-03-18 18:14:52', 97, 'asda', 'graded', NULL, NULL),
(2130, 401, 202103084, '2025-03-18 18:15:12', 85, 'asdasd', 'graded', NULL, NULL),
(2131, 401, 202102097, '2025-03-18 18:14:54', 75, 'asda', 'graded', NULL, NULL),
(2132, 402, 202103084, '2025-03-18 18:15:14', 36, 'asda', 'graded', NULL, NULL),
(2133, 402, 202102097, '2025-03-18 18:14:56', 26, 'asda', 'graded', NULL, NULL),
(2134, 403, 202103084, '2025-03-18 18:15:16', 20, 'asda', 'graded', NULL, NULL),
(2135, 403, 202102097, '2025-03-18 18:14:58', 20, 'asda', 'graded', NULL, NULL),
(2136, 404, 202102097, '2025-03-18 23:19:13', 30, 'good job', 'graded', NULL, NULL),
(2137, 405, 202102097, '2025-03-18 23:19:16', 25, 'good job', 'graded', NULL, NULL),
(2138, 406, 202102097, '2025-03-18 23:19:19', 35, 'good job', 'graded', NULL, NULL),
(2139, 407, 202102097, '2025-03-18 23:19:21', 15, 'good job', 'graded', NULL, NULL),
(2140, 408, 202102097, '2025-03-18 23:19:23', 20, 'good job', 'graded', NULL, NULL),
(2141, 409, 202102097, '2025-03-18 23:19:25', 25, 'good job', 'graded', NULL, NULL),
(2148, 404, 202103084, '2025-03-19 10:56:50', 35, '4a', 'graded', NULL, NULL),
(2149, 405, 202103084, '2025-03-19 10:56:53', 43, 'Hah', 'graded', NULL, NULL),
(2150, 406, 202103084, '2025-03-19 10:56:55', 31, 'Haha', 'graded', NULL, NULL),
(2151, 407, 202103084, '2025-03-19 10:56:58', 28, 'Hahha', 'graded', NULL, NULL),
(2152, 408, 202103084, '2025-03-19 10:57:00', 29, 'Vahvaa', 'graded', NULL, NULL),
(2153, 409, 202103084, '2025-03-19 10:57:03', 22, 'Hah', 'graded', NULL, NULL),
(2160, 392, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2161, 393, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2162, 394, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2163, 395, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2164, 396, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2165, 397, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2166, 398, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2167, 399, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2168, 400, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2169, 401, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2170, 402, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2171, 403, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2172, 404, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2173, 405, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2174, 406, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2175, 407, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2176, 408, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2177, 409, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2184, 416, 202102097, '2025-03-19 13:37:32', 30, 'asdad', 'graded', NULL, NULL),
(2186, 416, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2187, 417, 202102097, '2025-03-19 13:37:34', 95, 'asdad', 'graded', NULL, NULL),
(2189, 417, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2190, 418, 202102097, '2025-03-19 13:37:36', 26, 'asda', 'graded', NULL, NULL),
(2192, 418, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2193, 419, 202102097, '2025-03-19 13:37:38', 35, 'asdasd', 'graded', NULL, NULL),
(2195, 419, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2196, 420, 202102097, '2025-03-19 13:37:40', 45, 'asda', 'graded', NULL, NULL),
(2198, 420, 202100572, NULL, 0, NULL, 'pending', NULL, NULL),
(2226, 392, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2227, 393, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2228, 394, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2229, 395, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2230, 396, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2231, 397, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2232, 398, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2233, 399, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2234, 400, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2235, 401, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2236, 402, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2237, 403, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2238, 404, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2239, 405, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2240, 406, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2241, 407, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2242, 408, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2243, 409, 202100768, NULL, 0, NULL, 'pending', NULL, NULL),
(2249, 434, 202102097, '2025-03-20 11:42:22', 90, 'asdasd', 'graded', NULL, NULL),
(2250, 435, 202102097, NULL, 0, NULL, 'pending', NULL, NULL),
(2251, 416, 202103084, NULL, 0, NULL, 'pending', NULL, NULL),
(2252, 417, 202103084, NULL, 0, NULL, 'pending', NULL, NULL),
(2253, 418, 202103084, NULL, 0, NULL, 'pending', NULL, NULL),
(2254, 419, 202103084, NULL, 0, NULL, 'pending', NULL, NULL),
(2255, 420, 202103084, NULL, 0, NULL, 'pending', NULL, NULL),
(2337, 461, 202103084, NULL, 0, NULL, 'pending', NULL, NULL),
(2338, 462, 202103084, NULL, 0, NULL, 'pending', NULL, NULL),
(2339, 463, 202103084, NULL, 0, NULL, 'pending', NULL, NULL),
(2340, 464, 202103084, NULL, 0, NULL, 'pending', NULL, NULL),
(2341, 465, 202103084, '2025-03-24 14:33:02', 0, NULL, 'submitted', NULL, NULL),
(2342, 466, 202103084, '2025-03-24 14:33:05', 0, NULL, 'submitted', NULL, NULL),
(2343, 467, 202103084, '2025-03-24 14:33:07', 0, NULL, 'submitted', NULL, NULL),
(2344, 468, 202103084, '2025-03-24 14:33:09', 0, NULL, 'submitted', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `id` int(11) NOT NULL,
  `username` varchar(255) DEFAULT NULL,
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

--
-- Dumping data for table `admin_notes`
--

INSERT INTO `admin_notes` (`id`, `title`, `description`, `datetime_created`) VALUES
(129, 'Thursday ', 'Final Defense for Capstone', '2025-03-18 22:47:11');

-- --------------------------------------------------------

--
-- Table structure for table `admin_notifications`
--

CREATE TABLE `admin_notifications` (
  `id` int(11) NOT NULL,
  `type` text NOT NULL,
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
(243, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: Leonard Montilla Aquino', '2025-03-18 18:03:42', 'admin/class_management.php', 'read'),
(244, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: Julia Pormento Barretto', '2025-03-18 18:04:52', 'admin/class_management.php', 'read'),
(245, 'teacher', 'Final Grades Submission for Review and Approval!', 'Grades have been added for review by john A. doe under the class of: BSIT-4B on subject of: SAM', '2025-03-18 18:21:54', '/admin/class_management.php', 'read'),
(246, 'teacher', 'Final Grades Submission for Review and Approval!', 'Grades have been added for review by Sung A.  Wu under the class of: BSIT-4B on subject of: SAM', '2025-03-18 18:22:00', '/admin/class_management.php', 'read'),
(247, 'teacher', 'Final Grades Submission for Review and Approval!', 'Grades have been added for review by john A. doe under the class of: BSIT-4B on subject of: Infomation Assurance', '2025-03-18 23:38:34', '/admin/class_management.php', 'read'),
(248, 'teacher', 'Staff Account Updated', 'The profile for staff member ungas A. doe has been updated.', '2025-03-19 04:00:58', '/capstone/admin/teacher_management.php', 'read'),
(249, 'teacher', 'Staff Account Updated', 'The profile for staff member john A. doe has been updated.', '2025-03-19 10:54:13', '/capstone/admin/teacher_management.php', 'read'),
(250, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: Lyrra Fe Canseco Bautista', '2025-03-19 11:09:57', 'admin/class_management.php', 'read'),
(251, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: John Paulo Ortega Abrajano', '2025-03-19 21:05:37', 'admin/class_management.php', 'read'),
(252, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: John Paulo Ortega Abrajano', '2025-03-19 21:23:13', 'admin/class_management.php', 'read'),
(253, 'teacher', 'New Staff Account Registration', 'A new staff/teacher account has registered to the system by the name of: king king king', '2025-03-19 22:04:11', 'admin/teacher_management.php', 'read'),
(254, 'semester', 'Semester Ending Soon: 1st semester', 'The semester \'1st semester\' is ending soon. Please complete all required tasks.', '2025-03-19 22:29:37', '/admin/semester_management.php', 'read'),
(255, 'teacher', 'New Class Addition', 'A new class to be taught has been added by Jason A. Catadman', '2025-03-20 11:27:48', '/admin/class_management.php', 'read'),
(256, 'teacher', 'Final Grades Submission for Review and Approval!', 'Grades have been added for review by john A. doe under the class of: BSIT-4B on subject of: Infomation Assurance', '2025-03-20 12:02:31', '/admin/class_management.php', 'read'),
(257, 'semester', 'Semester Has Ended: 1st semester', 'The semester \"1st semester\" has ended.', '2025-03-20 12:10:53', '/admin/semester_management.php', 'read'),
(258, 'teacher', 'Final Grades Submission for Review and Approval!', 'Grades have been added for review by john A. doe under the class of: BSIT-4A on subject of: SE', '2025-03-23 21:56:55', '/admin/class_management.php', 'unread'),
(259, 'teacher', 'Final Grades Submission for Review and Approval!', 'Grades have been added for review by john A. doe under the class of: BSIT-4A on subject of: SE', '2025-03-23 21:57:26', '/admin/class_management.php', 'unread'),
(260, 'teacher', 'Final Grades Submission for Review and Approval!', 'Grades have been added for review by john A. doe under the class of: BSIT-4A on subject of: SE', '2025-03-24 10:10:17', '/admin/class_management.php', 'unread'),
(261, 'teacher', 'Final Grades Submission for Review and Approval!', 'Grades have been added for review by john A. doe under the class of: BSIT-4A on subject of: SE', '2025-03-24 10:10:20', '/admin/class_management.php', 'unread');

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
(34, 60, 'Semester end reached', '2025-03-20 04:10:53');

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
(401, 202103084, 181, 211, 'present', '2025-03-18 10:11:06', '2025-03-15', NULL),
(402, 202102097, 181, 211, 'present', '2025-03-18 10:11:06', '2025-03-15', NULL),
(403, 202103084, 181, 212, 'present', '2025-03-18 10:11:24', '2025-03-17', NULL),
(404, 202102097, 181, 212, 'present', '2025-03-18 10:11:24', '2025-03-17', NULL),
(405, 202103084, 181, 213, 'present', '2025-03-18 10:11:35', '2025-03-14', NULL),
(406, 202102097, 181, 213, 'present', '2025-03-18 10:11:35', '2025-03-14', NULL),
(407, 202103084, 181, 214, 'present', '2025-03-18 10:11:46', '2025-03-18', '158.62.69.57'),
(408, 202102097, 181, 214, 'absent', '2025-03-18 10:11:46', '2025-03-18', NULL),
(409, 202103084, 180, 215, 'present', '2025-03-18 10:16:38', '2025-03-14', NULL),
(410, 202102097, 180, 215, 'present', '2025-03-18 10:16:38', '2025-03-14', NULL),
(411, 202103084, 180, 216, 'present', '2025-03-18 10:16:49', '2025-03-15', NULL),
(412, 202102097, 180, 216, 'present', '2025-03-18 10:16:49', '2025-03-15', NULL),
(413, 202103084, 180, 217, 'present', '2025-03-18 10:17:03', '2025-03-17', NULL),
(414, 202102097, 180, 217, 'present', '2025-03-18 10:17:03', '2025-03-17', NULL),
(415, 202103084, 180, 218, 'present', '2025-03-18 10:17:23', '2025-03-18', '158.62.69.57'),
(416, 202102097, 180, 218, 'absent', '2025-03-18 10:17:23', '2025-03-18', NULL),
(417, 202102097, 182, 219, 'present', '2025-03-18 15:12:17', '2025-03-18', '158.62.69.57'),
(422, 202102097, 182, 222, 'absent', '2025-03-19 05:26:27', '2025-03-19', NULL),
(423, 202103084, 182, 222, 'present', '2025-03-19 05:26:27', '2025-03-19', '158.62.69.57'),
(427, 202102097, 183, 224, 'present', '2025-03-19 05:28:47', '2025-03-19', NULL),
(429, 202100572, 183, 224, 'present', '2025-03-19 05:28:47', '2025-03-19', NULL),
(437, 202102097, 182, 228, 'present', '2025-03-20 00:33:06', '2025-03-20', NULL),
(438, 202103084, 182, 228, 'present', '2025-03-20 00:33:06', '2025-03-20', '175.176.81.212'),
(439, 202102097, 183, 229, 'absent', '2025-03-20 00:35:31', '2025-03-18', NULL),
(441, 202100572, 183, 229, 'absent', '2025-03-20 00:35:31', '2025-03-18', NULL),
(454, 202102097, 182, 234, 'absent', '2025-03-20 03:51:08', '2025-03-20', NULL),
(455, 202103084, 182, 234, 'absent', '2025-03-20 03:51:08', '2025-03-20', NULL),
(456, 202102097, 183, 235, 'absent', '2025-03-20 03:52:17', '2025-03-14', NULL),
(458, 202100572, 183, 235, 'absent', '2025-03-20 03:52:17', '2025-03-14', NULL),
(459, 202102097, 183, 236, 'absent', '2025-03-20 03:52:23', '2025-03-15', NULL),
(461, 202100572, 183, 236, 'absent', '2025-03-20 03:52:23', '2025-03-15', NULL),
(462, 202102097, 183, 237, 'absent', '2025-03-20 03:52:28', '2025-03-12', NULL),
(464, 202100572, 183, 237, 'absent', '2025-03-20 03:52:28', '2025-03-12', NULL),
(465, 202102097, 183, 238, 'absent', '2025-03-20 03:53:33', '2025-03-13', NULL),
(467, 202100572, 183, 238, 'absent', '2025-03-20 03:53:33', '2025-03-13', NULL),
(469, 202102097, 183, 239, 'absent', '2025-03-20 04:00:02', '2025-03-20', NULL),
(470, 202100572, 183, 239, 'absent', '2025-03-20 04:00:02', '2025-03-20', NULL),
(471, 202103084, 183, 239, 'present', '2025-03-20 04:00:02', '2025-03-20', '175.176.81.98');

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
(180, 'BSIT-4B', 'Lecture', 'SAM', 130, 'SAM101', 'john A. doe', '1st semester', 2, 'ASd', 'OK293R', NULL, 'archived', NULL, '2025-03-18 18:01:50', 1, 'available'),
(181, 'BSIT-4B', 'Laboratory', 'SAM', 130, 'SAM101', 'Sung A.  Wu', '1st semester', 2, 'asdas', 'VS1BFC', NULL, 'archived', NULL, '2025-03-18 18:02:00', 1, 'available'),
(182, 'BSIT-4B', 'Lecture', 'Infomation Assurance', 132, 'InfoAssurance', 'john A. doe', '1st semester', 2, 'qasd', 'OCUGHF', NULL, 'archived', NULL, '2025-03-18 23:09:25', 1, 'not_available'),
(183, 'BSIT-4B', 'Laboratory', 'Infomation Assurance', 132, 'InfoAssurance', 'john A. doe', '1st semester', 3, 'asd', '7ISV9U', NULL, 'archived', NULL, '2025-03-18 23:25:06', 1, 'available'),
(186, 'BSIT-4B', 'Lecture', 'Capstone Project and Research', 138, 'IT 141', 'Jason A. Catadman', '1st semester', 1, 'asdasd', '56X31M', NULL, 'archived', NULL, '2025-03-20 11:24:38', 1, 'not_available'),
(187, 'BSIT-4B', 'Laboratory', 'Capstone Project and Research', 138, 'IT 141', 'Jason A. Catadman', '1st semester', 0, 'asdasd', 'QHQUUC', NULL, 'archived', NULL, '2025-03-20 11:25:18', 1, 'not_available'),
(188, 'BSIT-4B', 'Lecture', 'test', 140, 'test', 'Jason A. Catadman', '1st semester', 0, 'aasd', 'MD1Y9C', 'Jason A. Catadman', 'archived', NULL, '2025-03-20 11:27:48', 1, 'not_available'),
(189, 'BSIT-4A', 'Laboratory', 'SE', 141, 'IT 150', 'john A. doe', '2nd Semester', 1, 'Test', 'W48LAZ', NULL, 'accepted', NULL, '2025-03-23 16:12:06', 0, 'available'),
(191, 'BSIT-1A', 'Lecture', 'Software EngineeringASD', 145, 'ASD', 'Sung A.  Wu', '2nd Semester', 0, 'hey', 'YC0OA8', NULL, 'accepted', NULL, '2025-03-23 22:30:33', 0, 'not_available'),
(192, 'BSIT-4A', 'Lecture', 'SE', 141, 'IT 150', 'john A. doe', '2nd Semester', 1, 'heyy', 'KE4RUK', NULL, 'accepted', NULL, '2025-03-23 22:30:50', 0, 'available');

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
(211, '2025-03-15', 181, 'Finished', '8:00 AM', '10:00 AM', 'on', 'Regular'),
(212, '2025-03-17', 181, 'Finished', '8:00 AM', '10:00 AM', 'on', 'Regular'),
(213, '2025-03-14', 181, 'Finished', '8:00 AM', '10:00 AM', 'on', 'Regular'),
(214, '2025-03-18', 181, 'Finished', '6:12 PM', '8:00 PM', 'off', 'Regular'),
(215, '2025-03-14', 180, 'Finished', '8:00 AM', '10:00 AM', 'on', 'Regular'),
(216, '2025-03-15', 180, 'Finished', '8:00 AM', '10:00 AM', 'on', 'Regular'),
(217, '2025-03-17', 180, 'Finished', '8:00 AM', '10:00 AM', 'on', 'Regular'),
(218, '2025-03-18', 180, 'Finished', '6:17 PM', '7:00 PM', 'off', 'Regular'),
(219, '2025-03-18', 182, 'Ongoing', '11:13 PM', '11:59 PM', 'off', 'Make-up'),
(222, '2025-03-19', 182, 'Finished', '1:26 PM', '3:00 PM', 'off', 'Regular'),
(224, '2025-03-19', 183, 'Finished', '1:28 PM', '3:00 PM', 'on', 'Regular'),
(228, '2025-03-20', 182, 'Finished', '8:32 AM', '12:00 PM', 'on', 'Make-up'),
(229, '2025-03-18', 183, 'Finished', '11:10 PM', '12:00 PM', 'on', 'Regular'),
(234, '2025-03-20', 182, 'Finished', '11:51 AM', '1:00 PM', 'on', 'Make-up'),
(235, '2025-03-14', 183, 'Finished', '11:10 PM', '12:00 PM', 'on', 'Regular'),
(236, '2025-03-15', 183, 'Finished', '11:10 PM', '12:00 PM', 'on', 'Regular'),
(237, '2025-03-12', 183, 'Finished', '11:10 PM', '12:00 PM', 'on', 'Regular'),
(238, '2025-03-13', 183, 'Finished', '11:10 PM', '12:00 PM', 'on', 'Regular'),
(239, '2025-03-20', 183, 'Finished', '11:59 AM', '1:00 PM', 'on', 'Make-up');

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
(118, '2nd Semester');

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

--
-- Dumping data for table `learning_resources`
--

INSERT INTO `learning_resources` (`resource_id`, `class_id`, `subject_id`, `resource_name`, `resource_type`, `resource_description`, `resource_url`, `uploaded_at`) VALUES
(24, 183, 132, 'meow', 'document', 'test', '2024-2025 Tuition _ Fees - College.pdf', '2025-03-18 19:51:26'),
(25, 183, 132, 'test', 'video', 'v', 'videoplayback.mp4', '2025-03-18 19:51:38'),
(26, 185, 135, 'Test', 'document', 'Tset', 'Procurement-Weekly-Progress-Report.docx', '2025-03-19 11:03:59'),
(27, 185, 135, 'Stickman Video', 'video', 'Stickman', 'Walking Stickman (Super Short Animation).mp4', '2025-03-19 11:04:29');

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
(1741885023254, 202103084, 'student', 99, 'staff', 'Hello po sir', '2025-03-18 10:16:15', 'Julia Pormento Barretto', 'john A. doe', 'read'),
(1741885023255, 99, 'staff', 202103084, 'student', 'test', '2025-03-18 14:15:52', 'john A. doe', 'Julia Pormento Barretto', 'read'),
(1741885023256, 99, 'staff', 202103084, 'student', 'AHWHAHWHAWHAH', '2025-03-18 14:15:54', 'john A. doe', 'Julia Pormento Barretto', 'read'),
(1741885023257, 99, 'staff', 202102097, 'student', 'OCUGHF', '2025-03-18 15:09:59', 'john A. doe', 'Leonard Montilla Aquino', 'read'),
(1741885023258, 99, 'staff', 11, 'admin', 'YOOOOOOOOOOOOOOOOOOO', '2025-03-18 18:52:51', 'john A. doe', 'Dean WMSU CCS', 'read'),
(1741885023259, 11, 'admin', 99, 'staff', 'ypppww', '2025-03-18 18:53:05', 'Dean WMSU CCS', 'john A. doe', 'read'),
(1741885023260, 99, 'staff', 11, 'admin', 'class', '2025-03-18 18:53:15', 'john A. doe', 'Dean WMSU CCS', 'read'),
(1741885023261, 99, 'staff', 202102097, 'student', 'hey', '2025-03-18 18:54:26', 'john A. doe', 'Leonard Montilla Aquino', 'read'),
(1741885023263, 11, 'admin', 202102097, 'student', 'hoy', '2025-03-18 18:54:38', 'Dean WMSU CCS', 'Leonard Montilla Aquino', 'read'),
(1741885023264, 99, 'staff', 202102097, 'student', 'aral', '2025-03-18 18:55:15', 'john A. doe', 'Leonard Montilla Aquino', 'read'),
(1741885023266, 11, 'admin', 99, 'staff', 'Hoy', '2025-03-18 19:03:05', 'Dean WMSU CCS', 'john A. doe', 'read'),
(1741885023267, 99, 'staff', 11, 'admin', 'huuh', '2025-03-18 20:01:07', 'ungas A. doe', 'Dean WMSU CCS', 'read'),
(1741885023268, 202100572, 'student', 99, 'staff', 'Hello! Good pm sir!', '2025-03-19 03:23:51', 'Lyrra Fe Canseco Bautista', 'john A. doe', 'read'),
(1741885023269, 99, 'staff', 202100572, 'student', 'Oy ano man. May klase tayo mamaya 4pm ha', '2025-03-19 04:36:50', 'john A. doe', 'Lyrra Fe Canseco Bautista', 'unread'),
(1741885023270, 102, 'staff', 202102097, 'student', '56X31M', '2025-03-20 03:30:02', 'Jason A. Catadman', 'Leonard Montilla Aquino', 'unread');

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
(128, 180, 130, 'Quizzes', 30, '2025-03-18 10:06:00', '2025-03-18 15:06:15'),
(129, 180, 130, 'Major Exams', 50, '2025-03-18 10:06:11', '2025-03-18 15:05:21'),
(130, 180, 130, 'Assignment/Attendance', 20, '2025-03-18 10:06:20', '2025-03-18 15:06:23'),
(132, 181, 130, 'Laboratory Exercise', 40, '2025-03-18 10:07:45', '2025-03-18 10:08:13'),
(133, 181, 130, 'Major Exams', 50, '2025-03-18 10:07:52', '2025-03-18 10:08:18'),
(134, 181, 130, 'Assignment/Activities/Attendance', 10, '2025-03-18 10:08:08', '2025-03-18 10:08:22'),
(135, 182, 132, 'Quizzes', 40, '2025-03-18 15:10:38', '2025-03-18 15:35:37'),
(136, 182, 132, 'Exam', 50, '2025-03-18 15:10:46', '2025-03-18 15:36:58'),
(137, 182, 132, 'Activities/Attendance', 10, '2025-03-18 15:11:25', '2025-03-18 15:36:47'),
(141, 183, 132, 'Major Exams', 40, '2025-03-19 05:31:10', '2025-03-19 05:31:41'),
(142, 183, 132, 'Laboratory Exercise', 50, '2025-03-19 05:31:19', '2025-03-19 05:31:46'),
(143, 183, 132, 'Assignment/Attendance/Activities', 10, '2025-03-19 05:31:33', '2025-03-19 05:31:51'),
(150, 186, 138, 'Major Exams', 40, '2025-03-20 03:30:59', '2025-03-20 03:36:00'),
(151, 186, 138, 'Quizzes', 20, '2025-03-20 03:31:09', '2025-03-20 03:36:09'),
(152, 186, 138, 'Performance Task', 20, '2025-03-20 03:31:24', '2025-03-20 03:36:16'),
(153, 186, 138, 'Assignment/Attendance', 20, '2025-03-20 03:31:42', '2025-03-20 03:36:26'),
(154, 187, 138, 'Major Exam', 40, '2025-03-20 03:34:27', '2025-03-20 03:35:17'),
(155, 187, 138, 'Laboratory Exercise', 50, '2025-03-20 03:34:39', '2025-03-20 03:35:26'),
(156, 187, 138, 'Assingment/Attendance/Activities', 10, '2025-03-20 03:34:56', '2025-03-20 03:35:31'),
(158, 189, 141, 'Quiz', 45, '2025-03-23 08:20:31', '2025-03-23 13:19:12'),
(159, 189, 141, 'Test', 35, '2025-03-23 08:20:46', '2025-03-23 13:19:14'),
(196, 192, 141, 'Quiz', 25, '2025-03-24 04:03:26', '2025-03-24 04:05:42'),
(197, 192, 141, 'Activities', 25, '2025-03-24 04:03:30', '2025-03-24 04:05:43');

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
(82, 181, 'Laboratory Exercise', 1, 1),
(83, 181, 'Major Exams', 1, 1),
(84, 181, 'Assignment/activities/attendance', 1, 1),
(85, 180, 'Quizzes', 1, 1),
(86, 180, 'Major Exams', 1, 1),
(87, 180, 'Assignment/attendance', 1, 1),
(88, 182, 'Quizzes', 2, 2),
(89, 182, 'Exam', 1, 1),
(90, 182, 'Activities/attendance', 1, 1),
(94, 183, 'Major Exams', 1, 1),
(95, 183, 'Laboratory Exercise', 1, 1),
(96, 183, 'Assignment/attendance/activities', 1, 1),
(97, 185, 'Major Exams', 1, 1),
(98, 185, 'Laboratory Exercise', 1, 1),
(99, 185, 'Assignment/attendance/activities', 1, 1),
(100, 184, 'Major Exams', 1, 1),
(101, 184, 'Quizzes', 1, 1),
(102, 184, 'Assignment/attendance', 1, 1),
(103, 186, 'Major Exams', 1, 1),
(104, 186, 'Quizzes', 3, 3),
(105, 186, 'Performance Task', 1, 1),
(106, 186, 'Assignment/attendance', 1, 1);

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
(60, '1st semester', '2025-01-06', '2025-03-20', '2025', 'Hello', 'archived', 1, '2025-03-18 09:58:59', '2025-03-20 04:10:53'),
(62, '2nd Semester', '2025-03-23', '2025-03-31', '2025', 'New semester', 'active', 0, '2025-03-23 08:02:26', '2025-03-23 14:20:41');

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
(99, 'john', 'johndoe@gmail.com', '$2y$10$hDx2NExGV1HVpJaGyFN7/.rMszUzsSUiOpFYUFvFt./mMyXbpy1V.', 'Department of Information Technology', '2025-03-18', '+639658459625', 'Male', '2025-03-18 17:59:33', 'Staff', 'Active', NULL, 'A.', 'doe', 'john A. doe'),
(100, 'Sung', 'sung@gmail.com', '$2y$10$YPUAyxaNBJgAzbHxsDRgb.e4bB6PiyNwNMhIW1fVvFRZVkhJPBVai', 'Department of Information Technology', '2025-03-18', '+639854265455', 'Male', '2025-03-18 18:00:25', 'Staff', 'Active', NULL, 'A. ', 'Wu', 'Sung A.  Wu'),
(102, 'Jason', 'jason@gmail.com', '$2y$10$wJwBctbx8Qm.7ogYQz3Y8eYgIbo9HC1Xzq2uONrG.stQqDrGl5eCC', 'Department of Information Technology', '2025-03-20', '+639875678765', 'Male', '2025-03-20 11:23:50', 'Staff', 'Active', NULL, 'A.', 'Catadman', 'Jason A. Catadman');

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
(153, 'Sung A.  Wu', 'BSIT-4B'),
(154, 'john A. doe', 'BSIT-4A'),
(155, 'john A. doe', 'BSIT-4B'),
(156, 'Jason A. Catadman', 'BSIT-4B');

-- --------------------------------------------------------

--
-- Table structure for table `staff_notifications`
--

CREATE TABLE `staff_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` text NOT NULL,
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
(306, 97, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \'2nd Semester\' is ending on March 21, 2025. Please finalize your records.', '2025-03-18 17:55:12', '/staff/class_management.php', 'unread'),
(307, 98, 'semester', 'Semester Ending Soon: 2nd Semester', 'The semester \'2nd Semester\' is ending on March 21, 2025. Please finalize your records.', '2025-03-18 17:55:12', '/staff/class_management.php', 'unread'),
(308, 97, 'attendance_warning', 'Attendance Warning', 'A student (ID: 202102097) in your class (ID: 177) has accumulated 8 absences.', '2025-03-18 17:55:12', '/staff/class_management.php', 'unread'),
(309, 97, 'semester', 'Semester Has Ended: 2nd Semester', 'The semester \"2nd Semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-18 17:55:47', '/staff/class_management.php', 'unread'),
(310, 98, 'semester', 'Semester Has Ended: 2nd Semester', 'The semester \"2nd Semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-18 17:55:47', '/staff/class_management.php', 'unread'),
(311, 99, 'class', 'You have been assigned as a teacher for BSIT-4B to be taught under subject of: SAM!', 'You have been assigned as the teacher for BSIT-4B, under the subject of SAM. Please review the class details and prepare for its integration.', '2025-03-18 18:01:50', '/staff/class_management.php', 'read'),
(312, 100, 'class', 'You have been assigned as a teacher for BSIT-4B to be taught under subject of: SAM!', 'You have been assigned as the teacher for BSIT-4B, under the subject of SAM. Please review the class details and prepare for its integration.', '2025-03-18 18:02:00', '/staff/class_management.php', 'read'),
(313, 100, 'class', 'A new student has entered your class ID: 181 with student ID of: 202103084', 'A new student with Student ID: 202103084 has joined your class (ID: 181). \n                Visit the class management page for more details.', '2025-03-18 18:05:35', '/staff/class_management.php', 'read'),
(314, 100, 'class', 'A new student has entered your class ID: 181 with student ID of: 202102097', 'A new student with Student ID: 202102097 has joined your class (ID: 181). \n                Visit the class management page for more details.', '2025-03-18 18:05:44', '/staff/class_management.php', 'read'),
(315, 100, 'class', 'Grades Accepted!', 'The grades for the subject of SAM under class BSIT-4B have been successfully accepted and are now final!', '2025-03-18 18:22:38', '/capstone/staff/class_management.php', 'read'),
(316, 99, 'class', 'Grades Accepted!', 'The grades for the subject of SAM under class BSIT-4B have been successfully accepted and are now final!', '2025-03-18 18:22:45', '/capstone/staff/class_management.php', 'read'),
(317, 99, 'class', 'You have been assigned as a teacher for BSIT-4B to be taught under subject of: Infomation Assurance!', 'You have been assigned as the teacher for BSIT-4B, under the subject of Infomation Assurance. Please review the class details and prepare for its integration.', '2025-03-18 23:09:25', '/staff/class_management.php', 'read'),
(318, 99, 'class', 'A new student has entered your class ID: 182 with student ID of: 202102097', 'A new student with Student ID: 202102097 has joined your class (ID: 182). \n                Visit the class management page for more details.', '2025-03-18 23:10:19', '/staff/class_management.php', 'read'),
(319, 99, 'class', 'You have been assigned as a teacher for BSIT-4B to be taught under subject of: Infomation Assurance!', 'You have been assigned as the teacher for BSIT-4B, under the subject of Infomation Assurance. Please review the class details and prepare for its integration.', '2025-03-18 23:25:06', '/staff/class_management.php', 'read'),
(320, 99, 'class', 'A new student has entered your class ID: 183 with student ID of: 202103084', 'A new student with Student ID: 202103084 has joined your class (ID: 183). \n                Visit the class management page for more details.', '2025-03-18 23:39:49', '/staff/class_management.php', 'read'),
(321, 99, 'class', 'A new student has entered your class ID: 182 with student ID of: 202103084', 'A new student with Student ID: 202103084 has joined your class (ID: 182). \n                Visit the class management page for more details.', '2025-03-18 23:40:22', '/staff/class_management.php', 'read'),
(322, 99, 'class', 'A new student has entered your class ID: 183 with student ID of: 202100572', 'A new student with Student ID: 202100572 has joined your class (ID: 183). \n                Visit the class management page for more details.', '2025-03-19 11:22:27', '/staff/class_management.php', 'read'),
(323, 100, 'class', 'You have been assigned as a teacher for BSIT-4B to be taught under subject of: Test!', 'You have been assigned as the teacher for BSIT-4B, under the subject of Test. Please review the class details and prepare for its integration.', '2025-03-19 18:57:46', '/staff/class_management.php', 'read'),
(324, 100, 'class', 'You have been assigned as a teacher for BSIT-4B to be taught under subject of: Test!', 'You have been assigned as the teacher for BSIT-4B, under the subject of Test. Please review the class details and prepare for its integration.', '2025-03-19 19:00:00', '/staff/class_management.php', 'read'),
(325, 100, 'class', 'A new student has entered your class ID: 184 with student ID of: 202103084', 'A new student with Student ID: 202103084 has joined your class (ID: 184). \n                Visit the class management page for more details.', '2025-03-19 19:00:42', '/staff/class_management.php', 'read'),
(326, 100, 'class', 'Class 184 has been deleted!', 'The class you were assigned to teach (184) has been deleted. Please review your assignments.', '2025-03-19 19:18:07', '/staff/class_management.php', 'read'),
(327, 100, 'class', 'Class 185 has been deleted!', 'The class you were assigned to teach (185) has been deleted. Please review your assignments.', '2025-03-19 19:18:11', '/staff/class_management.php', 'read'),
(328, 99, 'class', 'A new student has entered your class ID: 183 with student ID of: 202100768', 'A new student with Student ID: 202100768 has joined your class (ID: 183). \n                Visit the class management page for more details.', '2025-03-19 21:08:19', '/staff/class_management.php', 'read'),
(330, 100, 'semester', 'Semester Ending Soon: 1st semester', 'The semester \'1st semester\' is ending on March 22, 2025. Please finalize your records.', '2025-03-19 22:29:37', '/staff/class_management.php', 'unread'),
(332, 102, 'class', 'You have been assigned as a teacher for BSIT-4B to be taught under subject of: Capstone Project and Research!', 'You have been assigned as the teacher for BSIT-4B, under the subject of Capstone Project and Research. Please review the class details and prepare for its integration.', '2025-03-20 11:24:38', '/staff/class_management.php', 'unread'),
(333, 102, 'class', 'You have been assigned as a teacher for BSIT-4B to be taught under subject of: Capstone Project and Research!', 'You have been assigned as the teacher for BSIT-4B, under the subject of Capstone Project and Research. Please review the class details and prepare for its integration.', '2025-03-20 11:25:18', '/staff/class_management.php', 'unread'),
(334, 99, 'attendance_warning', 'Attendance Warning', 'A student (ID: 202100572) in your class (ID: 183) has accumulated 6 absences.', '2025-03-20 11:59:03', '/staff/class_management.php', 'read'),
(335, 99, 'semester', 'Semester Has Ended: 1st semester', 'The semester \"1st semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-20 12:10:53', '/staff/class_management.php', 'read'),
(336, 100, 'semester', 'Semester Has Ended: 1st semester', 'The semester \"1st semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-20 12:10:53', '/staff/class_management.php', 'unread'),
(337, 102, 'semester', 'Semester Has Ended: 1st semester', 'The semester \"1st semester\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-20 12:10:53', '/staff/class_management.php', 'unread'),
(338, 99, 'class', 'You have been assigned as a teacher for BSIT-4A to be taught under subject of: SE!', 'You have been assigned as the teacher for BSIT-4A, under the subject of SE. Please review the class details and prepare for its integration.', '2025-03-23 09:12:06', '/staff/class_management.php', 'read'),
(339, 99, 'class', 'Grades Accepted!', 'The grades for the subject of SE under class \r\nWarning:  Undefined variable $class_name in D:\\Xampp\\htdocs\\Client Commissions\\CSMS System\\CSMS System\\CSMS\\admin\\lab_grades.php on line 1404\r\n have been successfully accepted and are now final!', '2025-03-23 14:58:29', '/capstone/staff/class_management.php', 'unread'),
(340, 99, 'class', 'Grades Rejected!', 'The grades for the subject of SE under class \r\nWarning:  Array to string conversion in D:\\Xampp\\htdocs\\Client Commissions\\CSMS System\\CSMS System\\CSMS\\admin\\lab_grades.php on line 1418\r\nArray have been rejected. Please review and resubmit if necessary.', '2025-03-23 15:01:06', '/capstone/staff/class_management.php', 'unread'),
(341, 99, 'class', 'Grades Accepted!', 'The grades for the subject of SE under class \r\nWarning:  Undefined variable $class_name in D:\\Xampp\\htdocs\\Client Commissions\\CSMS System\\CSMS System\\CSMS\\admin\\lab_grades.php on line 1405\r\n have been successfully accepted and are now final!', '2025-03-23 15:01:08', '/capstone/staff/class_management.php', 'unread'),
(342, 99, 'class', 'You have been assigned as a teacher for BSIT-1A to be taught under subject of: Software EngineeringASD!', 'You have been assigned as the teacher for BSIT-1A, under the subject of Software EngineeringASD. Please review the class details and prepare for its integration.', '2025-03-23 15:29:57', '/staff/class_management.php', 'unread'),
(343, 99, 'class', 'Class 190 has been deleted!', 'The class you were assigned to teach (190) has been deleted. Please review your assignments.', '2025-03-23 15:30:14', '/staff/class_management.php', 'unread'),
(344, 100, 'class', 'You have been assigned as a teacher for BSIT-1A to be taught under subject of: Software EngineeringASD!', 'You have been assigned as the teacher for BSIT-1A, under the subject of Software EngineeringASD. Please review the class details and prepare for its integration.', '2025-03-23 15:30:33', '/staff/class_management.php', 'unread'),
(345, 99, 'class', 'You have been assigned as a teacher for BSIT-1A to be taught under subject of: SE!', 'You have been assigned as the teacher for BSIT-1A, under the subject of SE. Please review the class details and prepare for its integration.', '2025-03-23 15:30:50', '/staff/class_management.php', 'unread'),
(346, 100, 'class', 'You have been assigned as a teacher for BSIT-4A to be taught under subject of: SE!', 'You have been assigned as the teacher for BSIT-4A, under the subject of SE. Please review the class details and prepare for its integration.', '2025-03-23 15:31:17', '/staff/class_management.php', 'unread'),
(347, 99, 'class', 'You have been assigned as a teacher for BSIT-4A to be taught under subject of: SE!', 'You have been assigned as the teacher for BSIT-4A, under the subject of SE. Please review the class details and prepare for its integration.', '2025-03-24 02:19:39', '/staff/class_management.php', 'unread');

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
(202100572, 'Lyrra Fe', 202100572, 'Female', 'BSIT', '2nd Year', 'qb202100572@wmsu.edu.ph', '$2y$10$7lHl0ni2prXo26iBznOZd.x3QHoedtVHlylYkoZ0.LIVI4N0A7RCS', 'Student', 'active', 'de2ce23fb5754a28667750354c631ab970709586203e2f3e3e', NULL, 'Canseco', 'Bautista', 'Lyrra Fe Canseco Bautista'),
(202102097, 'Leonard', 202102097, 'Male', 'BSIT', '3rd Year', 'qb202102097@wmsu.edu.ph', '$2y$10$hDx2NExGV1HVpJaGyFN7/.rMszUzsSUiOpFYUFvFt./mMyXbpy1V.', 'Student', 'active', '7fae28fc4052f87515f9d0254b5a16a5907312e9bbed6d8fb1', NULL, 'Montilla', 'Aquino', 'Leonard Montilla Aquino'),
(202103084, 'Julia', 202103084, 'Female', 'BSIT', '4th Year', 'qb202103084@wmsu.edu.ph', '$2y$10$hDx2NExGV1HVpJaGyFN7/.rMszUzsSUiOpFYUFvFt./mMyXbpy1V.', 'Student', 'active', 'dc1b15c6fa707ae14c5f0903ca8973be59b7f3789682442381', NULL, 'Pormento', 'Barretto', 'Julia Pormento Barretto');

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
(264, 180, 202103084),
(265, 180, 202102097),
(266, 181, 202103084),
(267, 181, 202102097),
(268, 182, 202102097),
(269, 183, 202102097),
(271, 182, 202103084),
(272, 183, 202100572),
(279, 186, 202102097),
(280, 183, 202103084),
(301, 192, 202103084),
(302, 189, 202103084);

-- --------------------------------------------------------

--
-- Table structure for table `student_grades`
--

CREATE TABLE `student_grades` (
  `id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `midterm_grade` text NOT NULL DEFAULT 'N/A',
  `final_grade` text NOT NULL DEFAULT 'N/A',
  `overall_grade` text NOT NULL DEFAULT 'N/A',
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `status` text DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_grades`
--

INSERT INTO `student_grades` (`id`, `class_id`, `student_id`, `midterm_grade`, `final_grade`, `overall_grade`, `updated_at`, `status`) VALUES
(633, 180, 202103084, '1.25', '1.75', '1.5', '2025-03-18 10:22:45', 'accepted'),
(634, 180, 202102097, '2.25', '2.25', '2.25', '2025-03-18 10:22:45', 'accepted'),
(635, 181, 202103084, '1.50', '2.00', '1.75', '2025-03-18 10:22:38', 'accepted'),
(636, 181, 202102097, '2.00', '2.50', '2.25', '2025-03-18 10:22:38', 'accepted'),
(637, 182, 202102097, '2.75', '2.75', '2.75', '2025-03-20 00:33:57', ''),
(638, 183, 202102097, '2.00', '2.00', '2', '2025-03-20 04:02:31', 'for_approval'),
(640, 182, 202103084, '2.50', '2.00', '2.25', '2025-03-19 05:29:38', ''),
(641, 183, 202100572, 'INC', 'INC', '5', '2025-03-20 04:02:31', 'for_approval'),
(648, 186, 202102097, 'INC', 'INC', 'INC', '2025-03-20 03:30:44', ''),
(649, 183, 202103084, '5', '5', '5', '2025-03-20 04:02:31', 'for_approval'),
(670, 192, 202103084, 'N/A', 'N/A', 'N/A', '2025-03-24 02:36:38', ''),
(671, 189, 202103084, 'N/A', 'N/A', 'N/A', '2025-03-24 02:37:27', '');

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
(13, '202103084', 'Julia Pormento Barretto', 'julia@gmail.com', '09685963524', 'Bachelor of Science in Information Technology - 4th Year', 'Ipil', '911', 'Female', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `student_notifications`
--

CREATE TABLE `student_notifications` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `type` text NOT NULL,
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
(1614, 202102097, 'attendance_warning', 'Attendance Warning', 'You have 8 absences in class (ID: 177). Further absences may affect your grade.', '2025-03-18 17:55:12', '/student/attendance.php', 'read'),
(1617, 202102097, 'enrollment', 'You have been enrolled in the class \'SAM\' (Class: BSIT-4B) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SAM\', instructed by john A. doe. Class ID: 180.', '2025-03-18 18:05:24', '/capstone/students/student_classes.php?class_id=180', 'read'),
(1619, 202102097, 'assessment', 'New Assessment Added: Lab 1 at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:08:50', '/students/student_classes.php?class_id=181', 'read'),
(1621, 202102097, 'assessment', 'New Assessment Added: Lab 2 at subject: SAM', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:09:08', '/students/student_classes.php?class_id=181', 'read'),
(1623, 202102097, 'assessment', 'New Assessment Added: Midterm Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:09:24', '/students/student_classes.php?class_id=181', 'read'),
(1625, 202102097, 'assessment', 'New Assessment Added: Finals Exam at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:09:44', '/students/student_classes.php?class_id=181', 'read'),
(1627, 202102097, 'assessment', 'New Assessment Added: AAA1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Activities/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:09:57', '/students/student_classes.php?class_id=181', 'read'),
(1629, 202102097, 'assessment', 'New Assessment Added: AAA2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Activities/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:10:09', '/students/student_classes.php?class_id=181', 'read'),
(1631, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-18 18:11:06', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=181', 'read'),
(1633, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-18 18:11:24', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=181', 'read'),
(1635, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-18 18:11:35', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=181', 'read'),
(1637, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-18 18:11:46', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=181', 'read'),
(1639, 202102097, 'assessment', 'New Assessment Added: Quiz 1 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:13:20', '/students/student_classes.php?class_id=180', 'read'),
(1641, 202102097, 'assessment', 'New Assessment Added: Quiz 2 at subject: SAM', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:13:35', '/students/student_classes.php?class_id=180', 'read'),
(1643, 202102097, 'assessment', 'New Assessment Added: Midterm Exams at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:13:53', '/students/student_classes.php?class_id=180', 'read'),
(1645, 202102097, 'assessment', 'New Assessment Added: Finals Exams at subject: SAM', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:14:15', '/students/student_classes.php?class_id=180', 'read'),
(1647, 202102097, 'assessment', 'New Assessment Added: AA1 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:14:25', '/students/student_classes.php?class_id=180', 'read'),
(1649, 202102097, 'assessment', 'New Assessment Added: AA2 at subject: SAM', 'A new assessment titled \'\' of type: \'Assignment/Attendance\' has been added to your class for the subject: \'SAM\', due on: 11:59PM.', '2025-03-18 18:14:37', '/students/student_classes.php?class_id=180', 'read'),
(1651, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-18 18:16:38', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=180', 'read'),
(1653, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-18 18:16:49', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=180', 'read'),
(1655, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-18 18:17:03', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=180', 'read'),
(1657, 202102097, 'class', 'Class Attendance Added for Subject: SAM!', 'There is an added attendance for subject: SAM Please monitor it regularly!', '2025-03-18 18:17:23', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=180', 'read'),
(1659, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-18 18:18:10', 'view_activity.php?submission_id=2125', 'read'),
(1661, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 40. Status: Graded.', '2025-03-18 18:18:22', 'view_activity.php?submission_id=2127', 'read'),
(1663, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 97. Status: Graded.', '2025-03-18 18:18:40', 'view_activity.php?submission_id=2129', 'read'),
(1665, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 75. Status: Graded.', '2025-03-18 18:18:55', 'view_activity.php?submission_id=2131', 'read'),
(1667, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-18 18:19:07', 'view_activity.php?submission_id=2133', 'read'),
(1669, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-18 18:19:18', 'view_activity.php?submission_id=2135', 'read'),
(1671, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 29. Status: Graded.', '2025-03-18 18:19:32', 'view_activity.php?submission_id=2113', 'read'),
(1673, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-18 18:19:42', 'view_activity.php?submission_id=2115', 'read'),
(1675, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 85. Status: Graded.', '2025-03-18 18:19:56', 'view_activity.php?submission_id=2117', 'read'),
(1677, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 75. Status: Graded.', '2025-03-18 18:20:07', 'view_activity.php?submission_id=2119', 'read'),
(1679, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-18 18:20:17', 'view_activity.php?submission_id=2121', 'read'),
(1681, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-18 18:20:27', 'view_activity.php?submission_id=2123', 'read'),
(1682, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-18 23:12:17', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=182', 'read'),
(1683, 202102097, 'assessment', 'New Assessment Added: A1 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Activities/Attendance\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12PM.', '2025-03-18 23:16:15', '/students/student_classes.php?class_id=182', 'read'),
(1684, 202102097, 'assessment', 'New Assessment Added: A2 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Activities/Attendance\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12PM.', '2025-03-18 23:16:34', '/students/student_classes.php?class_id=182', 'read'),
(1685, 202102097, 'assessment', 'New Assessment Added: E1 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Exam\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12PM.', '2025-03-18 23:16:52', '/students/student_classes.php?class_id=182', 'read'),
(1686, 202102097, 'assessment', 'New Assessment Added: E2 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Exam\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12PM.', '2025-03-18 23:17:15', '/students/student_classes.php?class_id=182', 'read'),
(1687, 202102097, 'assessment', 'New Assessment Added: Q1 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12AM.', '2025-03-18 23:17:41', '/students/student_classes.php?class_id=182', 'read'),
(1688, 202102097, 'assessment', 'New Assessment Added: Q2 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12PM.', '2025-03-18 23:18:15', '/students/student_classes.php?class_id=182', 'read'),
(1689, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-18 23:19:49', 'view_activity.php?submission_id=2136', 'read'),
(1690, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-18 23:19:56', 'view_activity.php?submission_id=2137', 'read'),
(1691, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 35. Status: Graded.', '2025-03-18 23:20:01', 'view_activity.php?submission_id=2138', 'read'),
(1692, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-18 23:20:12', 'view_activity.php?submission_id=2139', 'read'),
(1693, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 20. Status: Graded.', '2025-03-18 23:20:17', 'view_activity.php?submission_id=2140', 'read'),
(1694, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-18 23:20:23', 'view_activity.php?submission_id=2141', 'read'),
(1695, 202102097, 'enrollment', 'You have been enrolled in the class \'Infomation Assurance\' (Class: BSIT-4B) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'Infomation Assurance\', instructed by john A. doe. Class ID: 183.', '2025-03-18 23:26:19', '/capstone/students/student_classes.php?class_id=183', 'read'),
(1696, 202102097, 'assessment', 'New Assessment Added: PJ1 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Project Based\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12AM.', '2025-03-18 23:27:08', '/students/student_classes.php?class_id=183', 'read'),
(1697, 202102097, 'assessment', 'New Assessment Added: PJ2 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Project Based\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12AM.', '2025-03-18 23:27:47', '/students/student_classes.php?class_id=183', 'read'),
(1698, 202102097, 'assessment', 'New Assessment Added: Q1 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Project Based\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12AM.', '2025-03-18 23:28:04', '/students/student_classes.php?class_id=183', 'read'),
(1699, 202102097, 'assessment', 'New Assessment Added: Q2 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12PM.', '2025-03-18 23:29:09', '/students/student_classes.php?class_id=183', 'read'),
(1700, 202102097, 'assessment', 'New Assessment Added: M1 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Exam\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12PM.', '2025-03-18 23:29:26', '/students/student_classes.php?class_id=183', 'read'),
(1701, 202102097, 'assessment', 'New Assessment Added: M2 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Exam\' has been added to your class for the subject: \'Infomation Assurance\', due on: 12:12PM.', '2025-03-18 23:29:41', '/students/student_classes.php?class_id=183', 'read'),
(1702, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 40. Status: Graded.', '2025-03-18 23:30:53', 'view_activity.php?submission_id=2142', 'read'),
(1703, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-18 23:30:59', 'view_activity.php?submission_id=2143', 'read'),
(1704, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-18 23:31:34', 'view_activity.php?submission_id=2144', 'read'),
(1705, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-18 23:31:41', 'view_activity.php?submission_id=2145', 'read'),
(1706, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 40. Status: Graded.', '2025-03-18 23:31:46', 'view_activity.php?submission_id=2146', 'read'),
(1707, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 50. Status: Graded.', '2025-03-18 23:31:51', 'view_activity.php?submission_id=2147', 'read'),
(1708, 202102097, 'assessment', 'New Learning Material Added: meow at subject: Infomation Assurance', 'A new learning material titled \'meow\' has been added to your class. Subject: \'Infomation Assurance\'.', '2025-03-19 03:51:26', '/capstone/students/student_classes.php?class_id=183', 'read'),
(1710, 202102097, 'assessment', 'New Learning Material Added: test at subject: Infomation Assurance', 'A new learning material titled \'test\' has been added to your class. Subject: \'Infomation Assurance\'.', '2025-03-19 03:51:38', '/capstone/students/student_classes.php?class_id=183', 'read'),
(1712, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-19 03:56:33', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'read'),
(1714, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-19 03:58:40', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'read'),
(1728, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-19 13:26:27', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=182', 'read'),
(1730, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-19 13:28:04', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'read'),
(1732, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-19 13:28:04', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1733, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-19 13:28:47', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'read'),
(1735, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-19 13:28:47', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1736, 202102097, 'assessment', 'New Assessment Added: Midterm at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:59PM.', '2025-03-19 13:32:21', '/students/student_classes.php?class_id=183', 'read'),
(1738, 202100572, 'assessment', 'New Assessment Added: Midterm at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:59PM.', '2025-03-19 13:32:21', '/students/student_classes.php?class_id=183', 'unread'),
(1739, 202102097, 'assessment', 'New Assessment Added: Final at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:59PM.', '2025-03-19 13:32:34', '/students/student_classes.php?class_id=183', 'read'),
(1741, 202100572, 'assessment', 'New Assessment Added: Final at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:59PM.', '2025-03-19 13:32:34', '/students/student_classes.php?class_id=183', 'unread'),
(1742, 202102097, 'assessment', 'New Assessment Added: LE1 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:15PM.', '2025-03-19 13:32:46', '/students/student_classes.php?class_id=183', 'read'),
(1744, 202100572, 'assessment', 'New Assessment Added: LE1 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:15PM.', '2025-03-19 13:32:46', '/students/student_classes.php?class_id=183', 'unread'),
(1745, 202102097, 'assessment', 'New Assessment Added: LE2 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:59PM.', '2025-03-19 13:33:50', '/students/student_classes.php?class_id=183', 'read'),
(1747, 202100572, 'assessment', 'New Assessment Added: LE2 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:59PM.', '2025-03-19 13:33:50', '/students/student_classes.php?class_id=183', 'unread'),
(1748, 202102097, 'assessment', 'New Assessment Added: AAA1 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:59PM.', '2025-03-19 13:34:02', '/students/student_classes.php?class_id=183', 'read'),
(1750, 202100572, 'assessment', 'New Assessment Added: AAA1 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:59PM.', '2025-03-19 13:34:02', '/students/student_classes.php?class_id=183', 'unread'),
(1751, 202102097, 'assessment', 'New Assessment Added: AAA2 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:59PM.', '2025-03-19 13:34:15', '/students/student_classes.php?class_id=183', 'read'),
(1753, 202100572, 'assessment', 'New Assessment Added: AAA2 at subject: Infomation Assurance', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Infomation Assurance\', due on: 11:59PM.', '2025-03-19 13:34:15', '/students/student_classes.php?class_id=183', 'unread'),
(1754, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-19 13:38:01', 'view_activity.php?submission_id=2184', 'read'),
(1756, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 95. Status: Graded.', '2025-03-19 13:38:15', 'view_activity.php?submission_id=2187', 'read'),
(1758, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-19 13:38:28', 'view_activity.php?submission_id=2190', 'read'),
(1760, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 35. Status: Graded.', '2025-03-19 13:39:18', 'view_activity.php?submission_id=2193', 'read'),
(1762, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 45. Status: Graded.', '2025-03-19 13:39:35', 'view_activity.php?submission_id=2196', 'read'),
(1765, 202102097, 'enrollment', 'You have been enrolled in the class \'Test\' (Class: BSIT-4B) by Sung A.  Wu.', 'Congratulations! You have been successfully enrolled in the subject \'Test\', instructed by Sung A.  Wu. Class ID: 184.', '2025-03-19 19:00:51', '/capstone/students/student_classes.php?class_id=184', 'read'),
(1766, 202102097, 'enrollment', 'You have been enrolled in the class \'Test\' (Class: BSIT-4B) by Sung A.  Wu.', 'Congratulations! You have been successfully enrolled in the subject \'Test\', instructed by Sung A.  Wu. Class ID: 185.', '2025-03-19 19:01:00', '/capstone/students/student_classes.php?class_id=185', 'read'),
(1768, 202102097, 'class', 'Class Attendance Added for Subject: Test!', 'There is an added attendance for subject: Test Please monitor it regularly!', '2025-03-19 19:01:40', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=185', 'read'),
(1770, 202102097, 'class', 'Class Attendance Added for Subject: Test!', 'There is an added attendance for subject: Test Please monitor it regularly!', '2025-03-19 19:02:26', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=184', 'read'),
(1772, 202102097, 'assessment', 'New Learning Material Added: Test at subject: Test', 'A new learning material titled \'Test\' has been added to your class. Subject: \'Test\'.', '2025-03-19 19:03:59', '/capstone/students/student_classes.php?class_id=185', 'read'),
(1774, 202102097, 'assessment', 'New Learning Material Added: Stickman Video at subject: Test', 'A new learning material titled \'Stickman Video\' has been added to your class. Subject: \'Test\'.', '2025-03-19 19:04:29', '/capstone/students/student_classes.php?class_id=185', 'read'),
(1776, 202102097, 'assessment', 'New Assessment Added: LE1 at subject: Test', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:07:05', '/students/student_classes.php?class_id=185', 'read'),
(1778, 202102097, 'assessment', 'New Assessment Added: LE2 at subject: Test', 'A new assessment titled \'\' of type: \'Laboratory Exercise\' has been added to your class for the subject: \'Test\', due on: 11:04PM.', '2025-03-19 19:07:21', '/students/student_classes.php?class_id=185', 'read'),
(1780, 202102097, 'assessment', 'New Assessment Added: AAA1 at subject: Test', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:07:37', '/students/student_classes.php?class_id=185', 'read'),
(1782, 202102097, 'assessment', 'New Assessment Added: AAA2 at subject: Test', 'A new assessment titled \'\' of type: \'Assignment/Attendance/Activities\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:07:51', '/students/student_classes.php?class_id=185', 'read'),
(1784, 202102097, 'assessment', 'New Assessment Added: Midterm Exam at subject: Test', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:08:12', '/students/student_classes.php?class_id=185', 'read'),
(1786, 202102097, 'assessment', 'New Assessment Added: Finals Exam at subject: Test', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:08:43', '/students/student_classes.php?class_id=185', 'read'),
(1788, 202102097, 'assessment', 'New Assessment Added: Midterm Exam at subject: Test', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:09:19', '/students/student_classes.php?class_id=184', 'read'),
(1790, 202102097, 'assessment', 'New Assessment Added: Finals at subject: Test', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:09:33', '/students/student_classes.php?class_id=184', 'read'),
(1792, 202102097, 'assessment', 'New Assessment Added: Quizzes1 at subject: Test', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:09:52', '/students/student_classes.php?class_id=184', 'read'),
(1794, 202102097, 'assessment', 'New Assessment Added: Quizzes2 at subject: Test', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:10:06', '/students/student_classes.php?class_id=184', 'read'),
(1796, 202102097, 'assessment', 'New Assessment Added: AA1 at subject: Test', 'A new assessment titled \'\' of type: \'Assignment/Attendance\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:10:16', '/students/student_classes.php?class_id=184', 'read'),
(1798, 202102097, 'assessment', 'New Assessment Added: AA2 at subject: Test', 'A new assessment titled \'\' of type: \'Assignment/Attendance\' has been added to your class for the subject: \'Test\', due on: 11:59PM.', '2025-03-19 19:10:34', '/students/student_classes.php?class_id=184', 'read'),
(1800, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 75. Status: Graded.', '2025-03-19 19:12:44', 'view_activity.php?submission_id=2215', 'read'),
(1802, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 90. Status: Graded.', '2025-03-19 19:12:56', 'view_activity.php?submission_id=2217', 'read'),
(1804, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 30. Status: Graded.', '2025-03-19 19:13:08', 'view_activity.php?submission_id=2219', 'read'),
(1806, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 50. Status: Graded.', '2025-03-19 19:13:21', 'view_activity.php?submission_id=2221', 'read'),
(1808, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 21. Status: Graded.', '2025-03-19 19:13:37', 'view_activity.php?submission_id=2223', 'read'),
(1810, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 23. Status: Graded.', '2025-03-19 19:13:48', 'view_activity.php?submission_id=2225', 'read'),
(1812, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 45. Status: Graded.', '2025-03-19 19:14:08', 'view_activity.php?submission_id=2203', 'read'),
(1814, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 49. Status: Graded.', '2025-03-19 19:14:21', 'view_activity.php?submission_id=2205', 'read'),
(1816, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 16. Status: Graded.', '2025-03-19 19:14:32', 'view_activity.php?submission_id=2207', 'read'),
(1818, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 26. Status: Graded.', '2025-03-19 19:14:47', 'view_activity.php?submission_id=2209', 'read'),
(1820, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 75. Status: Graded.', '2025-03-19 19:14:59', 'view_activity.php?submission_id=2211', 'read'),
(1822, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 92. Status: Graded.', '2025-03-19 19:15:12', 'view_activity.php?submission_id=2213', 'read'),
(1824, 202102097, 'unenrollment', 'You have been unenrolled from the class \'Test\' (Class: BSIT-4B) by Sung A.  Wu.', 'You have been unenrolled from the subject \'Test\', instructed by Sung A.  Wu. Class ID: 184.', '2025-03-19 19:17:53', '/capstone/students/student_classes.php?class_id=184', 'read'),
(1826, 202102097, 'unenrollment', 'You have been unenrolled from the class \'Test\' (Class: BSIT-4B) by Sung A.  Wu.', 'You have been unenrolled from the subject \'Test\', instructed by Sung A.  Wu. Class ID: 185.', '2025-03-19 19:17:58', '/capstone/students/student_classes.php?class_id=185', 'read'),
(1827, 202100768, 'unenrollment', 'You have been unenrolled from the class \'Infomation Assurance\' (Class: BSIT-4B) by john A. doe.', 'You have been unenrolled from the subject \'Infomation Assurance\', instructed by john A. doe. Class ID: 183.', '2025-03-19 21:09:04', '/capstone/students/student_classes.php?class_id=183', 'unread'),
(1829, 202102097, 'semester', 'Semester Ending Soon: 1st semester', 'The semester \'1st semester\' is ending soon. Submit all required work before March 22, 2025!', '2025-03-19 22:29:37', '/students/student_dashboard.php', 'read'),
(1830, 202100572, 'semester', 'Semester Ending Soon: 1st semester', 'The semester \'1st semester\' is ending soon. Submit all required work before March 22, 2025!', '2025-03-19 22:29:37', '/students/student_dashboard.php', 'unread'),
(1831, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:31:40', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'read'),
(1833, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:31:40', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1834, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:33:06', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=182', 'read'),
(1836, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:35:31', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'read'),
(1838, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:35:31', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1839, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:35:37', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'read'),
(1841, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:35:37', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1842, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:35:41', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'read'),
(1844, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:35:41', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1845, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:35:46', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'read'),
(1847, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:35:46', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1848, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:35:51', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'read'),
(1850, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 08:35:51', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1851, 202100572, 'attendance_warning', 'Attendance Warning', 'You have 6 absences in class (ID: 183). Further absences may affect your grade.', '2025-03-20 08:47:49', '/student/attendance.php', 'unread'),
(1854, 202102097, 'enrollment', 'You have been enrolled in the class \'Capstone Project and Research\' (Class: BSIT-4B) by Jason A. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Capstone Project and Research\', instructed by Jason A. Catadman. Class ID: 186.', '2025-03-20 11:30:24', '/capstone/students/student_classes.php?class_id=186', 'read'),
(1855, 202102097, 'assessment', 'New Assessment Added: midterm at subject: Capstone Project and Research', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Capstone Project and Research\', due on: 11:59PM.', '2025-03-20 11:37:41', '/students/student_classes.php?class_id=186', 'read'),
(1856, 202102097, 'assessment', 'New Assessment Added: finals at subject: Capstone Project and Research', 'A new assessment titled \'\' of type: \'Major Exams\' has been added to your class for the subject: \'Capstone Project and Research\', due on: 11:59PM.', '2025-03-20 11:38:13', '/students/student_classes.php?class_id=186', 'read'),
(1857, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 90. Status: Graded.', '2025-03-20 11:45:36', 'view_activity.php?submission_id=2249', 'read'),
(1858, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 11:51:08', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=182', 'read'),
(1860, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 11:52:17', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1862, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 11:52:17', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1863, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 11:52:23', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1865, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 11:52:23', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1866, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 11:52:28', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1868, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 11:52:28', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1869, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 11:53:33', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1871, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 11:53:33', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1874, 202102097, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 12:00:02', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1875, 202100572, 'class', 'Class Attendance Added for Subject: Infomation Assurance!', 'There is an added attendance for subject: Infomation Assurance Please monitor it regularly!', '2025-03-20 12:00:02', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=183', 'unread'),
(1878, 202102097, 'semester', 'Semester Has Ended: 1st semester', 'The semester \"1st semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-20 12:10:53', '/students/student_dashboard.php', 'unread'),
(1880, 202102097, 'semester', 'Semester Has Ended: 1st semester', 'The semester \"1st semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-20 12:10:53', '/students/student_dashboard.php', 'unread'),
(1881, 202102097, 'semester', 'Semester Has Ended: 1st semester', 'The semester \"1st semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-20 12:10:53', '/students/student_dashboard.php', 'unread'),
(1882, 202102097, 'semester', 'Semester Has Ended: 1st semester', 'The semester \"1st semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-20 12:10:53', '/students/student_dashboard.php', 'unread'),
(1884, 202100572, 'semester', 'Semester Has Ended: 1st semester', 'The semester \"1st semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-20 12:10:53', '/students/student_dashboard.php', 'unread'),
(1885, 202102097, 'semester', 'Semester Has Ended: 1st semester', 'The semester \"1st semester\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-20 12:10:53', '/students/student_dashboard.php', 'unread'),
(1887, 202102097, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 16:27:22', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1888, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-23 10:58:17', 'view_activity.php?submission_id=2259', 'unread'),
(1889, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-23 10:58:26', 'view_activity.php?submission_id=2259', 'unread'),
(1890, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 12. Status: Graded.', '2025-03-23 10:58:28', 'view_activity.php?submission_id=2259', 'unread'),
(1891, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 12. Status: Graded.', '2025-03-23 10:58:38', 'view_activity.php?submission_id=2256', 'unread'),
(1892, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 23. Status: Graded.', '2025-03-23 10:58:39', 'view_activity.php?submission_id=2257', 'unread'),
(1893, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-23 10:58:40', 'view_activity.php?submission_id=2258', 'unread'),
(1894, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 12. Status: Graded.', '2025-03-23 10:59:18', 'view_activity.php?submission_id=2257', 'unread'),
(1895, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 13. Status: Graded.', '2025-03-23 10:59:20', 'view_activity.php?submission_id=2256', 'unread'),
(1896, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 14. Status: Graded.', '2025-03-23 10:59:21', 'view_activity.php?submission_id=2258', 'unread'),
(1897, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-23 10:59:23', 'view_activity.php?submission_id=2259', 'unread'),
(1898, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 14. Status: Graded.', '2025-03-23 10:59:33', 'view_activity.php?submission_id=2256', 'unread'),
(1899, 202102097, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 5. Status: Graded.', '2025-03-23 10:59:37', 'view_activity.php?submission_id=2257', 'unread'),
(1900, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:08:35', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1901, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-23 14:25:35', 'view_activity.php?submission_id=2260', 'unread'),
(1902, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-23 14:25:40', 'view_activity.php?submission_id=2261', 'unread'),
(1903, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-23 14:25:41', 'view_activity.php?submission_id=2262', 'unread'),
(1904, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-23 14:25:42', 'view_activity.php?submission_id=2263', 'unread'),
(1905, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 0. Status: Graded.', '2025-03-23 14:25:47', 'view_activity.php?submission_id=2260', 'unread'),
(1906, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 0. Status: Graded.', '2025-03-23 14:25:48', 'view_activity.php?submission_id=2261', 'unread'),
(1907, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 0. Status: Graded.', '2025-03-23 14:25:49', 'view_activity.php?submission_id=2262', 'unread'),
(1908, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 0. Status: Graded.', '2025-03-23 14:25:50', 'view_activity.php?submission_id=2263', 'unread'),
(1909, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:28:16', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1910, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:28:28', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1911, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 1. Status: Graded.', '2025-03-23 14:29:06', 'view_activity.php?submission_id=2264', 'unread'),
(1912, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 4. Status: Graded.', '2025-03-23 14:29:07', 'view_activity.php?submission_id=2265', 'unread'),
(1913, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 5. Status: Graded.', '2025-03-23 14:29:08', 'view_activity.php?submission_id=2266', 'unread'),
(1914, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 2. Status: Graded.', '2025-03-23 14:29:10', 'view_activity.php?submission_id=2267', 'unread'),
(1915, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 0. Status: Graded.', '2025-03-23 14:29:34', 'view_activity.php?submission_id=2267', 'unread'),
(1916, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 0. Status: Graded.', '2025-03-23 14:29:36', 'view_activity.php?submission_id=2266', 'unread'),
(1917, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 12. Status: Graded.', '2025-03-23 14:29:37', 'view_activity.php?submission_id=2265', 'unread');
INSERT INTO `student_notifications` (`id`, `user_id`, `type`, `title`, `description`, `date`, `link`, `status`) VALUES
(1918, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-23 14:29:40', 'view_activity.php?submission_id=2266', 'unread'),
(1919, 202102097, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:30:48', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1920, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:30:49', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1921, 202102097, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:30:52', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1922, 202102097, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:44:08', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1923, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:44:11', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1924, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:44:46', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1925, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:44:49', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1926, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:47:50', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1927, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:47:54', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1928, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:48:24', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1929, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:48:27', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1930, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 1. Status: Graded.', '2025-03-23 14:49:21', 'view_activity.php?submission_id=2284', 'unread'),
(1931, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 12. Status: Graded.', '2025-03-23 14:49:23', 'view_activity.php?submission_id=2284', 'unread'),
(1932, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 13. Status: Graded.', '2025-03-23 14:49:24', 'view_activity.php?submission_id=2285', 'unread'),
(1933, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 14. Status: Graded.', '2025-03-23 14:49:25', 'view_activity.php?submission_id=2286', 'unread'),
(1934, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-23 14:49:26', 'view_activity.php?submission_id=2287', 'unread'),
(1935, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:57:20', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1936, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-23 21:57:24', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1937, 202103084, 'class', 'Class details changed for BSIT-4A', 'The current teacher for BSIT-4A has been changed to: Sung A.  Wu', '2025-03-23 15:31:17', '/student/student_dashboard.php', 'unread'),
(1938, 202103084, 'class', 'Class details changed for BSIT-4A', 'The current teacher for BSIT-4A has been changed to: john A. doe', '2025-03-24 02:19:39', '/student/student_dashboard.php', 'unread'),
(1939, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 09:22:36', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1940, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 09:22:49', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1941, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-24 09:22:52', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1942, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 09:22:57', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1943, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-24 09:23:02', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1944, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 09:24:18', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1945, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-24 09:24:21', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1946, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-24 09:24:25', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1947, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 09:24:44', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1948, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 09:47:06', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1949, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 09:47:10', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1950, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-24 10:05:22', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1951, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 10:05:27', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1952, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 10:05:30', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1953, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-24 10:05:34', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1954, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-24 03:07:07', 'view_activity.php?submission_id=2300', 'unread'),
(1955, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 12. Status: Graded.', '2025-03-24 03:07:08', 'view_activity.php?submission_id=2301', 'unread'),
(1956, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-24 03:07:09', 'view_activity.php?submission_id=2302', 'unread'),
(1957, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-24 03:07:10', 'view_activity.php?submission_id=2303', 'unread'),
(1958, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 10:17:33', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1959, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 10:17:36', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1960, 202103084, 'assessment', 'New Assessment Added: q at subject: SE', 'A new assessment titled \'\' of type: \'quiz\' has been added to your class for the subject: \'SE\', due on: 10:55AM.', '2025-03-24 10:22:45', '/students/student_classes.php?class_id=192', 'unread'),
(1961, 202103084, 'assessment', 'New Assessment Added: q2 at subject: SE', 'A new assessment titled \'\' of type: \'quiz\' has been added to your class for the subject: \'SE\', due on: 10:22AM.', '2025-03-24 10:22:55', '/students/student_classes.php?class_id=192', 'unread'),
(1962, 202103084, 'assessment', 'New Assessment Added: act1 at subject: SE', 'A new assessment titled \'\' of type: \'act\' has been added to your class for the subject: \'SE\', due on: 10:23AM.', '2025-03-24 10:23:12', '/students/student_classes.php?class_id=192', 'unread'),
(1963, 202103084, 'assessment', 'New Assessment Added: q2 at subject: SE', 'A new assessment titled \'\' of type: \'quiz\' has been added to your class for the subject: \'SE\', due on: 10:23AM.', '2025-03-24 10:23:26', '/students/student_classes.php?class_id=192', 'unread'),
(1964, 202103084, 'assessment', 'New Assessment Added: act2 at subject: SE', 'A new assessment titled \'\' of type: \'act\' has been added to your class for the subject: \'SE\', due on: 10:23AM.', '2025-03-24 10:23:39', '/students/student_classes.php?class_id=192', 'unread'),
(1965, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 1. Status: Graded.', '2025-03-24 03:24:23', 'view_activity.php?submission_id=2304', 'unread'),
(1966, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 2. Status: Graded.', '2025-03-24 03:24:24', 'view_activity.php?submission_id=2306', 'unread'),
(1967, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-24 03:24:25', 'view_activity.php?submission_id=2307', 'unread'),
(1968, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-24 03:24:26', 'view_activity.php?submission_id=2308', 'unread'),
(1969, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-24 03:25:21', 'view_activity.php?submission_id=2304', 'unread'),
(1970, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 0. Status: Graded.', '2025-03-24 03:25:23', 'view_activity.php?submission_id=2306', 'unread'),
(1971, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-24 03:25:24', 'view_activity.php?submission_id=2306', 'unread'),
(1972, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 10:26:04', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1973, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-24 10:26:07', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1974, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-24 10:26:10', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1975, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 10:26:14', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1976, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-24 03:27:15', 'view_activity.php?submission_id=2313', 'unread'),
(1977, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 12. Status: Graded.', '2025-03-24 03:27:16', 'view_activity.php?submission_id=2314', 'unread'),
(1978, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 13. Status: Graded.', '2025-03-24 03:27:17', 'view_activity.php?submission_id=2315', 'unread'),
(1979, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-24 03:27:18', 'view_activity.php?submission_id=2316', 'unread'),
(1980, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 12. Status: Graded.', '2025-03-24 03:27:23', 'view_activity.php?submission_id=2309', 'unread'),
(1981, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 15. Status: Graded.', '2025-03-24 03:27:24', 'view_activity.php?submission_id=2310', 'unread'),
(1982, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-24 03:27:25', 'view_activity.php?submission_id=2311', 'unread'),
(1983, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 14. Status: Graded.', '2025-03-24 03:27:26', 'view_activity.php?submission_id=2312', 'unread'),
(1984, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 10:28:01', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1985, 202103084, 'unenrollment', 'You have been unenrolled from the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'You have been unenrolled from the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-24 10:28:03', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1986, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 192.', '2025-03-24 10:28:28', '/capstone/students/student_classes.php?class_id=192', 'unread'),
(1987, 202103084, 'enrollment', 'You have been enrolled in the class \'SE\' (Class: BSIT-4A) by john A. doe.', 'Congratulations! You have been successfully enrolled in the subject \'SE\', instructed by john A. doe. Class ID: 189.', '2025-03-24 10:28:35', '/capstone/students/student_classes.php?class_id=189', 'unread'),
(1988, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-24 03:31:43', 'view_activity.php?submission_id=2317', 'unread'),
(1989, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-24 03:31:44', 'view_activity.php?submission_id=2318', 'unread'),
(1990, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 0. Status: Graded.', '2025-03-24 03:31:45', 'view_activity.php?submission_id=2319', 'unread'),
(1991, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 25. Status: Graded.', '2025-03-24 03:31:46', 'view_activity.php?submission_id=2319', 'unread'),
(1992, 202103084, 'assessment', 'New Assessment Added: q1 at subject: SE', 'A new assessment titled \'\' of type: \'quiz\' has been added to your class for the subject: \'SE\', due on: 10:32AM.', '2025-03-24 10:32:05', '/students/student_classes.php?class_id=192', 'unread'),
(1993, 202103084, 'assessment', 'New Assessment Added: q2 at subject: SE', 'A new assessment titled \'\' of type: \'quiz\' has been added to your class for the subject: \'SE\', due on: 10:32AM.', '2025-03-24 10:32:18', '/students/student_classes.php?class_id=192', 'unread'),
(1994, 202103084, 'assessment', 'New Assessment Added: act at subject: SE', 'A new assessment titled \'\' of type: \'act\' has been added to your class for the subject: \'SE\', due on: 01:25PM.', '2025-03-24 10:32:32', '/students/student_classes.php?class_id=192', 'unread'),
(1995, 202103084, 'assessment', 'New Assessment Added: act 2 at subject: SE', 'A new assessment titled \'\' of type: \'act\' has been added to your class for the subject: \'SE\', due on: 10:32AM.', '2025-03-24 10:32:43', '/students/student_classes.php?class_id=192', 'unread'),
(1996, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 24. Status: Graded.', '2025-03-24 03:33:55', 'view_activity.php?submission_id=2319', 'unread'),
(1997, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 23. Status: Graded.', '2025-03-24 03:33:58', 'view_activity.php?submission_id=2319', 'unread'),
(1998, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-24 03:34:10', 'view_activity.php?submission_id=2320', 'unread'),
(1999, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-24 03:34:41', 'view_activity.php?submission_id=2321', 'unread'),
(2000, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-24 03:34:42', 'view_activity.php?submission_id=2322', 'unread'),
(2001, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-24 03:34:43', 'view_activity.php?submission_id=2323', 'unread'),
(2002, 202103084, 'Grade Update', 'Your Activity Submission has been Graded', 'Your activity submission has been graded. Score: 22. Status: Graded.', '2025-03-24 03:34:44', 'view_activity.php?submission_id=2324', 'unread'),
(2003, 202103084, 'assessment', 'New Assessment Added: q1 at subject: SE', 'A new assessment titled \'\' of type: \'quiz\' has been added to your class for the subject: \'SE\', due on: 10:37AM.', '2025-03-24 10:37:59', '/students/student_classes.php?class_id=192', 'unread'),
(2004, 202103084, 'assessment', 'New Assessment Added: act at subject: SE', 'A new assessment titled \'\' of type: \'act\' has been added to your class for the subject: \'SE\', due on: 10:38AM.', '2025-03-24 10:38:09', '/students/student_classes.php?class_id=192', 'unread'),
(2005, 202103084, 'assessment', 'New Assessment Added: q2 at subject: SE', 'A new assessment titled \'\' of type: \'quiz\' has been added to your class for the subject: \'SE\', due on: 10:38AM.', '2025-03-24 10:38:20', '/students/student_classes.php?class_id=192', 'unread'),
(2006, 202103084, 'assessment', 'New Assessment Added: q2 at subject: SE', 'A new assessment titled \'\' of type: \'quiz\' has been added to your class for the subject: \'SE\', due on: 10:38AM.', '2025-03-24 10:38:43', '/students/student_classes.php?class_id=192', 'unread'),
(2007, 202103084, 'assessment', 'New Assessment Added: act2 at subject: SE', 'A new assessment titled \'\' of type: \'act\' has been added to your class for the subject: \'SE\', due on: 10:38AM.', '2025-03-24 10:38:59', '/students/student_classes.php?class_id=192', 'unread'),
(2008, 202103084, 'assessment', 'New Assessment Added: act2 at subject: SE', 'A new assessment titled \'\' of type: \'act\' has been added to your class for the subject: \'SE\', due on: 10:39AM.', '2025-03-24 10:39:13', '/students/student_classes.php?class_id=192', 'unread'),
(2009, 202103084, 'assessment', 'New Assessment Added: test at subject: SE', 'A new assessment titled \'\' of type: \'quizzer\' has been added to your class for the subject: \'SE\', due on: 11:23AM.', '2025-03-24 11:24:00', '/students/student_classes.php?class_id=192', 'unread'),
(2010, 202103084, 'assessment', 'New Assessment Added: Q1 at subject: SE', 'A new assessment titled \'\' of type: \'Quiz\' has been added to your class for the subject: \'SE\', due on: 11:57AM.', '2025-03-24 11:57:26', '/students/student_classes.php?class_id=192', 'unread'),
(2011, 202103084, 'assessment', 'New Assessment Added: P1 at subject: SE', 'A new assessment titled \'\' of type: \'Projects\' has been added to your class for the subject: \'SE\', due on: 11:57AM.', '2025-03-24 11:57:39', '/students/student_classes.php?class_id=192', 'unread'),
(2012, 202103084, 'assessment', 'New Assessment Added: q1 at subject: SE', 'A new assessment titled \'\' of type: \'Quiz\' has been added to your class for the subject: \'SE\', due on: 12:01PM.', '2025-03-24 12:01:55', '/students/student_classes.php?class_id=192', 'unread'),
(2013, 202103084, 'assessment', 'New Assessment Added: p1 at subject: SE', 'A new assessment titled \'\' of type: \'Projects\' has been added to your class for the subject: \'SE\', due on: 12:02PM.', '2025-03-24 12:02:08', '/students/student_classes.php?class_id=192', 'unread'),
(2014, 202103084, 'assessment', 'New Assessment Added: q1 at subject: SE', 'A new assessment titled \'\' of type: \'q1\' has been added to your class for the subject: \'SE\', due on: 12:02PM.', '2025-03-24 12:02:39', '/students/student_classes.php?class_id=192', 'unread'),
(2015, 202103084, 'assessment', 'New Assessment Added: QUIZ1 at subject: SE', 'A new assessment titled \'\' of type: \'Quiz\' has been added to your class for the subject: \'SE\', due on: 12:03PM.', '2025-03-24 12:03:40', '/students/student_classes.php?class_id=192', 'unread'),
(2016, 202103084, 'assessment', 'New Assessment Added: QUIZ2 at subject: SE', 'A new assessment titled \'\' of type: \'Quiz\' has been added to your class for the subject: \'SE\', due on: 12:03PM.', '2025-03-24 12:03:50', '/students/student_classes.php?class_id=192', 'unread'),
(2017, 202103084, 'assessment', 'New Assessment Added: ACT1 at subject: SE', 'A new assessment titled \'\' of type: \'Activities\' has been added to your class for the subject: \'SE\', due on: 12:04PM.', '2025-03-24 12:04:03', '/students/student_classes.php?class_id=192', 'unread'),
(2018, 202103084, 'assessment', 'New Assessment Added: ACT2 at subject: SE', 'A new assessment titled \'\' of type: \'Activities\' has been added to your class for the subject: \'SE\', due on: 12:04PM.', '2025-03-24 12:04:16', '/students/student_classes.php?class_id=192', 'unread'),
(2019, 202103084, 'assessment', 'New Assessment Added: Q1 at subject: SE', 'A new assessment titled \'\' of type: \'Quiz\' has been added to your class for the subject: \'SE\', due on: 12:04PM.', '2025-03-24 12:04:42', '/students/student_classes.php?class_id=189', 'unread'),
(2020, 202103084, 'assessment', 'New Assessment Added: T1 at subject: SE', 'A new assessment titled \'\' of type: \'Test\' has been added to your class for the subject: \'SE\', due on: 12:04PM.', '2025-03-24 12:04:53', '/students/student_classes.php?class_id=189', 'unread'),
(2021, 202103084, 'assessment', 'New Assessment Added: Q2 at subject: SE', 'A new assessment titled \'\' of type: \'Quiz\' has been added to your class for the subject: \'SE\', due on: 12:05PM.', '2025-03-24 12:05:10', '/students/student_classes.php?class_id=189', 'unread'),
(2022, 202103084, 'assessment', 'New Assessment Added: T2 at subject: SE', 'A new assessment titled \'\' of type: \'Test\' has been added to your class for the subject: \'SE\', due on: 12:05PM.', '2025-03-24 12:05:22', '/students/student_classes.php?class_id=189', 'unread');

-- --------------------------------------------------------

--
-- Table structure for table `student_pictures`
--

CREATE TABLE `student_pictures` (
  `id` int(11) NOT NULL,
  `user_id` text NOT NULL,
  `picture` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `student_pictures`
--

INSERT INTO `student_pictures` (`id`, `user_id`, `picture`) VALUES
(16, '202102097', 'student_67d9936815f70_edit pa.png'),
(17, '202103084', 'student_67e15fb0d1d21_Make discomfort your best friend No Watermark.png');

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
(130, 'SAM', 'Lecture', 'SAM101', '1st semester', '2025-03-18 18:01:07', 1, 'BSIT', '4B'),
(131, 'SAM', 'Laboratory', 'SAM101', '1st semester', '2025-03-18 18:01:34', 1, 'BSIT', '4B'),
(132, 'Infomation Assurance', 'Lecture', 'InfoAssurance', '1st semester', '2025-03-18 23:08:41', 1, 'BSIT', '4B'),
(133, 'Infomation Assurance', 'Laboratory', 'InfoAssurance', '1st semester', '2025-03-18 23:24:50', 1, 'BSIT', '4B'),
(138, 'Capstone Project and Research', 'Lecture', 'IT 141', '1st semester', '2025-03-20 11:22:32', 1, 'BSIT', '4B'),
(139, 'Capstone Project and Research', 'Laboratory', 'IT 141', '1st semester', '2025-03-20 11:23:08', 1, 'BSIT', '4B'),
(141, 'SE', 'Lecture', 'IT 150', '2nd Semester', '2025-03-23 16:08:10', 0, 'BSIT', '1A'),
(144, 'hahaha', 'Lecture', '123', '2nd Semester', '2025-03-23 22:08:56', 0, 'BSIT', '1A'),
(145, 'Software EngineeringASD', 'Lecture', 'ASD', '2nd Semester', '2025-03-23 22:25:26', 0, 'BSIT', '1A');

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
(164, 130, 'Monday', '08:00', '10:00', '2025-03-18 10:01:07', '2025-03-18 10:01:07'),
(165, 130, 'Tuesday', '08:00', '10:00', '2025-03-18 10:01:07', '2025-03-18 10:01:07'),
(166, 130, 'Wednesday', '08:00', '10:00', '2025-03-18 10:01:07', '2025-03-18 10:01:07'),
(167, 130, 'Friday', '08:00', '10:00', '2025-03-18 10:01:07', '2025-03-18 10:01:07'),
(168, 131, 'Wednesday', '11:00', '13:00', '2025-03-18 10:01:34', '2025-03-18 10:01:34'),
(169, 131, 'Thursday', '11:00', '13:00', '2025-03-18 10:01:34', '2025-03-18 10:01:34'),
(170, 131, 'Friday', '11:00', '13:00', '2025-03-18 10:01:34', '2025-03-18 10:01:34'),
(171, 132, 'Monday', '23:10', '12:00', '2025-03-18 15:08:41', '2025-03-18 15:08:41'),
(172, 132, 'Tuesday', '23:10', '12:00', '2025-03-18 15:08:41', '2025-03-18 15:08:41'),
(173, 132, 'Wednesday', '23:10', '12:00', '2025-03-18 15:08:41', '2025-03-18 15:08:41'),
(174, 133, 'Wednesday', '13:00', '01:30', '2025-03-18 15:24:50', '2025-03-18 15:24:50'),
(175, 133, 'Thursday', '13:00', '01:30', '2025-03-18 15:24:50', '2025-03-18 15:24:50'),
(176, 133, 'Friday', '13:00', '01:30', '2025-03-18 15:24:50', '2025-03-18 15:24:50'),
(185, 138, 'Thursday', '04:00', '06:00', '2025-03-20 03:22:32', '2025-03-20 03:22:32'),
(186, 138, 'Friday', '04:00', '06:00', '2025-03-20 03:22:32', '2025-03-20 03:22:32'),
(187, 139, 'Thursday', '18:00', '20:00', '2025-03-20 03:23:08', '2025-03-20 03:23:08'),
(188, 139, 'Friday', '18:00', '20:00', '2025-03-20 03:23:08', '2025-03-20 03:23:08'),
(190, 141, 'Monday', '08:00', '10:00', '2025-03-23 08:08:10', '2025-03-23 08:08:10'),
(193, 144, 'Monday', '17:55', '18:06', '2025-03-23 14:08:56', '2025-03-23 14:08:56'),
(196, 145, 'Tuesday', '17:00', '19:00', '2025-03-23 14:29:17', '2025-03-23 14:29:17');

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

--
-- Dumping data for table `teacher_notes`
--

INSERT INTO `teacher_notes` (`id`, `teacher_name`, `note_title`, `note_content`, `created_at`, `updated_at`) VALUES
(20, 'Sung A.  Wu', 'Hello', 'Hello', '2025-03-19 11:16:10', '2025-03-19 11:16:10');

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
-- Dumping data for table `teacher_reminders`
--

INSERT INTO `teacher_reminders` (`id`, `teacher_name`, `reminder_content`, `reminder_date`, `created_at`) VALUES
(20, 'Sung A.  Wu', 'REminder', '2025-03-19', '2025-03-19 11:16:17');

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=469;

--
-- AUTO_INCREMENT for table `activity_attachments`
--
ALTER TABLE `activity_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `activity_submissions`
--
ALTER TABLE `activity_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2345;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT for table `admin_notes`
--
ALTER TABLE `admin_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=130;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=262;

--
-- AUTO_INCREMENT for table `admin_reminders`
--
ALTER TABLE `admin_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `archived_semesters`
--
ALTER TABLE `archived_semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=472;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=193;

--
-- AUTO_INCREMENT for table `classes_meetings`
--
ALTER TABLE `classes_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=240;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=119;

--
-- AUTO_INCREMENT for table `laboratory_rubrics`
--
ALTER TABLE `laboratory_rubrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `learning_resources`
--
ALTER TABLE `learning_resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

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
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1741885023271;

--
-- AUTO_INCREMENT for table `rubrics`
--
ALTER TABLE `rubrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=200;

--
-- AUTO_INCREMENT for table `rubric_requirements`
--
ALTER TABLE `rubric_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=107;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=63;

--
-- AUTO_INCREMENT for table `specific_rubrics`
--
ALTER TABLE `specific_rubrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_accounts`
--
ALTER TABLE `staff_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=103;

--
-- AUTO_INCREMENT for table `staff_advising`
--
ALTER TABLE `staff_advising`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `staff_notifications`
--
ALTER TABLE `staff_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=348;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202103085;

--
-- AUTO_INCREMENT for table `students_enrollments`
--
ALTER TABLE `students_enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=303;

--
-- AUTO_INCREMENT for table `student_grades`
--
ALTER TABLE `student_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=672;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `student_notifications`
--
ALTER TABLE `student_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2023;

--
-- AUTO_INCREMENT for table `student_pictures`
--
ALTER TABLE `student_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=146;

--
-- AUTO_INCREMENT for table `subjects_meetings`
--
ALTER TABLE `subjects_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subjects_schedules`
--
ALTER TABLE `subjects_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=197;

--
-- AUTO_INCREMENT for table `teacher_notes`
--
ALTER TABLE `teacher_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `teacher_reminders`
--
ALTER TABLE `teacher_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

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
