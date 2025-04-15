-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 16, 2025 at 05:50 PM
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
(285, '1', 'Exams', '1', '2025-03-14', '11:46AM', 1, 10, 153, 108, '2025-03-13 20:46:49', '2025-03-13 20:46:49', 'midterm'),
(286, '2', 'Exams', 'test', '2025-03-14', '11:46AM', 1, 10, 153, 108, '2025-03-13 20:47:03', '2025-03-13 20:47:03', 'final'),
(287, 'proj1', 'Projects/Attendance', 'p', '2025-03-14', '11:47AM', 1, 10, 153, 108, '2025-03-13 20:47:22', '2025-03-13 20:47:22', 'midterm'),
(288, 'att', 'Projects/Attendance', 'att final', '2025-03-14', '11:47AM', 1, 10, 153, 108, '2025-03-13 20:47:41', '2025-03-13 20:47:41', 'final'),
(289, 'q1', 'Quizzes', 'q1', '2025-03-14', '11:50AM', 1, 10, 154, 108, '2025-03-13 20:51:37', '2025-03-13 20:51:37', 'midterm'),
(290, 'q2', 'Quizzes', 'a2', '2025-03-14', '11:51AM', 1, 10, 154, 108, '2025-03-13 20:51:55', '2025-03-13 20:51:55', 'final'),
(291, 'att', 'Projects/Attendance', 'wow', '2025-03-14', '11:52AM', 1, 10, 154, 108, '2025-03-13 20:52:09', '2025-03-13 20:52:09', 'midterm'),
(292, 'pa2', 'Projects/Attendance', 'pa', '2025-03-14', '11:52AM', 1, 10, 154, 108, '2025-03-13 20:52:25', '2025-03-13 20:52:25', 'final');

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
(104, 285, 'a1bf6bcd-12ea-4769-941d-5e0153f48d9a (1).jfif', '67d3a6a913505-a1bf6bcd-12ea-4769-941d-5e0153f48d9a (1).jfif', '2025-03-14 04:46:49');

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
(1935, 289, 202001524, NULL, 5, NULL, 'pending', NULL, NULL),
(1936, 290, 202001524, NULL, 5, NULL, 'pending', NULL, NULL),
(1937, 291, 202001524, NULL, 5, NULL, 'pending', NULL, NULL),
(1938, 292, 202001524, NULL, 5, NULL, 'pending', NULL, NULL),
(1943, 285, 202001524, NULL, 5, NULL, 'pending', NULL, NULL),
(1944, 286, 202001524, NULL, 5, NULL, 'pending', NULL, NULL),
(1945, 287, 202001524, NULL, 5, NULL, 'pending', NULL, NULL),
(1946, 288, 202001524, NULL, 5, NULL, 'pending', NULL, NULL);

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
-- Table structure for table `admin_auto_notifications`
--

