SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

-- Database: `studentresult`
-- Table structure for table `faculty`

CREATE TABLE IF NOT EXISTS `faculty` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `sem` (`sem`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- Table structure for table `marks`

CREATE TABLE IF NOT EXISTS `marks` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `roll` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `s1` varchar(255) NOT NULL,
  `s2` varchar(255) NOT NULL,
  `s3` varchar(255) NOT NULL,
  `s4` varchar(255) NOT NULL,
  `s5` varchar(255) NOT NULL,
  `s6` varchar(255) NOT NULL,
  `total` varchar(255) NOT NULL,
  `percent` varchar(255) NOT NULL,
  `result` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roll` (`roll`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=8 ;

-- Table structure for table `students`

CREATE TABLE IF NOT EXISTS `students` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `roll` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `roll` (`roll`,`email`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=6 ;

-- Table structure for table `subjects`

CREATE TABLE IF NOT EXISTS `subjects` (
  `id` int(255) NOT NULL AUTO_INCREMENT,
  `s1` varchar(255) NOT NULL,
  `s2` varchar(255) NOT NULL,
  `s3` varchar(255) NOT NULL,
  `s4` varchar(255) NOT NULL,
  `s5` varchar(255) NOT NULL,
  `s6` varchar(255) NOT NULL,
  `sem` varchar(255) NOT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `sem` (`sem`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=7 ;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
--
-- Table structure for table `class_srms`
--

CREATE TABLE `class_srms` (
  `class_id` int(11) NOT NULL,
  `class_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `class_code` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `class_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `class_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `class_srms`
--

INSERT INTO `class_srms` (`class_id`, `class_name`, `class_code`, `class_status`, `class_created_on`) VALUES
(2, 'BSc 1st Semester Batch 2020', '20f9a4242c75dca66a19499f27fcd4c7', 'Enable', '2020-12-19 18:47:34'),
(3, 'BSc 2nd Semester Batch 2020', '00deb091c5a5d480f7570d7cc1779e48', 'Enable', '2020-12-19 19:02:00'),
(4, 'BSc 3rd Semester Batch 2020', '43ef97482f7b43c9b8e43ab11e85e71e', 'Enable', '2020-12-19 19:04:12'),
(5, 'BSc 4th Semester Batch 2020', 'fea08b0885540a5b95aaf3aa5faf4a22', 'Enable', '2020-12-19 19:04:25'),
(6, 'BSc 5th Semester Batch 2020', '71697242d5e3feaefdc79db4ded5aaf9', 'Enable', '2020-12-19 19:07:58'),
(7, 'BSc 6th Semester Batch 2020', '3e2c8de431577fae5e6be68345a621f8', 'Enable', '2020-12-19 19:08:13'),
(8, 'Computer Science 2020', '1164d9955775def68522e1574bf26345', 'Enable', '2020-12-22 12:25:50');

-- --------------------------------------------------------

--
-- Table structure for table `exam_srms`
--

CREATE TABLE `exam_srms` (
  `exam_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `exam_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `exam_result_date` date NOT NULL,
  `exam_result_published` enum('No','Yes') COLLATE utf8_unicode_ci NOT NULL,
  `exam_status` enum('Enable','Disabled') COLLATE utf8_unicode_ci NOT NULL,
  `exam_added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `exam_srms`
--

INSERT INTO `exam_srms` (`exam_id`, `class_id`, `exam_name`, `exam_result_date`, `exam_result_published`, `exam_status`, `exam_added_on`) VALUES
(2, 2, 'BSc 1st Semester Exam 2020', '2020-12-22', 'Yes', 'Enable', '2020-12-21 16:32:52'),
(3, 3, 'BSc 2nd Semester Exam 2020', '0000-00-00', 'No', 'Enable', '2020-12-21 16:33:11'),
(4, 4, 'BSc 3rd Semester Exam 2020', '0000-00-00', 'No', 'Enable', '2020-12-21 16:33:27'),
(5, 5, 'BSc 4th Semester Exam 2020', '0000-00-00', 'No', 'Enable', '2020-12-21 16:33:52'),
(6, 6, 'BSc 5th Semester Exam 2020', '0000-00-00', 'No', 'Enable', '2020-12-21 16:34:06'),
(7, 7, 'BSc 6th Semester Exam 2020', '0000-00-00', 'No', 'Enable', '2020-12-21 16:34:20'),
(8, 8, 'Computer Science 2020 Exam', '0000-00-00', 'No', 'Enable', '2020-12-22 12:34:43');

-- --------------------------------------------------------

--
-- Table structure for table `marks_srms`
--

CREATE TABLE `marks_srms` (
  `marks_id` int(11) NOT NULL,
  `result_id` int(11) NOT NULL,
  `subject_id` int(11) NOT NULL,
  `marks` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `marks_srms`
--

INSERT INTO `marks_srms` (`marks_id`, `result_id`, `subject_id`, `marks`) VALUES
(1, 1, 4, 85),
(2, 1, 5, 56),
(3, 1, 3, 75),
(4, 1, 2, 89),
(5, 2, 6, 63),
(6, 2, 7, 56),
(7, 2, 9, 49),
(8, 2, 8, 59),
(9, 3, 6, 69),
(10, 3, 7, 36),
(11, 3, 9, 79),
(12, 3, 8, 89),
(13, 4, 6, 85),
(14, 4, 7, 75),
(15, 4, 9, 96),
(16, 4, 8, 83),
(17, 5, 6, 96),
(18, 5, 7, 61),
(19, 5, 9, 95),
(20, 5, 8, 99),
(21, 6, 6, 76),
(22, 6, 7, 72),
(23, 6, 9, 85),
(24, 6, 8, 79),
(25, 7, 6, 45),
(26, 7, 7, 59),
(27, 7, 9, 69),
(28, 7, 8, 75),
(29, 8, 6, 69),
(30, 8, 7, 85),
(31, 8, 9, 74),
(32, 8, 8, 56),
(33, 9, 6, 47),
(34, 9, 7, 48),
(35, 9, 9, 49),
(36, 9, 8, 44),
(37, 10, 6, 85),
(38, 10, 7, 74),
(39, 10, 9, 96),
(40, 10, 8, 52),
(41, 11, 6, 69),
(42, 11, 7, 98),
(43, 11, 9, 97),
(44, 11, 8, 99),
(45, 12, 6, 35),
(46, 12, 7, 86),
(47, 12, 9, 98);

-- --------------------------------------------------------

--
-- Table structure for table `result_srms`
--

CREATE TABLE `result_srms` (
  `result_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_id` int(11) NOT NULL,
  `exam_id` int(11) NOT NULL,
  `result_percentage` decimal(5,2) NOT NULL,
  `result_status` enum('Enable','Disabled') COLLATE utf8_unicode_ci NOT NULL,
  `result_added_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `result_srms`
--

INSERT INTO `result_srms` (`result_id`, `class_id`, `student_id`, `exam_id`, `result_percentage`, `result_status`, `result_added_by`) VALUES
(1, 1, 2, 1, '76.25', 'Enable', 'Master'),
(2, 2, 11, 2, '56.75', 'Enable', 'Peter Parker'),
(3, 2, 8, 2, '68.25', 'Enable', 'Peter Parker'),
(4, 2, 7, 2, '84.75', 'Enable', 'Peter Parker'),
(5, 2, 10, 2, '87.75', 'Enable', 'Peter Parker'),
(6, 2, 5, 2, '78.00', 'Enable', 'Peter Parker'),
(7, 2, 3, 2, '62.00', 'Enable', 'Donna Hubber'),
(8, 2, 6, 2, '71.00', 'Enable', 'Donna Hubber'),
(9, 2, 12, 2, '47.00', 'Enable', 'Donna Hubber'),
(10, 2, 9, 2, '76.75', 'Enable', 'Donna Hubber'),
(11, 2, 4, 2, '90.75', 'Enable', 'Donna Hubber'),
(12, 2, 63, 2, '73.00', 'Enable', 'Peter Parker');

-- --------------------------------------------------------

--
-- Table structure for table `student_srms`
--

CREATE TABLE `student_srms` (
  `student_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `student_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `student_roll_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `student_email_id` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `student_gender` enum('Male','Female') COLLATE utf8_unicode_ci NOT NULL,
  `student_dob` date NOT NULL,
  `student_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `student_added_by` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `student_added_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `student_srms`
--

INSERT INTO `student_srms` (`student_id`, `class_id`, `student_name`, `student_roll_no`, `student_email_id`, `student_gender`, `student_dob`, `student_status`, `student_added_by`, `student_added_on`) VALUES
(2, 1, 'Holly Shaw', '2', 'hollyshow@gmail.com', 'Female', '2003-03-12', 'Enable', 'Master', '2020-12-17 10:33:49'),
(3, 2, 'Keara Larson', 'BSC120201', 'oschimmel@loadingya.com', 'Female', '1999-03-28', 'Enable', 'Master', '2020-12-21 11:55:53'),
(4, 2, 'Tara Kuhlman', 'BSC120202', 'gideon.schamber@valueweboffers.com', 'Female', '1998-08-28', 'Enable', 'Master', '2020-12-21 11:57:01'),
(5, 2, 'Jadyn Vandervort', 'BSC120203', 'ephraim97@muqaise.com', 'Female', '2001-02-12', 'Enable', 'Master', '2020-12-21 11:58:01'),
(6, 2, 'Luigi Waters', 'BSC120204', 'hickle.rodger@livescore.cd', 'Male', '2001-05-27', 'Enable', 'Master', '2020-12-21 11:58:43'),
(7, 2, 'Dallin Pfannerstill', 'BSC120205', 'clakin@rmtmarket.ru', 'Female', '2000-08-24', 'Enable', 'Master', '2020-12-21 11:59:28'),
(8, 2, 'Arnaldo Wisozk', 'BSC120206', 'yreinger@clubjeep.es', 'Male', '2001-04-04', 'Enable', 'Master', '2020-12-21 12:00:13'),
(9, 2, 'Sherman Runolfsdottir', 'BSC120207', 'mante.tyler@smileglobal.biz', 'Male', '2001-01-13', 'Enable', 'Master', '2020-12-21 12:00:58'),
(10, 2, 'Demarcus Kovacek', 'BSC120208', 'enrique55@gbtimes.cd', 'Male', '2002-01-22', 'Enable', 'Master', '2020-12-21 12:01:54'),
(11, 2, 'Alexandria Wisoky', 'BSC120209', 'felton94@altynkazyna.kg', 'Female', '2001-10-05', 'Enable', 'Master', '2020-12-21 12:02:33'),
(12, 2, 'Priscilla Spencer', 'BSC1202010', 'eino.kuhlman@mailpluss.com', 'Female', '2001-09-05', 'Enable', 'Master', '2020-12-21 12:03:22'),
(13, 3, 'Cali Witting', 'BSC220201', 'lwilderman@attentv.com', 'Female', '2000-03-04', 'Enable', 'Master', '2020-12-21 12:04:14'),
(14, 3, 'Beverly Gerhold', 'BSC220202', 'keshawn.zulauf@altynkazyna.kg', 'Female', '2000-07-15', 'Enable', 'Master', '2020-12-21 12:05:07'),
(15, 3, 'Dina Rohan', 'BSC220203', 'rosina.bauch@elaseweightloss.com', 'Female', '2000-02-17', 'Enable', 'Master', '2020-12-21 12:05:57'),
(16, 3, 'Laurine Stokes', 'BSC220204', 'yundt.salvador@burgas.vip', 'Female', '2000-11-09', 'Enable', 'Master', '2020-12-21 12:06:39'),
(17, 3, 'Alex Spinka', 'BSC220205', 'millie.konopels@cityxguide.center', 'Male', '2000-05-09', 'Enable', 'Master', '2020-12-21 12:07:25'),
(18, 3, 'Cristina Nicolas', 'BSC220206', 'genoveva.bogan@tyrosine.store', 'Male', '2000-06-28', 'Enable', 'Master', '2020-12-21 12:18:43'),
(19, 3, 'Kaitlin Weber', 'BSC220207', 'raynor.madelyn@dreamstosucceed.com', 'Female', '2000-12-01', 'Enable', 'Master', '2020-12-21 12:19:42'),
(20, 3, 'Brenda Kertzmann', 'BSC220208', 'dcormier@workers.su', 'Female', '2000-10-05', 'Enable', 'Master', '2020-12-21 12:20:19'),
(21, 3, 'Alfonzo Fahey', 'BSC220209', 'ulehner@floorcl.press', 'Male', '2000-09-16', 'Enable', 'Master', '2020-12-21 12:20:57'),
(22, 3, 'Dax Gutmann', 'BSC2202010', 'reagan57@pdfa.site', 'Male', '2000-02-15', 'Enable', 'Master', '2020-12-21 12:22:28'),
(23, 4, 'Favian Kirlin', 'BSC320201', 'antonia.swaniaw@taikz.com', 'Male', '1999-01-15', 'Enable', 'Master', '2020-12-21 12:26:20'),
(24, 4, 'Ernestina Rice', 'BSC320202', 'ghalvorson@voron.center', 'Female', '1999-03-25', 'Enable', 'Master', '2020-12-21 12:27:15'),
(25, 4, 'Brady Tillman', 'BSC320203', 'wjast@322na.com', 'Male', '1999-08-13', 'Enable', 'Master', '2020-12-21 12:27:54'),
(26, 4, 'Lelia Sawayn', 'BSC320204', 'esmeralda39@kocoks.com', 'Female', '1999-10-27', 'Enable', 'Master', '2020-12-21 12:28:31'),
(27, 4, 'Alba Pfeffer', 'BSC320205', 'ward.abdullah@allgreatshop.xyz', 'Female', '1999-12-17', 'Enable', 'Master', '2020-12-21 12:29:18'),
(28, 4, 'Jamal Bednar', 'BSC320206', 'sturner@ikimaru.com', 'Male', '1999-07-15', 'Enable', 'Master', '2020-12-21 12:29:57'),
(29, 4, 'Alfreda Koelpin', 'BSC320207', 'morton.williams@popbum.com', 'Female', '1999-10-26', 'Enable', 'Master', '2020-12-21 12:30:37'),
(30, 4, 'Lyda Dicki', 'BSC320208', 'santiago.kertzm@sparc.support', 'Female', '1999-11-26', 'Enable', 'Master', '2020-12-21 12:31:22'),
(31, 4, 'Aliyah Daugherty', 'BSC320209', 'wgreenholt@davidtbernal.com', 'Female', '2000-01-08', 'Enable', 'Master', '2020-12-21 12:32:04'),
(32, 4, 'Gerry Kunze', 'BSC3202010', 'mekhi81@xmatch.buzz', 'Female', '1999-10-20', 'Enable', 'Master', '2020-12-21 12:32:49'),
(33, 5, 'Bernadine Collins', 'BSC420201', 'maddison39@lagunacottages.vacations', 'Female', '1998-02-03', 'Enable', 'Master', '2020-12-21 12:34:03'),
(34, 5, 'Olaf Herzog', 'BSC420202', 'dcartwright@helpman.ml', 'Male', '1998-07-15', 'Enable', 'Master', '2020-12-21 12:34:45'),
(35, 5, 'Thomas Cummerata', 'BSC420203', 'jensen.goldner@blairdaly.com', 'Male', '1998-06-16', 'Enable', 'Master', '2020-12-21 12:35:28'),
(36, 5, 'Rachael Abernathy', 'BSC420204', 'hfeeney@failmega.ru', 'Female', '1998-08-27', 'Enable', 'Master', '2020-12-21 12:36:14'),
(37, 5, 'Candace Heller', 'BSC420205', 'maritza.reynold@voron.center', 'Female', '1998-11-18', 'Enable', 'Master', '2020-12-21 12:36:55'),
(38, 5, 'Irving Nienow', 'BSC420206', 'hwolf@rzn.services', 'Male', '1998-10-14', 'Enable', 'Master', '2020-12-21 12:37:38'),
(39, 5, 'Queenie Lebsack', 'BSC420207', 'thilll@remarkable.rocks', 'Female', '1998-05-15', 'Enable', 'Master', '2020-12-21 12:38:21'),
(40, 5, 'Cleo Nikolaus', 'BSC420208', 'helen25@kiev.cd', 'Male', '1998-11-19', 'Enable', 'Master', '2020-12-21 16:16:42'),
(41, 5, 'Thelma Friesen', 'BSC420209', 'reynolds.jeffry@gutmorgen.moscow', 'Female', '1998-06-20', 'Enable', 'Master', '2020-12-21 16:17:26'),
(42, 5, 'Dovie Feil', 'BSC4202010', 'hoppe.shanna@mbstoto.biz', 'Female', '1998-08-22', 'Enable', 'Master', '2020-12-21 16:18:12'),
(43, 6, 'Kaia Crist', 'BSC520201', 'pamela.boyer@noveonlaser.com', 'Female', '1997-02-21', 'Enable', 'Master', '2020-12-21 16:18:57'),
(44, 6, 'Gregg West', 'BSC520202', 'garnet99@sdelaemdeputatom.ru', 'Male', '1997-07-19', 'Enable', 'Master', '2020-12-21 16:19:40'),
(45, 6, 'Ara Halvorson', 'BSC520203', 'funk.keith@ericreyess.com', 'Female', '1997-06-17', 'Enable', 'Master', '2020-12-21 16:20:20'),
(46, 6, 'Ethyl Hoeger', 'BSC520204', 'maggio.ahmed@gmailup.com', 'Female', '1997-09-11', 'Enable', 'Master', '2020-12-21 16:21:12'),
(47, 6, 'Mazie Schneider', 'BSC520205', 'kgorczany@hotmail.red', 'Female', '1997-12-03', 'Enable', 'Master', '2020-12-21 16:21:55'),
(48, 6, 'Linnie Hirthe', 'BSC520206', 'gwendolyn47@alaskavalentine.com', 'Female', '1997-08-22', 'Enable', 'Master', '2020-12-21 16:22:34'),
(49, 6, 'Dereck Block', 'BSC520207', 'delbert.quigley@videojuegos.icu', 'Male', '1997-01-09', 'Enable', 'Master', '2020-12-21 16:23:15'),
(50, 6, 'Nelda Ebert', 'BSC520208', 'ed54@cingcawow.guru', 'Female', '1997-08-07', 'Enable', 'Master', '2020-12-21 16:23:54'),
(51, 6, 'Perry Jakubowski', 'BSC520209', 'jrenner@akk.ro', 'Male', '1997-06-07', 'Enable', 'Master', '2020-12-21 16:24:33'),
(52, 6, 'Berta Quitzon', 'BSC5202010', 'ewillms@alaskavalentine.com', 'Male', '1997-10-08', 'Enable', 'Master', '2020-12-21 16:25:16'),
(53, 7, 'Arvilla Boyle', 'BSC620201', 'kathryne.thiel@blogspot.miami', 'Female', '1996-04-18', 'Enable', 'Master', '2020-12-21 16:25:58'),
(54, 7, 'Eva Kuphal', 'BSC620202', 'hagenes.jon@oisg.org', 'Female', '1996-10-15', 'Enable', 'Master', '2020-12-21 16:26:37'),
(55, 7, 'Cordia Hane', 'BSC620203', 'maximus.hand@bahistek58.com', 'Female', '1996-06-13', 'Enable', 'Master', '2020-12-21 16:27:16'),
(56, 7, 'Kariane Auer', 'BSC620204', 'fblanda@ericreyess.com', 'Female', '1996-08-24', 'Enable', 'Master', '2020-12-21 16:28:00'),
(57, 7, 'Octavia Lesch', 'BSC620205', 'bdickens@kurupee.com', 'Female', '1996-07-09', 'Enable', 'Master', '2020-12-21 16:28:38'),
(58, 7, 'Shayna Hane', 'BSC620206', 'nschiller@cent23.com', 'Female', '1996-05-21', 'Enable', 'Master', '2020-12-21 16:29:25'),
(59, 7, 'Lyda Watsica', 'BSC620207', 'hayes.keith@httsmvkcom.pw', 'Female', '1996-11-01', 'Enable', 'Master', '2020-12-21 16:30:03'),
(60, 7, 'Laney Schneider', 'BSC620208', 'zoey58@guidebate.fun', 'Female', '1996-07-18', 'Enable', 'Master', '2020-12-21 16:30:54'),
(61, 7, 'Ashlynn Crooks', 'BSC620209', 'norma.herman@autorace.pt', 'Female', '1996-12-14', 'Enable', 'Master', '2020-12-21 16:31:30'),
(62, 7, 'Shania McCullough', 'BSC6202010', 'block.roscoe@dutchvinyl.com', 'Female', '1996-04-17', 'Enable', 'Master', '2020-12-21 16:32:10'),
(63, 2, 'Sharon Aguiar', 'BSC1202011', 'sharonaguiar@gmail.com', 'Female', '2001-11-28', 'Enable', 'Master', '2020-12-22 12:31:54');

-- --------------------------------------------------------

--
-- Table structure for table `subject_srms`
--

CREATE TABLE `subject_srms` (
  `subject_id` int(11) NOT NULL,
  `class_id` int(11) NOT NULL,
  `subject_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `subject_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `subject_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `subject_srms`
--

INSERT INTO `subject_srms` (`subject_id`, `class_id`, `subject_name`, `subject_status`, `subject_created_on`) VALUES
(2, 1, 'Physics', 'Enable', '2020-12-16 15:44:04'),
(3, 1, 'Maths', 'Enable', '2020-12-16 16:37:33'),
(4, 1, 'Chemistry', 'Enable', '2020-12-17 17:55:16'),
(5, 1, 'English', 'Enable', '2020-12-17 17:55:29'),
(6, 2, 'Chemistry', 'Enable', '2020-12-19 18:48:55'),
(7, 2, 'English', 'Enable', '2020-12-19 18:49:07'),
(8, 2, 'Programming for Problem Solving', 'Disable', '2020-12-19 18:49:32'),
(9, 2, 'Mathematics', 'Enable', '2020-12-19 18:49:56'),
(10, 3, 'Engineering Graphics And Design', 'Enable', '2020-12-19 19:02:30'),
(11, 3, 'Basic Electronics', 'Enable', '2020-12-19 19:02:49'),
(12, 3, 'Physics', 'Enable', '2020-12-19 19:03:04'),
(13, 3, 'Advance Mathematics', 'Enable', '2020-12-19 19:03:18'),
(14, 4, 'Probability Statistics', 'Enable', '2020-12-19 19:05:20'),
(15, 4, 'Database Management System', 'Enable', '2020-12-19 19:05:38'),
(16, 4, 'Data Structures', 'Enable', '2020-12-19 19:05:54'),
(17, 4, 'Digital Fundamental', 'Enable', '2020-12-19 19:06:09'),
(18, 5, 'Operating System', 'Enable', '2020-12-19 19:06:23'),
(19, 5, 'Object Oriented Programming', 'Enable', '2020-12-19 19:06:38'),
(20, 5, 'Computer Organization And Architecture', 'Enable', '2020-12-19 19:07:13'),
(21, 5, 'Discrete Mathematics', 'Enable', '2020-12-19 19:07:35'),
(22, 6, 'Analysis And Design of Algorithms', 'Enable', '2020-12-19 19:08:37'),
(23, 6, 'Computer Networks', 'Enable', '2020-12-19 19:08:51'),
(24, 6, 'Software Engineering', 'Enable', '2020-12-19 19:09:05'),
(25, 6, 'Python for Data Science', 'Enable', '2020-12-19 19:09:21'),
(26, 7, 'Cyber Security', 'Enable', '2020-12-19 19:09:37'),
(27, 7, 'Digital Electronics', 'Enable', '2020-12-19 19:09:53'),
(28, 7, 'Advance DBMS', 'Enable', '2020-12-19 19:10:11'),
(29, 7, 'Computer Graphics', 'Enable', '2020-12-19 19:10:37'),
(30, 8, 'Programming Fundamental', 'Enable', '2020-12-22 12:28:15');

-- --------------------------------------------------------

--
-- Table structure for table `user_srms`
--

CREATE TABLE `user_srms` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_contact_no` varchar(30) COLLATE utf8_unicode_ci NOT NULL,
  `user_email` varchar(250) COLLATE utf8_unicode_ci NOT NULL,
  `user_password` varchar(100) COLLATE utf8_unicode_ci NOT NULL,
  `user_profile` varchar(150) COLLATE utf8_unicode_ci NOT NULL,
  `user_type` enum('Master','User') COLLATE utf8_unicode_ci NOT NULL,
  `user_status` enum('Enable','Disable') COLLATE utf8_unicode_ci NOT NULL,
  `user_created_on` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `user_srms`
--

INSERT INTO `user_srms` (`user_id`, `user_name`, `user_contact_no`, `user_email`, `user_password`, `user_profile`, `user_type`, `user_status`, `user_created_on`) VALUES
(1, 'John Smith', '85236985520', 'johnsmith@gmail.com', 'password', '../images/21501.jpg', 'Master', 'Enable', '2020-12-15 06:32:20'),
(2, 'Peter Parker', '7412589630', 'peterparker@gmail.com', 'password', '../images/2290.jpg', 'User', 'Enable', '2020-12-15 18:38:35'),
(3, 'Donna Hubber', '7412855563', 'donnahubber@gmail.com', 'password', '../images/386.jpg', 'User', 'Enable', '2020-12-21 11:49:58'),
(4, 'Marie Gagnon', '7539518520', 'mariegagnon@gmail.com', 'password', '../images/1608620890.png', 'User', 'Enable', '2020-12-22 12:38:10');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `class_srms`
--
ALTER TABLE `class_srms`
  ADD PRIMARY KEY (`class_id`);

--
-- Indexes for table `exam_srms`
--
ALTER TABLE `exam_srms`
  ADD PRIMARY KEY (`exam_id`);

--
-- Indexes for table `marks_srms`
--
ALTER TABLE `marks_srms`
  ADD PRIMARY KEY (`marks_id`);

--
-- Indexes for table `result_srms`
--
ALTER TABLE `result_srms`
  ADD PRIMARY KEY (`result_id`);

--
-- Indexes for table `student_srms`
--
ALTER TABLE `student_srms`
  ADD PRIMARY KEY (`student_id`);

--
-- Indexes for table `subject_srms`
--
ALTER TABLE `subject_srms`
  ADD PRIMARY KEY (`subject_id`);

--
-- Indexes for table `user_srms`
--
ALTER TABLE `user_srms`
  ADD PRIMARY KEY (`user_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `class_srms`
--
ALTER TABLE `class_srms`
  MODIFY `class_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `exam_srms`
--
ALTER TABLE `exam_srms`
  MODIFY `exam_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `marks_srms`
--
ALTER TABLE `marks_srms`
  MODIFY `marks_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `result_srms`
--
ALTER TABLE `result_srms`
  MODIFY `result_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `student_srms`
--
ALTER TABLE `student_srms`
  MODIFY `student_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=64;

--
-- AUTO_INCREMENT for table `subject_srms`
--
ALTER TABLE `subject_srms`
  MODIFY `subject_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `user_srms`
--
ALTER TABLE `user_srms`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