CREATE TABLE `admin_auto_notifications` (
  `id` int(11) NOT NULL,
  `name` text NOT NULL,
  `status` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `admin_auto_notifications`
--

INSERT INTO `admin_auto_notifications` (`id`, `name`, `status`) VALUES
(1, 'semester_transition', 'true'),
(2, 'semester_ending_notice', 'true'),
(3, 'semester_near_ending', 'true');

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
(195, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: Ahmad Pandaog Aquino', '2025-03-14 11:38:06', '/capstone/admin/class_management.php', 'read'),
(196, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: Ahmad Pandaog Aquino', '2025-03-14 11:40:31', '/capstone/admin/class_management.php', 'read'),
(197, 'student', 'New Student Account Registration', 'A new student has registered to the system by the name of: Ahmad Pandaog Aquino', '2025-03-14 11:41:53', '/capstone/admin/class_management.php', 'read'),
(198, 'semester', 'Semester Has Ended: test sem', 'The semester \"test sem\" has ended.', '2025-03-16 02:12:00', '/capstone/admin/semester_management.php', 'read');

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
(27, 54, 'Semester end reached', '2025-03-16 01:12:00');

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
(258, 202001524, 153, 125, 'present', '2025-03-14 05:03:13', '2025-03-14', NULL);

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
(153, 'BSIT-1A', 'Lecture', 'Software Engineering', 108, 'IT 140', 'Jason U. Catadman', 'test sem', 1, 'test', 'HVGDZO', NULL, 'archived', NULL, '2025-03-14 11:36:17', 0, 'not_available'),
(154, 'BSIT-1A', 'Laboratory', 'Software Engineering', 108, 'IT 140', 'Ceed Jenzelle U. Lorenzo', 'test sem', 1, 'test', 'P7UL90', NULL, 'archived', NULL, '2025-03-14 11:36:25', 0, 'not_available');

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
(125, '2025-03-14', 153, 'Finished', '9:00 PM', '10:00 PM', 'on', 'Regular');

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
(1741885023018, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 01:12:17', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023019, 90, 'staff', 11, 'admin', 'hey', '2025-03-16 01:12:36', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023020, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 01:12:38', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023021, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 01:37:13', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023022, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 01:37:14', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023023, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 01:37:57', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023024, 11, 'admin', 90, 'staff', 'xD', '2025-03-16 01:38:00', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023025, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 01:42:20', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023026, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 01:42:26', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023027, 11, 'admin', 90, 'staff', 'heyy', '2025-03-16 01:42:32', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023028, 11, 'admin', 90, 'staff', 'xD', '2025-03-16 01:42:33', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023029, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 01:42:39', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023030, 11, 'admin', 90, 'staff', 'xD', '2025-03-16 01:42:40', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023031, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 01:43:37', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023032, 11, 'admin', 90, 'staff', 'xD', '2025-03-16 01:43:39', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023037, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 01:46:41', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023038, 11, 'admin', 90, 'staff', 'xD', '2025-03-16 01:46:42', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023039, 11, 'admin', 90, 'staff', 'gey', '2025-03-16 02:02:19', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023040, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 02:02:20', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023041, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 02:02:54', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023042, 11, 'admin', 90, 'staff', 'xD', '2025-03-16 02:02:55', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023043, 11, 'admin', 90, 'staff', 'HEYYYYYYYYYYYYYYYYYY', '2025-03-16 02:02:57', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023044, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 02:21:33', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023057, 11, 'admin', 90, 'staff', 'test', '2025-03-16 15:16:21', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023058, 11, 'admin', 90, 'staff', 'zxc', '2025-03-16 15:16:22', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023059, 11, 'admin', 90, 'staff', 'asd', '2025-03-16 15:16:23', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023060, 11, 'admin', 90, 'staff', 'test', '2025-03-16 15:18:09', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023061, 11, 'admin', 90, 'staff', 'asd', '2025-03-16 15:18:10', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023062, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 15:18:11', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023063, 11, 'admin', 90, 'staff', 'ah', '2025-03-16 15:18:12', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023064, 11, 'admin', 90, 'staff', 'ahahah', '2025-03-16 15:18:13', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023066, 11, 'admin', 90, 'staff', 'heyasdasd', '2025-03-16 15:20:25', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023067, 11, 'admin', 202001524, 'student', 'hey', '2025-03-16 15:21:22', 'Dean WMSU CCS', 'Ahmad Pandaog Aquino', 'read'),
(1741885023068, 11, 'admin', 202001524, 'student', 'xD', '2025-03-16 15:21:24', 'Dean WMSU CCS', 'Ahmad Pandaog Aquino', 'read'),
(1741885023069, 11, 'admin', 202001524, 'student', 'asdasd', '2025-03-16 15:21:26', 'Dean WMSU CCS', 'Ahmad Pandaog Aquino', 'read'),
(1741885023070, 11, 'admin', 202001524, 'student', 'heyyyyyy', '2025-03-16 15:21:27', 'Dean WMSU CCS', 'Ahmad Pandaog Aquino', 'read'),
(1741885023071, 90, 'staff', 11, 'admin', 'hey', '2025-03-16 15:24:03', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023072, 90, 'staff', 11, 'admin', 'HAHAHA', '2025-03-16 15:24:06', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023073, 11, 'admin', 90, 'staff', 'hye', '2025-03-16 15:24:13', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023074, 11, 'admin', 90, 'staff', 'sup', '2025-03-16 15:24:14', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023075, 90, 'staff', 11, 'admin', 'asd', '2025-03-16 15:24:16', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023076, 90, 'staff', 11, 'admin', 'xD', '2025-03-16 15:24:17', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023077, 11, 'admin', 90, 'staff', 'lol', '2025-03-16 15:24:20', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023080, 202001524, 'student', 11, 'admin', 'hey', '2025-03-16 15:25:38', 'Ahmad Pandaog Aquino', 'Dean WMSU CCS', 'read'),
(1741885023081, 202001524, 'student', 11, 'admin', 'hey', '2025-03-16 15:26:20', 'Ahmad Pandaog Aquino', 'Dean WMSU CCS', 'read'),
(1741885023082, 11, 'admin', 202001524, 'student', 'hey', '2025-03-16 15:26:36', 'Dean WMSU CCS', 'Ahmad Pandaog Aquino', 'read'),
(1741885023085, 11, 'admin', 202001524, 'student', 'qweqweqwe', '2025-03-16 15:57:35', 'Dean WMSU CCS', 'Ahmad Pandaog Aquino', 'read'),
(1741885023086, 11, 'admin', 202001524, 'student', 'hey', '2025-03-16 15:57:48', 'Dean WMSU CCS', 'Ahmad Pandaog Aquino', 'read'),
(1741885023093, 90, 'staff', 11, 'admin', 'asd', '2025-03-16 16:01:03', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023097, 90, 'staff', 11, 'admin', 'hey', '2025-03-16 16:01:50', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023100, 90, 'staff', 11, 'admin', 'hey', '2025-03-16 16:03:05', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023101, 90, 'staff', 11, 'admin', 'whats up', '2025-03-16 16:03:09', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023105, 90, 'staff', 11, 'admin', 'heyy', '2025-03-16 16:07:06', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023107, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 16:07:11', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023122, 90, 'staff', 11, 'admin', 'hey', '2025-03-16 16:10:43', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023123, 90, 'staff', 11, 'admin', 'xX', '2025-03-16 16:10:45', 'Jason U. Catadman', 'Dean WMSU CCS', 'read'),
(1741885023125, 11, 'admin', 90, 'staff', 'hey', '2025-03-16 16:11:27', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023137, 11, 'admin', 202001524, 'student', 'hey', '2025-03-16 16:17:46', 'Dean WMSU CCS', 'Ahmad Pandaog Aquino', 'read'),
(1741885023138, 11, 'admin', 202001524, 'student', 'heyy', '2025-03-16 16:48:29', 'Dean WMSU CCS', 'Ahmad Pandaog Aquino', 'unread'),
(1741885023140, 11, 'admin', 202001524, 'student', 'hey', '2025-03-16 16:48:56', 'Dean WMSU CCS', 'Ahmad Pandaog Aquino', 'unread'),
(1741885023141, 11, 'admin', 90, 'staff', 'HEY', '2025-03-16 16:48:59', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023143, 11, 'admin', 90, 'staff', 'HEYYYYYYYYYYYYY', '2025-03-16 16:49:22', 'Dean WMSU CCS', 'Jason U. Catadman', 'read'),
(1741885023144, 11, 'admin', 90, 'staff', 'TESTER', '2025-03-16 16:49:23', 'Dean WMSU CCS', 'Jason U. Catadman', 'read');

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
(97, 153, 108, 'Exams', 50, '2025-03-14 03:46:10', '2025-03-14 04:30:50'),
(98, 153, 108, 'Projects/Attendance', 50, '2025-03-14 03:46:19', '2025-03-14 04:30:52'),
(99, 154, 108, 'Quizzes', 50, '2025-03-14 03:51:08', '2025-03-14 04:07:51'),
(100, 154, 108, 'Projects/Attendance', 50, '2025-03-14 03:51:15', '2025-03-14 04:07:47');

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
(57, 153, 'Exams', 1, 1),
(58, 153, 'Projects/attendance', 1, 1),
(59, 154, 'Quizzes', 1, 1),
(60, 154, 'Projects/attendance', 1, 1);

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
(54, 'test sem', '2025-03-14', '2025-03-16', '2025', 'tst', 'archived', 1, '2025-03-14 03:35:54', '2025-03-16 01:12:00');

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
(90, 'Jason', 'jasoncatadman@wmsu.com', '$2y$10$lRp/2tCG0I/A.WCav7oMFuzA3oVBTVFD0TkOeLX3TFU.EySxlDD1a', 'Department of Information Technology', '2025-03-06', '+639536640199', 'Male', '2025-03-06 21:02:22', 'Staff', 'Active', NULL, 'U.', 'Catadman', 'Jason U. Catadman'),
(91, 'Ceed Jenzelle', 'ceedlorenzo@wmsu.com', '$2y$10$b4n868grCZoXxk1TBHK8VuHZrUDclnfaMbK.ZJVcHGL4dKgIOJIK2', 'Department of Information Technology', '2025-03-06', '+639536640199', 'Male', '2025-03-06 21:04:24', 'Staff', 'Active', NULL, 'U.', 'Lorenzo', 'Ceed Jenzelle U. Lorenzo');

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
(118, 'Jason U. Catadman', 'BSIT-1A'),
(119, 'Jason U. Catadman', 'BSIT-1B'),
(120, 'Ceed Jenzelle U. Lorenzo', 'BSIT-2A'),
(121, 'Ceed Jenzelle U. Lorenzo', 'BSIT-2B');

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
(216, 90, 'class', 'You have been assigned as a teacher for BSIT-1A to be taught under subject of: Software Engineering!', 'You have been assigned as the teacher for BSIT-1A, under the subject of Software Engineering. Please review the class details and prepare for its integration.', '2025-03-14 04:36:17', '/capstone/staff/class_management.php', 'read'),
(217, 91, 'class', 'You have been assigned as a teacher for BSIT-1A to be taught under subject of: Software Engineering!', 'You have been assigned as the teacher for BSIT-1A, under the subject of Software Engineering. Please review the class details and prepare for its integration.', '2025-03-14 04:36:25', '/capstone/staff/class_management.php', 'unread'),
(218, 90, 'semester', 'Semester Has Ended: test sem', 'The semester \"test sem\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-16 02:12:00', '/capstone/staff/class_management.php', 'read'),
(219, 91, 'semester', 'Semester Has Ended: test sem', 'The semester \"test sem\" has ended. Please submit the required documentary requirements to the dean!', '2025-03-16 02:12:00', '/capstone/staff/class_management.php', 'unread');

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
(202001524, 'Ahmad', 202001524, 'Male', 'BSIT', '1st Year', 'xt202001524@wmsu.edu.ph', '$2y$10$b4n868grCZoXxk1TBHK8VuHZrUDclnfaMbK.ZJVcHGL4dKgIOJIK2', 'Student', 'active', '6e8fafbd532f69f8d7360412a262f49fd4340f35fbf100dfe0', NULL, 'Pandaog', 'Aquino', 'Ahmad Pandaog Aquino');

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
(212, 154, 202001524),
(214, 153, 202001524);

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
(581, 154, 202001524, '5.00', '5.00', '5.00', '2025-03-14 04:44:14', ''),
(583, 153, 202001524, '2.00', '2.00', '2.00', '2025-03-14 05:03:38', '');

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
(849, 202001524, 'class', 'Warning: Attendance Problems!', 'Warning for attendance! Please fix your attendance!', '2025-03-14 11:43:12', 'https://localhost/capstone/students/student_classes.php?class_id=154', 'read'),
(850, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 11:43:40', 'https://localhost/capstone/students/student_classes.php?class_id=153', 'read'),
(851, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 11:44:13', 'https://localhost/capstone/students/student_classes.php?class_id=153', 'read'),
(852, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 11:44:57', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(853, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 11:45:40', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(854, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 11:45:45', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(855, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 11:45:48', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(856, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 11:45:53', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(857, 202001524, '', 'New Assessment Added: 1 at subject: Software Engineering', 'A new assessment titled \'\' of type: \'Exams\' has been added to your class for the subject: \'Software Engineering\', due on: 11:46AM.', '2025-03-14 11:46:49', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(858, 202001524, '', 'New Assessment Added: 2 at subject: Software Engineering', 'A new assessment titled \'\' of type: \'Exams\' has been added to your class for the subject: \'Software Engineering\', due on: 11:46AM.', '2025-03-14 11:47:03', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(859, 202001524, '', 'New Assessment Added: proj1 at subject: Software Engineering', 'A new assessment titled \'\' of type: \'Projects/Attendance\' has been added to your class for the subject: \'Software Engineering\', due on: 11:47AM.', '2025-03-14 11:47:22', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(860, 202001524, '', 'New Assessment Added: att at subject: Software Engineering', 'A new assessment titled \'\' of type: \'Projects/Attendance\' has been added to your class for the subject: \'Software Engineering\', due on: 11:47AM.', '2025-03-14 11:47:41', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(861, 202001524, '', 'New Assessment Added: q1 at subject: Software Engineering', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'Software Engineering\', due on: 11:50AM.', '2025-03-14 11:51:37', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(862, 202001524, '', 'New Assessment Added: q2 at subject: Software Engineering', 'A new assessment titled \'\' of type: \'Quizzes\' has been added to your class for the subject: \'Software Engineering\', due on: 11:51AM.', '2025-03-14 11:51:55', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(863, 202001524, '', 'New Assessment Added: att at subject: Software Engineering', 'A new assessment titled \'\' of type: \'Projects/Attendance\' has been added to your class for the subject: \'Software Engineering\', due on: 11:52AM.', '2025-03-14 11:52:09', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(864, 202001524, '', 'New Assessment Added: pa2 at subject: Software Engineering', 'A new assessment titled \'\' of type: \'Projects/Attendance\' has been added to your class for the subject: \'Software Engineering\', due on: 11:52AM.', '2025-03-14 11:52:25', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(865, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 11:53:34', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(866, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 11:53:39', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(867, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 11:54:04', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(868, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 11:54:18', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(869, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 11:54:35', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(870, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 11:55:00', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(871, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:03:26', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(872, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:03:37', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(873, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:03:43', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(874, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:03:46', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(875, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:05:43', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(876, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:05:53', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(877, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:09:34', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(878, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:09:58', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(879, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:12:57', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(880, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:13:12', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(881, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:13:15', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(882, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:13:22', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(883, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:13:34', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(884, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:13:38', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(885, 202001524, '', 'Warning: Please fix your attendance!', 'Warning for attendance! Please fix your attendance!', '2025-03-14 12:19:09', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(886, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:22:03', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(887, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:22:09', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(888, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:22:22', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(889, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:22:26', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(890, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:24:46', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(891, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:25:08', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(892, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:25:22', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(893, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:25:27', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(894, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:26:46', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(895, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:26:51', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(896, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:26:55', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(897, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:27:01', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(898, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:27:18', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(899, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:27:54', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(900, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:28:03', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(901, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:28:05', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(902, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:28:10', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(903, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:28:18', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(904, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:28:22', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(905, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:28:23', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(906, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:28:28', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(907, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:28:38', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(908, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:28:44', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(909, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'You have been  unenrolled from the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:28:48', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(910, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:28:59', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(911, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:29:02', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(912, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Ceed Jenzelle U. Lorenzo.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Ceed Jenzelle U. Lorenzo. Class ID: 154.', '2025-03-14 12:29:12', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=154', 'read'),
(913, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:29:17', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(914, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:30:04', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(915, 202001524, '', 'You have been unenrolled from the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'You have been unenrolled from the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:30:05', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(916, 202001524, 'enrollment', 'You have been enrolled in the class \'Software Engineering\' (Class: BSIT-1A) by Jason U. Catadman.', 'Congratulations! You have been successfully enrolled in the subject \'Software Engineering\', instructed by Jason U. Catadman. Class ID: 153.', '2025-03-14 12:30:09', 'https://ccs-sms.com/capstone/students/student_classes.php?class_id=153', 'read'),
(917, 202001524, 'class', 'Class Attendance Added for Subject: Software Engineering!', 'There is an added attendance for subject: Software Engineering Please monitor it regularly!', '2025-03-14 12:40:40', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=153', 'read'),
(918, 202001524, 'class', 'Class Attendance Added for Subject: Software Engineering!', 'There is an added attendance for subject: Software Engineering Please monitor it regularly!', '2025-03-14 12:42:47', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=154', 'read'),
(919, 202001524, 'class', 'Class Attendance Added for Subject: Software Engineering!', 'There is an added attendance for subject: Software Engineering Please monitor it regularly!', '2025-03-14 13:03:13', 'https://ccs-sms.com/capstone/students/student_dashboard.php?class_id=153', 'read'),
(920, 202001524, 'semester', 'Semester Has Ended: test sem', 'The semester \"test sem\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-16 02:12:00', '/capstone/students/student_dashboard.php', 'read'),
(921, 202001524, 'semester', 'Semester Has Ended: test sem', 'The semester \"test sem\" has ended. Please wait for any official announcements from your college dean or professors!', '2025-03-16 02:12:00', '/capstone/students/student_dashboard.php', 'read');

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
(108, 'Software Engineering', 'Lecture', 'IT 140', '1st Semester', '2025-03-06 21:05:09', 0, 'BSIT', '1A'),
(109, 'Software Engineering', 'Laboratory', 'IT 141', '1st Semester', '2025-03-06 21:10:16', 0, 'BSIT', '1A'),
(110, 'Introduction to Computing', 'Lecture', 'IT 145', '1st Semester', '2025-03-06 21:10:53', 0, 'BSIT', '2A');

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
(121, 108, 'Monday', '21:00', '22:00', '2025-03-06 13:05:09', '2025-03-06 13:05:09'),
(122, 108, 'Wednesday', '21:00', '22:00', '2025-03-06 13:05:09', '2025-03-06 13:05:09'),
(123, 109, 'Tuesday', '22:00', '23:00', '2025-03-06 13:10:16', '2025-03-06 13:10:16'),
(124, 109, 'Thursday', '22:00', '23:00', '2025-03-06 13:10:16', '2025-03-06 13:10:16'),
(125, 110, 'Wednesday', '21:10', '23:10', '2025-03-06 13:10:53', '2025-03-06 13:10:53'),
(126, 110, 'Saturday', '21:10', '23:10', '2025-03-06 13:10:53', '2025-03-06 13:10:53');

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
-- Indexes for table `admin_auto_notifications`
--
ALTER TABLE `admin_auto_notifications`
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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=293;

--
-- AUTO_INCREMENT for table `activity_attachments`
--
ALTER TABLE `activity_attachments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=105;

--
-- AUTO_INCREMENT for table `activity_submissions`
--
ALTER TABLE `activity_submissions`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1947;

--
-- AUTO_INCREMENT for table `admin`
--
ALTER TABLE `admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT for table `admin_auto_notifications`
--
ALTER TABLE `admin_auto_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `admin_notes`
--
ALTER TABLE `admin_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `admin_notifications`
--
ALTER TABLE `admin_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=199;

--
-- AUTO_INCREMENT for table `admin_reminders`
--
ALTER TABLE `admin_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `archived_semesters`
--
ALTER TABLE `archived_semesters`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `attendance`
--
ALTER TABLE `attendance`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=259;

--
-- AUTO_INCREMENT for table `classes`
--
ALTER TABLE `classes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=155;

--
-- AUTO_INCREMENT for table `classes_meetings`
--
ALTER TABLE `classes_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

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
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=102;

--
-- AUTO_INCREMENT for table `laboratory_rubrics`
--
ALTER TABLE `laboratory_rubrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT for table `learning_resources`
--
ALTER TABLE `learning_resources`
  MODIFY `resource_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

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
  MODIFY `id` bigint(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1741885023145;

--
-- AUTO_INCREMENT for table `rubrics`
--
ALTER TABLE `rubrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=101;

--
-- AUTO_INCREMENT for table `rubric_requirements`
--
ALTER TABLE `rubric_requirements`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=61;

--
-- AUTO_INCREMENT for table `semester`
--
ALTER TABLE `semester`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=55;

--
-- AUTO_INCREMENT for table `specific_rubrics`
--
ALTER TABLE `specific_rubrics`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `staff_accounts`
--
ALTER TABLE `staff_accounts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=92;

--
-- AUTO_INCREMENT for table `staff_advising`
--
ALTER TABLE `staff_advising`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=122;

--
-- AUTO_INCREMENT for table `staff_notifications`
--
ALTER TABLE `staff_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=220;

--
-- AUTO_INCREMENT for table `students`
--
ALTER TABLE `students`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=202001542;

--
-- AUTO_INCREMENT for table `students_enrollments`
--
ALTER TABLE `students_enrollments`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=215;

--
-- AUTO_INCREMENT for table `student_grades`
--
ALTER TABLE `student_grades`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=584;

--
-- AUTO_INCREMENT for table `student_info`
--
ALTER TABLE `student_info`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `student_notifications`
--
ALTER TABLE `student_notifications`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=922;

--
-- AUTO_INCREMENT for table `student_pictures`
--
ALTER TABLE `student_pictures`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `subjects`
--
ALTER TABLE `subjects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=111;

--
-- AUTO_INCREMENT for table `subjects_meetings`
--
ALTER TABLE `subjects_meetings`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `subjects_schedules`
--
ALTER TABLE `subjects_schedules`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT for table `teacher_notes`
--
ALTER TABLE `teacher_notes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT for table `teacher_reminders`
--
ALTER TABLE `teacher_reminders`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

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
