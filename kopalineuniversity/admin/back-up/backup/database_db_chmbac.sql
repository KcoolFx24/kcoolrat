# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------


#
# Delete any existing table `course`
#

DROP TABLE IF EXISTS `course`;


#
# Table structure of table `course`
#

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `SETSEMESTER` varchar(90) NOT NULL,
  PRIMARY KEY (`COURSE_ID`),
  KEY `DEPT_ID` (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1 ;

#
# Data contents of table course (9 records)
#
 
INSERT INTO `course` VALUES (21, 'BSBA Financial Management', 'Bachelor of Science in Busines Administration ', 34, '') ; 
INSERT INTO `course` VALUES (24, 'AB Philosophy', 'Bachelor of ARTS (AB)', 34, '') ; 
INSERT INTO `course` VALUES (29, 'AB English', 'Bachelor of ARTS (AB)', 34, '') ; 
INSERT INTO `course` VALUES (30, 'BSED English', 'Bachelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (34, 'BSED Math', 'Batchelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (40, 'BSED Filipino', 'Batchelor of Secondary Education (BSED)', 35, '') ; 
INSERT INTO `course` VALUES (44, 'BEED General', 'Batchelor of Elementary Education (BEED)', 35, '') ; 
INSERT INTO `course` VALUES (52, 'BSIT', 'Bachelor of Science in Information Technology', 33, '') ; 
INSERT INTO `course` VALUES (56, 'BSACT', 'Bachelor of Accounting Technology', 34, '') ;
#
# End of data contents of table course
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------


#
# Delete any existing table `department`
#

DROP TABLE IF EXISTS `department`;


#
# Table structure of table `department`
#

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 ;

#
# Data contents of table department (4 records)
#
 
INSERT INTO `department` VALUES (33, 'IT', 'Information Technology Department') ; 
INSERT INTO `department` VALUES (34, 'BITE', 'Business and IT Education') ; 
INSERT INTO `department` VALUES (35, 'TEA', 'Teacher Education Department') ; 
INSERT INTO `department` VALUES (36, 'arts', 'Arts Department') ;
#
# End of data contents of table department
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------


#
# Delete any existing table `grades`
#

DROP TABLE IF EXISTS `grades`;


#
# Table structure of table `grades`
#

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `FIRST` int(11) NOT NULL,
  `SECOND` int(11) NOT NULL,
  `THIRD` int(11) NOT NULL,
  `FOURTH` int(11) NOT NULL,
  `AVE` float NOT NULL,
  `REMARKS` text NOT NULL,
  `COMMENT` text NOT NULL,
  `SEMS` varchar(90) NOT NULL,
  PRIMARY KEY (`GRADE_ID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 ;

#
# Data contents of table grades (16 records)
#
 
INSERT INTO `grades` VALUES (1, 100000075, 1, 0, 0, 0, 0, '90', 'Passed', '', 'First') ; 
INSERT INTO `grades` VALUES (2, 100000075, 2, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (3, 100000075, 3, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (4, 100000075, 4, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (5, 100000075, 5, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (6, 100000075, 6, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (7, 100000075, 7, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (8, 100000075, 8, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (9, 100000075, 9, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (10, 100000075, 10, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (11, 100000075, 11, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (12, 100000075, 12, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (13, 100000075, 13, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (14, 100000075, 14, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (15, 100000075, 15, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (16, 100000075, 16, 0, 0, 0, 0, '0', '', '', 'First') ;
#
# End of data contents of table grades
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------


#
# Delete any existing table `studentsubjects`
#

DROP TABLE IF EXISTS `studentsubjects`;


#
# Table structure of table `studentsubjects`
#

CREATE TABLE `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` varchar(90) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SY` text NOT NULL,
  `ATTEMP` int(11) NOT NULL,
  `AVERAGE` double NOT NULL,
  `OUTCOME` text NOT NULL,
  PRIMARY KEY (`STUDSUBJ_ID`),
  KEY `IDNO` (`IDNO`),
  KEY `SUBJ_ID` (`SUBJ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 ;

#
# Data contents of table studentsubjects (16 records)
#
 
INSERT INTO `studentsubjects` VALUES (1, 100000075, 1, 'First Year', 'First', '2000-2001', 1, '90', 'Passed') ; 
INSERT INTO `studentsubjects` VALUES (2, 100000075, 2, 'First Year', 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (3, 100000075, 3, 'First Year', 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (4, 100000075, 4, 'First Year', 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (5, 100000075, 5, 'First Year', 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (6, 100000075, 6, 'First Year', 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (7, 100000075, 7, 'First Year', 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (8, 100000075, 8, 'First Year', 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (9, 100000075, 9, 'First Year', 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (10, 100000075, 10, 'First Year', 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (11, 100000075, 11, 'First Year', 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (12, 100000075, 12, 'First Year', 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (13, 100000075, 13, 'First Year', 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (14, 100000075, 14, 'First Year', 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (15, 100000075, 15, 'First Year', 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (16, 100000075, 16, 'Second Year', 'First', '2000-2001', 1, '0', '') ;
#
# End of data contents of table studentsubjects
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------


#
# Delete any existing table `subject`
#

DROP TABLE IF EXISTS `subject`;


#
# Table structure of table `subject`
#

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` varchar(30) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `YEARLEVEL` varchar(90) NOT NULL,
  `AY` varchar(30) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `PreTaken` tinyint(1) NOT NULL,
  PRIMARY KEY (`SUBJ_ID`),
  KEY `COURSE_ID` (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 ;

#
# Data contents of table subject (16 records)
#
 
INSERT INTO `subject` VALUES (1, 'IT 101', 'IT Fundamentals', '3', 'NONE', 52, 'First Year', '2000-2001', 'First', 0) ; 
INSERT INTO `subject` VALUES (2, 'IT 102', 'Integrated Aplication Software and Productivity Tools', '3(2/1)', 'NONE', 52, 'First Year', '2000-2001', 'First', 0) ; 
INSERT INTO `subject` VALUES (3, 'IT 103', 'Programming I', '3', 'NONE', 52, 'First Year', '2000-2001', 'First', 0) ; 
INSERT INTO `subject` VALUES (4, 'Math 101', 'College Algebra', '3', 'NONE', 52, 'First Year', '2000-2001', 'First', 0) ; 
INSERT INTO `subject` VALUES (5, 'Stat 102', 'Probability Statistics', '3', 'NONE', 52, 'First Year', '2000-2001', 'First', 0) ; 
INSERT INTO `subject` VALUES (6, 'PE 101', 'Physical Fitness', '3', 'NONE', 52, 'First Year', '2000-2001', 'First', 0) ; 
INSERT INTO `subject` VALUES (7, 'NSTP 1', 'ROTC / CWTS / LTS 1', '3', 'NONE', 52, 'First Year', '2000-2001', 'First', 0) ; 
INSERT INTO `subject` VALUES (8, 'IT 104', 'Programming 2', '3', 'IT 103,IT 101', 52, 'First Year', '2000-2001', 'Second', 0) ; 
INSERT INTO `subject` VALUES (9, 'IT 201', 'Logic Design', '3', 'IT 101', 52, 'First Year', '2000-2001', 'Second', 0) ; 
INSERT INTO `subject` VALUES (10, 'Math 102', 'Plane Trigonometry', '3', 'NONE', 52, 'First Year', '2000-2001', 'Second', 0) ; 
INSERT INTO `subject` VALUES (11, 'Eng 102', 'Speech Communication with Debate', '3', 'NONE', 52, 'First Year', '2000-2001', 'Second', 0) ; 
INSERT INTO `subject` VALUES (12, 'NatSci 101', 'Biological Science', '3', 'NONE', 52, 'First Year', '2000-2001', 'Second', 0) ; 
INSERT INTO `subject` VALUES (13, 'SocSci 101', 'Philippine History', '3', 'NONE', 52, 'First Year', '2000-2001', 'Second', 0) ; 
INSERT INTO `subject` VALUES (14, 'PE 102', 'Rhythmic Activities, Folk and Social Dancing', '2', 'NONE', 52, 'First Year', '2000-2001', 'Second', 0) ; 
INSERT INTO `subject` VALUES (15, 'NSTP 2', 'ROTC / CWTS / LTS 2', '3', 'NONE', 52, 'First Year', '2000-2001', 'Second', 0) ; 
INSERT INTO `subject` VALUES (16, 'IT 105', 'Computer Organization', '3', 'IT  201', 52, 'Second Year', '2000-2001', 'First', 0) ;
#
# End of data contents of table subject
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------


#
# Delete any existing table `tblauto`
#

DROP TABLE IF EXISTS `tblauto`;


#
# Table structure of table `tblauto`
#

CREATE TABLE `tblauto` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `autocode` varchar(255) DEFAULT NULL,
  `autoname` varchar(255) DEFAULT NULL,
  `appendchar` varchar(255) DEFAULT NULL,
  `autostart` int(11) DEFAULT '0',
  `autoend` int(11) DEFAULT '0',
  `incrementvalue` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `autocode` (`autocode`)
) ENGINE=MyISAM AUTO_INCREMENT=5 DEFAULT CHARSET=utf8 ;

#
# Data contents of table tblauto (4 records)
#
 
INSERT INTO `tblauto` VALUES (1, 'Asset', 'Asset', 'ASitem', 0, 3, 1) ; 
INSERT INTO `tblauto` VALUES (2, 'Trans', 'Transaction', 'TrAnS', 1, 5, 1) ; 
INSERT INTO `tblauto` VALUES (3, 'SIDNO', 'IDNO', '2015', 1000000, 76, 1) ; 
INSERT INTO `tblauto` VALUES (4, 'EMPLOYEE', 'EMPID', '020010', 0, 2, 1) ;
#
# End of data contents of table tblauto
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------


#
# Delete any existing table `tbllevel`
#

DROP TABLE IF EXISTS `tbllevel`;


#
# Table structure of table `tbllevel`
#

CREATE TABLE `tbllevel` (
  `LEVELID` int(11) NOT NULL AUTO_INCREMENT,
  `YEARLEVEL` varchar(30) NOT NULL,
  `SECTION` varchar(90) NOT NULL,
  PRIMARY KEY (`LEVELID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbllevel (4 records)
#
 
INSERT INTO `tbllevel` VALUES (3, 'First Year', '') ; 
INSERT INTO `tbllevel` VALUES (4, 'Second Year', '') ; 
INSERT INTO `tbllevel` VALUES (5, 'Third Year', '') ; 
INSERT INTO `tbllevel` VALUES (6, 'Fourth Year', '') ;
#
# End of data contents of table tbllevel
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------


#
# Delete any existing table `tbllogs`
#

DROP TABLE IF EXISTS `tbllogs`;


#
# Table structure of table `tbllogs`
#

CREATE TABLE `tbllogs` (
  `LOGID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` int(11) NOT NULL,
  `LOGDATETIME` datetime NOT NULL,
  `LOGROLE` varchar(55) NOT NULL,
  `LOGMODE` varchar(55) NOT NULL,
  PRIMARY KEY (`LOGID`)
) ENGINE=InnoDB AUTO_INCREMENT=62 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbllogs (61 records)
#
 
INSERT INTO `tbllogs` VALUES (1, 1, '2016-09-22 21:46:01', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (2, 100000022, '2016-09-22 21:46:29', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (3, 100000015, '2016-09-23 05:00:38', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (4, 100000015, '2016-09-23 05:00:45', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (5, 100000025, '2016-09-23 05:02:31', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (6, 100000025, '2016-09-23 05:02:55', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (7, 100000025, '2016-09-23 05:03:53', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (8, 100000025, '2016-09-23 05:11:40', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (9, 100000025, '2016-09-24 09:32:59', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (10, 1, '2016-09-24 09:46:06', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (11, 1, '2016-09-24 09:53:17', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (12, 1, '2016-09-24 09:54:45', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (13, 100000027, '2016-09-24 15:30:32', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (14, 100000015, '2016-09-27 09:34:11', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (15, 1, '2016-09-27 10:59:58', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (16, 100000015, '2016-09-27 11:00:42', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (17, 100000029, '2016-09-27 17:34:11', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (18, 100000015, '0000-00-00 00:00:00', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (19, 100000015, '2016-09-27 17:37:13', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (20, 100000029, '2016-09-27 18:27:40', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (21, 100000015, '2016-09-27 18:27:56', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (22, 100000015, '2016-09-27 18:29:20', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (23, 100000030, '2016-09-27 22:49:02', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (24, 100000015, '2016-09-27 22:50:10', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (25, 100000015, '2016-09-28 01:47:07', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (26, 100000033, '2016-09-28 04:43:26', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (27, 1, '2016-10-01 04:07:48', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (28, 100000056, '2016-10-01 09:22:17', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (29, 100000056, '2016-10-01 09:22:51', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (30, 100000056, '2016-10-01 09:23:30', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (31, 100000056, '2016-10-01 12:52:40', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (32, 100000057, '2016-10-01 15:28:47', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (33, 100000058, '2016-10-01 15:44:01', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (34, 100000057, '2016-10-01 15:44:11', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (35, 100000057, '2016-10-01 16:38:34', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (36, 100000061, '2016-10-01 16:50:27', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (37, 100000061, '2016-10-01 18:08:05', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (38, 1, '2016-10-02 01:12:39', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (39, 100000067, '2016-10-02 01:58:35', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (40, 100000068, '2016-10-02 02:16:08', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (41, 100000069, '2016-10-02 02:20:24', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (42, 100000071, '2016-10-02 09:16:51', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (43, 1, '2018-11-27 07:03:09', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (44, 1, '2018-11-27 10:39:57', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (45, 1, '2018-11-27 10:42:19', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (46, 1, '2018-11-27 10:44:25', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (47, 1, '2018-11-27 10:49:41', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (48, 1, '2018-11-27 11:03:31', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (49, 1, '2018-11-27 12:50:29', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (50, 1, '2018-11-28 04:51:58', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (51, 1, '2018-11-28 09:07:51', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (52, 1, '2018-11-28 09:07:58', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (53, 100000075, '2018-11-28 12:12:45', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (54, 100000075, '2018-11-28 12:13:37', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (55, 100000075, '2018-11-28 13:33:31', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (56, 1, '2018-11-28 13:35:41', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (57, 1, '2018-11-28 13:36:59', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (58, 1, '2018-11-28 13:37:02', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (59, 1, '2018-11-28 13:37:54', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (60, 1, '2018-11-28 13:37:56', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (61, 1, '2018-11-28 13:38:10', 'Administrator', 'Logged in') ;
#
# End of data contents of table tbllogs
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------


#
# Delete any existing table `tblsection`
#

DROP TABLE IF EXISTS `tblsection`;


#
# Table structure of table `tblsection`
#

CREATE TABLE `tblsection` (
  `SECTIONID` int(11) NOT NULL AUTO_INCREMENT,
  `SECTION` varchar(90) NOT NULL,
  PRIMARY KEY (`SECTIONID`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblsection (0 records)
#

#
# End of data contents of table tblsection
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------


#
# Delete any existing table `tblsemester`
#

DROP TABLE IF EXISTS `tblsemester`;


#
# Table structure of table `tblsemester`
#

CREATE TABLE `tblsemester` (
  `SEMID` int(11) NOT NULL AUTO_INCREMENT,
  `SEMESTER` varchar(90) NOT NULL,
  `SETSEM` tinyint(1) NOT NULL,
  PRIMARY KEY (`SEMID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblsemester (3 records)
#
 
INSERT INTO `tblsemester` VALUES (1, 'First', 0) ; 
INSERT INTO `tblsemester` VALUES (2, 'Second', 0) ; 
INSERT INTO `tblsemester` VALUES (3, 'Summer', 1) ;
#
# End of data contents of table tblsemester
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------


#
# Delete any existing table `tblstuddetails`
#

DROP TABLE IF EXISTS `tblstuddetails`;


#
# Table structure of table `tblstuddetails`
#

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) NOT NULL,
  `GCONTACT` varchar(40) NOT NULL,
  `IDNO` int(30) NOT NULL,
  PRIMARY KEY (`DETAIL_ID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblstuddetails (1 records)
#
 
INSERT INTO `tblstuddetails` VALUES (1, 'Bless Paredes', '', '09306587988', 100000075) ;
#
# End of data contents of table tblstuddetails
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstudent`
# --------------------------------------------------------


#
# Delete any existing table `tblstudent`
#

DROP TABLE IF EXISTS `tblstudent`;


#
# Table structure of table `tblstudent`
#

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` int(20) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `AGE` int(30) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `RELIGION` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(40) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `ACC_USERNAME` varchar(255) NOT NULL,
  `ACC_PASSWORD` text NOT NULL,
  `YEARLEVEL` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `STUDPHOTO` varchar(255) NOT NULL,
  PRIMARY KEY (`S_ID`),
  UNIQUE KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblstudent (1 records)
#
 
INSERT INTO `tblstudent` VALUES (1, 100000075, 'Annie', 'Paredes', 'L', 'Female', '1990-11-12', 'Binalbagan City', 'Single', 0, '09206589888', 'Catholic', '09206589888', 'Binalbagan City', '100000075', '90d3914f1162deea3630076521688cc5d46544a6', 0, 52, 'student_image/customerCLIP.jpg') ;
#
# End of data contents of table tblstudent
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstudent`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsy`
# --------------------------------------------------------


#
# Delete any existing table `tblsy`
#

DROP TABLE IF EXISTS `tblsy`;


#
# Table structure of table `tblsy`
#

CREATE TABLE `tblsy` (
  `AYID` int(11) NOT NULL AUTO_INCREMENT,
  `SY` varchar(30) NOT NULL,
  PRIMARY KEY (`AYID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblsy (1 records)
#
 
INSERT INTO `tblsy` VALUES (1, '2000-2001') ;
#
# End of data contents of table tblsy
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Wednesday 28. November 2018 13:43 CET
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstudent`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsy`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `useraccounts`
# --------------------------------------------------------


#
# Delete any existing table `useraccounts`
#

DROP TABLE IF EXISTS `useraccounts`;


#
# Table structure of table `useraccounts`
#

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  `EMPID` int(11) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`),
  UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table useraccounts (1 records)
#
 
INSERT INTO `useraccounts` VALUES (1, 'Janno Palacios', 'janobe', 'd033e22ae348aeb5660fc2140aec35850c4da997', 'Administrator', 1234, 'photos/LoginRed.jpg') ;
#
# End of data contents of table useraccounts
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------


#
# Delete any existing table `course`
#

DROP TABLE IF EXISTS `course`;


#
# Table structure of table `course`
#

CREATE TABLE `course` (
  `COURSE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `COURSE_NAME` varchar(30) NOT NULL,
  `COURSE_DESC` varchar(255) NOT NULL,
  `DEPT_ID` int(11) NOT NULL,
  `SETSEMESTER` varchar(90) NOT NULL,
  PRIMARY KEY (`COURSE_ID`),
  KEY `DEPT_ID` (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1 ;

#
# Data contents of table course (4 records)
#
 
INSERT INTO `course` VALUES (21, 'BSBA Financial Management', 'Bachelor of Science in Busines Administration ', 34, '') ; 
INSERT INTO `course` VALUES (24, 'AB Philosophy', 'Bachelor of ARTS (AB)', 34, '') ; 
INSERT INTO `course` VALUES (29, 'AB English', 'Bachelor of ARTS (AB)', 34, '') ; 
INSERT INTO `course` VALUES (52, 'BSIT', 'Bachelor of Science in Information Technology', 33, '') ;
#
# End of data contents of table course
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------


#
# Delete any existing table `department`
#

DROP TABLE IF EXISTS `department`;


#
# Table structure of table `department`
#

CREATE TABLE `department` (
  `DEPT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `DEPARTMENT_NAME` varchar(30) NOT NULL,
  `DEPARTMENT_DESC` varchar(50) NOT NULL,
  PRIMARY KEY (`DEPT_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=37 DEFAULT CHARSET=latin1 ;

#
# Data contents of table department (4 records)
#
 
INSERT INTO `department` VALUES (33, 'IT', 'Information Technology Department') ; 
INSERT INTO `department` VALUES (34, 'BITE', 'Business and IT Education') ; 
INSERT INTO `department` VALUES (35, 'TEA', 'Teacher Education Department') ; 
INSERT INTO `department` VALUES (36, 'arts', 'Arts Department') ;
#
# End of data contents of table department
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------


#
# Delete any existing table `grades`
#

DROP TABLE IF EXISTS `grades`;


#
# Table structure of table `grades`
#

CREATE TABLE `grades` (
  `GRADE_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` varchar(90) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `FIRST` int(11) NOT NULL,
  `SECOND` int(11) NOT NULL,
  `THIRD` int(11) NOT NULL,
  `FOURTH` int(11) NOT NULL,
  `AVE` float NOT NULL,
  `REMARKS` text NOT NULL,
  `COMMENT` text NOT NULL,
  `SEMS` varchar(90) NOT NULL,
  PRIMARY KEY (`GRADE_ID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 ;

#
# Data contents of table grades (32 records)
#
 
INSERT INTO `grades` VALUES (1, '2018-SC-0001', 1, 0, 0, 0, 0, '80', 'Passed', '', 'First') ; 
INSERT INTO `grades` VALUES (2, '2018-SC-0001', 2, 0, 0, 0, 0, '67', 'Failed', '', 'First') ; 
INSERT INTO `grades` VALUES (3, '2018-SC-0001', 3, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (4, '2018-SC-0001', 4, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (5, '2018-SC-0001', 5, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (6, '2018-SC-0001', 6, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (7, '2018-SC-0001', 7, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (8, '2018-SC-0001', 8, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (9, '2018-SC-0001', 9, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (10, '2018-SC-0001', 10, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (11, '2018-SC-0001', 11, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (12, '2018-SC-0001', 12, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (13, '2018-SC-0001', 13, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (14, '2018-SC-0001', 14, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (15, '2018-SC-0001', 15, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (16, '2018-SC-0001', 16, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (17, '15-SC-0836', 1, 0, 0, 0, 0, '90', 'Passed', '', 'First') ; 
INSERT INTO `grades` VALUES (18, '15-SC-0836', 2, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (19, '15-SC-0836', 3, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (20, '15-SC-0836', 4, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (21, '15-SC-0836', 5, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (22, '15-SC-0836', 6, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (23, '15-SC-0836', 7, 0, 0, 0, 0, '0', '', '', 'First') ; 
INSERT INTO `grades` VALUES (24, '15-SC-0836', 8, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (25, '15-SC-0836', 9, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (26, '15-SC-0836', 10, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (27, '15-SC-0836', 11, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (28, '15-SC-0836', 12, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (29, '15-SC-0836', 13, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (30, '15-SC-0836', 14, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (31, '15-SC-0836', 15, 0, 0, 0, 0, '0', '', '', 'Second') ; 
INSERT INTO `grades` VALUES (32, '15-SC-0836', 16, 0, 0, 0, 0, '0', '', '', 'First') ;
#
# End of data contents of table grades
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------


#
# Delete any existing table `studentsubjects`
#

DROP TABLE IF EXISTS `studentsubjects`;


#
# Table structure of table `studentsubjects`
#

CREATE TABLE `studentsubjects` (
  `STUDSUBJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` varchar(90) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `LEVEL` varchar(90) NOT NULL,
  `SECTIONID` int(11) NOT NULL,
  `SEMESTER` varchar(30) NOT NULL,
  `SY` text NOT NULL,
  `ATTEMP` int(11) NOT NULL,
  `AVERAGE` double NOT NULL,
  `OUTCOME` text NOT NULL,
  PRIMARY KEY (`STUDSUBJ_ID`),
  KEY `IDNO` (`IDNO`),
  KEY `SUBJ_ID` (`SUBJ_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=33 DEFAULT CHARSET=latin1 ;

#
# Data contents of table studentsubjects (32 records)
#
 
INSERT INTO `studentsubjects` VALUES (1, '2018-SC-0001', 1, 'First Year', 1, 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (2, '2018-SC-0001', 2, 'First Year', 0, 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (3, '2018-SC-0001', 3, 'First Year', 0, 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (4, '2018-SC-0001', 4, 'First Year', 0, 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (5, '2018-SC-0001', 5, 'First Year', 0, 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (6, '2018-SC-0001', 6, 'First Year', 0, 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (7, '2018-SC-0001', 7, 'First Year', 0, 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (8, '2018-SC-0001', 8, 'Fourth Year', 0, 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (9, '2018-SC-0001', 9, 'First Year', 0, 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (10, '2018-SC-0001', 10, 'First Year', 0, 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (11, '2018-SC-0001', 11, 'First Year', 0, 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (12, '2018-SC-0001', 12, 'First Year', 0, 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (13, '2018-SC-0001', 13, 'First Year', 0, 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (14, '2018-SC-0001', 14, 'First Year', 0, 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (15, '2018-SC-0001', 15, 'First Year', 0, 'Second', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (16, '2018-SC-0001', 16, 'Second Year', 0, 'First', '2000-2001', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (17, '15-SC-0836', 1, 'First Year', 1, 'First', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (18, '15-SC-0836', 2, 'First Year', 0, 'First', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (19, '15-SC-0836', 3, 'First Year', 0, 'First', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (20, '15-SC-0836', 4, 'First Year', 0, 'First', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (21, '15-SC-0836', 5, 'First Year', 0, 'First', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (22, '15-SC-0836', 6, 'First Year', 0, 'First', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (23, '15-SC-0836', 7, 'First Year', 0, 'First', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (24, '15-SC-0836', 8, 'Third Year', 0, 'Second', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (25, '15-SC-0836', 9, 'First Year', 0, 'Second', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (26, '15-SC-0836', 10, 'First Year', 0, 'Second', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (27, '15-SC-0836', 11, 'First Year', 0, 'Second', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (28, '15-SC-0836', 12, 'First Year', 0, 'Second', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (29, '15-SC-0836', 13, 'First Year', 0, 'Second', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (30, '15-SC-0836', 14, 'First Year', 0, 'Second', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (31, '15-SC-0836', 15, 'First Year', 0, 'Second', 'Select', 1, '0', '') ; 
INSERT INTO `studentsubjects` VALUES (32, '15-SC-0836', 16, 'Second Year', 0, 'First', 'Select', 1, '0', '') ;
#
# End of data contents of table studentsubjects
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------


#
# Delete any existing table `subject`
#

DROP TABLE IF EXISTS `subject`;


#
# Table structure of table `subject`
#

CREATE TABLE `subject` (
  `SUBJ_ID` int(11) NOT NULL AUTO_INCREMENT,
  `SUBJ_CODE` varchar(30) NOT NULL,
  `SUBJ_DESCRIPTION` varchar(255) NOT NULL,
  `UNIT` int(2) NOT NULL,
  `PRE_REQUISITE` varchar(30) NOT NULL DEFAULT 'None',
  `COURSE_ID` int(11) NOT NULL,
  `YEARLEVEL` varchar(90) NOT NULL,
  `SECTIONID` int(11) NOT NULL,
  `AY` varchar(90) NOT NULL,
  `SEMESTER` varchar(20) NOT NULL,
  `PreTaken` tinyint(1) NOT NULL,
  `CURRICULUM` varchar(90) NOT NULL DEFAULT 'New Curriculum',
  PRIMARY KEY (`SUBJ_ID`),
  KEY `COURSE_ID` (`COURSE_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1 ;

#
# Data contents of table subject (16 records)
#
 
INSERT INTO `subject` VALUES (1, 'IT 101', 'IT Fundamentals', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (2, 'IT 102', 'Integrated Aplication Software and Productivity Tools', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (3, 'IT 103', 'Programming I', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (4, 'Math 101', 'College Algebra', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (5, 'Stat 102', 'Probability Statistics', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (6, 'PE 101', 'Physical Fitness', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (7, 'NSTP 1', 'ROTC / CWTS / LTS 1', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'First', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (8, 'IT 104', 'Programming 2', 3, 'IT 103', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (9, 'IT 201', 'Logic Design', 3, 'IT 101', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (10, 'Math 102', 'Plane Trigonometry', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (11, 'Eng 102', 'Speech Communication with Debate', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (12, 'NatSci 101', 'Biological Science', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (13, 'SocSci 101', 'Philippine History', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (14, 'PE 102', 'Rhythmic Activities, Folk and Social Dancing', 2, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (15, 'NSTP 2', 'ROTC / CWTS / LTS 2', 3, 'NONE', 52, 'First Year', 1, '2000-2001', 'Second', 0, 'New Curriculum') ; 
INSERT INTO `subject` VALUES (16, 'IT 105', 'Computer Organization', 3, 'IT  201', 52, 'Second Year', 1, '2000-2001', 'First', 0, 'New Curriculum') ;
#
# End of data contents of table subject
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------


#
# Delete any existing table `tblannouncement`
#

DROP TABLE IF EXISTS `tblannouncement`;


#
# Table structure of table `tblannouncement`
#

CREATE TABLE `tblannouncement` (
  `ANNOUNCEMENTID` int(11) NOT NULL AUTO_INCREMENT,
  `ANNOUNCEMENT_TEXT` text NOT NULL,
  `ANNOUNCEMENT_WHAT` text NOT NULL,
  `DATEPOSTED` datetime NOT NULL,
  `AUTHOR` varchar(90) NOT NULL,
  PRIMARY KEY (`ANNOUNCEMENTID`)
) ENGINE=InnoDB AUTO_INCREMENT=2018007 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblannouncement (3 records)
#
 
INSERT INTO `tblannouncement` VALUES (2018004, 'asdas', '<p>asdasd</p>', '2018-11-29 10:55:28', '100000074') ; 
INSERT INTO `tblannouncement` VALUES (2018005, 'asdsadas', '<p>asdasdas</p>', '2018-11-29 10:56:30', 'Annie Paredes') ; 
INSERT INTO `tblannouncement` VALUES (2018006, 'Test Announcement', '<p>Test</p>', '2018-11-30 14:26:10', 'Janno Palacios') ;
#
# End of data contents of table tblannouncement
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------


#
# Delete any existing table `tblauto`
#

DROP TABLE IF EXISTS `tblauto`;


#
# Table structure of table `tblauto`
#

CREATE TABLE `tblauto` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `autocode` varchar(255) DEFAULT NULL,
  `autoname` varchar(255) DEFAULT NULL,
  `appendchar` varchar(255) DEFAULT NULL,
  `autostart` varchar(30) DEFAULT '0',
  `autoend` int(11) DEFAULT '0',
  `incrementvalue` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `autocode` (`autocode`)
) ENGINE=MyISAM AUTO_INCREMENT=6 DEFAULT CHARSET=utf8 ;

#
# Data contents of table tblauto (5 records)
#
 
INSERT INTO `tblauto` VALUES (1, 'Asset', 'Asset', 'ASitem', '0', 3, 1) ; 
INSERT INTO `tblauto` VALUES (2, 'Trans', 'Transaction', 'TrAnS', '1', 5, 1) ; 
INSERT INTO `tblauto` VALUES (3, 'SIDNO', 'IDNO', '2015', 'SC-000', 4, 1) ; 
INSERT INTO `tblauto` VALUES (4, 'EMPLOYEE', 'EMPID', '020010', '0', 2, 1) ; 
INSERT INTO `tblauto` VALUES (5, 'BLOGID', 'Announcement', '1', '00', 7, 1) ;
#
# End of data contents of table tblauto
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------


#
# Delete any existing table `tblexpenses`
#

DROP TABLE IF EXISTS `tblexpenses`;


#
# Table structure of table `tblexpenses`
#

CREATE TABLE `tblexpenses` (
  `EXPENSEID` int(11) NOT NULL AUTO_INCREMENT,
  `AMOUNT` double NOT NULL,
  `DESCRIPTION` varchar(90) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  PRIMARY KEY (`EXPENSEID`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblexpenses (2 records)
#
 
INSERT INTO `tblexpenses` VALUES (4, '300', 'Fee', 52) ; 
INSERT INTO `tblexpenses` VALUES (5, '400', 'New Fee', 52) ;
#
# End of data contents of table tblexpenses
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfees`
# --------------------------------------------------------


#
# Delete any existing table `tblfees`
#

DROP TABLE IF EXISTS `tblfees`;


#
# Table structure of table `tblfees`
#

CREATE TABLE `tblfees` (
  `FEEID` int(11) NOT NULL AUTO_INCREMENT,
  `EXPENSEID` int(11) NOT NULL,
  `IDNO` varchar(90) NOT NULL,
  `PAYMENT` double NOT NULL,
  `REMARKS` text NOT NULL,
  `USERNAME` varchar(90) NOT NULL,
  `TRANSDATE` datetime NOT NULL,
  PRIMARY KEY (`FEEID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblfees (2 records)
#
 
INSERT INTO `tblfees` VALUES (2, 4, '2018-SC-0001', '300', 'paid', '2018-SC-0001', '2018-12-01 00:00:00') ; 
INSERT INTO `tblfees` VALUES (3, 5, '2018-SC-0001', '400', 'paid', '2018-SC-0001', '2018-12-01 00:00:00') ;
#
# End of data contents of table tblfees
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfees`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllecturersubject`
# --------------------------------------------------------


#
# Delete any existing table `tbllecturersubject`
#

DROP TABLE IF EXISTS `tbllecturersubject`;


#
# Table structure of table `tbllecturersubject`
#

CREATE TABLE `tbllecturersubject` (
  `INST_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_ID` int(11) NOT NULL,
  `SUBJ_ID` int(11) NOT NULL,
  `SECTIONID` int(11) NOT NULL,
  `AY` varchar(90) NOT NULL,
  PRIMARY KEY (`INST_ID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbllecturersubject (3 records)
#
 
INSERT INTO `tbllecturersubject` VALUES (4, 13, 1, 1, '2000-2001') ; 
INSERT INTO `tbllecturersubject` VALUES (5, 13, 2, 1, '2000-2001') ; 
INSERT INTO `tbllecturersubject` VALUES (6, 13, 3, 1, '2000-2001') ;
#
# End of data contents of table tbllecturersubject
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfees`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllecturersubject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------


#
# Delete any existing table `tbllevel`
#

DROP TABLE IF EXISTS `tbllevel`;


#
# Table structure of table `tbllevel`
#

CREATE TABLE `tbllevel` (
  `LEVELID` int(11) NOT NULL AUTO_INCREMENT,
  `YEARLEVEL` varchar(30) NOT NULL,
  `SECTION` varchar(90) NOT NULL,
  PRIMARY KEY (`LEVELID`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbllevel (4 records)
#
 
INSERT INTO `tbllevel` VALUES (3, 'First Year', '') ; 
INSERT INTO `tbllevel` VALUES (4, 'Second Year', '') ; 
INSERT INTO `tbllevel` VALUES (5, 'Third Year', '') ; 
INSERT INTO `tbllevel` VALUES (6, 'Fourth Year', '') ;
#
# End of data contents of table tbllevel
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfees`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllecturersubject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------


#
# Delete any existing table `tbllogs`
#

DROP TABLE IF EXISTS `tbllogs`;


#
# Table structure of table `tbllogs`
#

CREATE TABLE `tbllogs` (
  `LOGID` int(11) NOT NULL AUTO_INCREMENT,
  `USERID` int(11) NOT NULL,
  `LOGDATETIME` datetime NOT NULL,
  `LOGROLE` varchar(55) NOT NULL,
  `LOGMODE` varchar(55) NOT NULL,
  PRIMARY KEY (`LOGID`)
) ENGINE=InnoDB AUTO_INCREMENT=130 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tbllogs (129 records)
#
 
INSERT INTO `tbllogs` VALUES (1, 1, '2016-09-22 21:46:01', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (2, 100000022, '2016-09-22 21:46:29', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (3, 100000015, '2016-09-23 05:00:38', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (4, 100000015, '2016-09-23 05:00:45', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (5, 100000025, '2016-09-23 05:02:31', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (6, 100000025, '2016-09-23 05:02:55', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (7, 100000025, '2016-09-23 05:03:53', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (8, 100000025, '2016-09-23 05:11:40', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (9, 100000025, '2016-09-24 09:32:59', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (10, 1, '2016-09-24 09:46:06', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (11, 1, '2016-09-24 09:53:17', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (12, 1, '2016-09-24 09:54:45', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (13, 100000027, '2016-09-24 15:30:32', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (14, 100000015, '2016-09-27 09:34:11', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (15, 1, '2016-09-27 10:59:58', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (16, 100000015, '2016-09-27 11:00:42', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (17, 100000029, '2016-09-27 17:34:11', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (18, 100000015, '0000-00-00 00:00:00', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (19, 100000015, '2016-09-27 17:37:13', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (20, 100000029, '2016-09-27 18:27:40', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (21, 100000015, '2016-09-27 18:27:56', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (22, 100000015, '2016-09-27 18:29:20', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (23, 100000030, '2016-09-27 22:49:02', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (24, 100000015, '2016-09-27 22:50:10', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (25, 100000015, '2016-09-28 01:47:07', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (26, 100000033, '2016-09-28 04:43:26', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (27, 1, '2016-10-01 04:07:48', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (28, 100000056, '2016-10-01 09:22:17', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (29, 100000056, '2016-10-01 09:22:51', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (30, 100000056, '2016-10-01 09:23:30', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (31, 100000056, '2016-10-01 12:52:40', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (32, 100000057, '2016-10-01 15:28:47', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (33, 100000058, '2016-10-01 15:44:01', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (34, 100000057, '2016-10-01 15:44:11', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (35, 100000057, '2016-10-01 16:38:34', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (36, 100000061, '2016-10-01 16:50:27', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (37, 100000061, '2016-10-01 18:08:05', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (38, 1, '2016-10-02 01:12:39', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (39, 100000067, '2016-10-02 01:58:35', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (40, 100000068, '2016-10-02 02:16:08', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (41, 100000069, '2016-10-02 02:20:24', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (42, 100000071, '2016-10-02 09:16:51', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (43, 1, '2018-11-27 07:03:09', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (44, 1, '2018-11-27 10:39:57', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (45, 1, '2018-11-27 10:42:19', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (46, 1, '2018-11-27 10:44:25', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (47, 1, '2018-11-27 10:49:41', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (48, 1, '2018-11-27 11:03:31', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (49, 1, '2018-11-27 12:50:29', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (50, 1, '2018-11-28 04:51:58', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (51, 1, '2018-11-28 20:16:18', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (52, 100000074, '2018-11-28 20:16:53', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (53, 1, '2018-11-28 21:06:53', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (54, 1, '2018-11-28 21:07:26', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (55, 100000074, '2018-11-28 23:08:35', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (56, 100000074, '2018-11-28 23:10:44', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (57, 100000074, '2018-11-28 23:24:34', 'Student', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (58, 1, '2018-11-29 09:57:42', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (59, 100000074, '2018-11-29 09:58:12', 'Student', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (60, 1, '2018-11-30 12:11:25', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (61, 1, '2018-11-30 13:32:17', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (62, 1, '2018-11-30 14:25:42', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (63, 1, '2018-11-30 20:43:10', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (64, 1, '2018-12-01 03:20:44', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (65, 1, '2018-12-01 03:21:10', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (66, 1, '2018-12-01 03:21:21', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (67, 1, '2018-12-01 03:29:17', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (68, 1, '2018-12-01 03:34:33', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (69, 11, '2018-12-01 04:47:26', 'Officer', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (70, 1, '2018-12-01 04:47:33', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (71, 1, '2018-12-01 04:47:47', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (72, 12, '2018-12-01 07:13:58', 'Officer', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (73, 1, '2018-12-01 07:14:10', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (74, 1, '2018-12-01 07:14:35', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (75, 1, '2018-12-01 07:14:45', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (76, 1, '2018-12-02 21:28:41', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (77, 12, '2018-12-02 21:41:34', 'Officer', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (78, 1, '2018-12-02 21:41:44', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (79, 1, '2018-12-02 21:42:33', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (80, 13, '2018-12-02 21:42:41', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (81, 13, '2018-12-02 21:50:23', 'Instructor', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (82, 13, '2018-12-02 21:52:23', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (83, 13, '2018-12-02 21:55:43', 'Instructor', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (84, 14, '2018-12-02 22:17:01', 'Officer', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (85, 1, '2018-12-02 22:17:09', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (86, 1, '2018-12-02 23:50:40', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (87, 1, '2018-12-03 00:02:22', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (88, 1, '2018-12-03 00:03:28', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (89, 15, '2018-12-03 00:03:36', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (90, 15, '2018-12-03 00:05:17', 'Instructor', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (91, 15, '2018-12-03 00:05:31', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (92, 15, '2018-12-03 00:07:13', 'Instructor', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (93, 15, '2018-12-03 00:07:36', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (94, 15, '2018-12-03 00:09:45', 'Instructor', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (95, 15, '2018-12-03 00:10:10', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (96, 15, '2018-12-03 00:12:13', 'Instructor', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (97, 15, '2018-12-03 00:12:24', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (98, 15, '2018-12-03 00:16:41', 'Instructor', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (99, 1, '2018-12-03 00:16:56', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (100, 1, '2018-12-03 00:20:39', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (101, 15, '2018-12-03 00:20:51', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (102, 15, '2018-12-03 00:21:41', 'Instructor', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (103, 15, '2018-12-03 00:21:48', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (104, 15, '2018-12-03 00:22:05', 'Instructor', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (105, 1, '2018-12-03 00:22:12', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (106, 1, '2018-12-03 00:37:47', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (107, 1, '2018-12-03 01:42:38', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (108, 1, '2018-12-03 02:22:22', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (109, 1, '2018-12-03 02:45:42', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (110, 15, '2018-12-03 02:47:25', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (111, 15, '2018-12-03 02:47:45', 'Instructor', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (112, 1, '2018-12-03 02:48:19', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (113, 1, '2018-12-03 02:48:55', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (114, 16, '2018-12-03 02:50:26', 'Officer', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (115, 1, '2018-12-03 02:50:45', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (116, 1, '2018-12-03 02:51:00', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (117, 1, '2018-12-03 02:52:19', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (118, 1, '2018-12-03 02:52:58', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (119, 17, '2018-12-03 03:19:20', 'Officer', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (120, 17, '2018-12-03 03:25:40', 'Officer', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (121, 1, '2018-12-03 03:28:32', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (122, 1, '2018-12-04 00:55:32', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (123, 1, '2018-12-04 06:53:56', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (124, 1, '2018-12-04 09:56:41', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (125, 1, '2018-12-04 10:12:24', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (126, 13, '2018-12-04 10:12:29', 'Instructor', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (127, 1, '2019-10-22 14:15:17', 'Administrator', 'Logged in') ; 
INSERT INTO `tbllogs` VALUES (128, 1, '2019-10-22 14:44:08', 'Administrator', 'Logged out') ; 
INSERT INTO `tbllogs` VALUES (129, 1, '2019-10-22 14:44:17', 'Administrator', 'Logged in') ;
#
# End of data contents of table tbllogs
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfees`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllecturersubject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------


#
# Delete any existing table `tblsection`
#

DROP TABLE IF EXISTS `tblsection`;


#
# Table structure of table `tblsection`
#

CREATE TABLE `tblsection` (
  `SECTIONID` int(11) NOT NULL AUTO_INCREMENT,
  `SECTION` varchar(90) NOT NULL,
  PRIMARY KEY (`SECTIONID`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblsection (2 records)
#
 
INSERT INTO `tblsection` VALUES (1, 'A') ; 
INSERT INTO `tblsection` VALUES (2, 'B') ;
#
# End of data contents of table tblsection
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfees`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllecturersubject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------


#
# Delete any existing table `tblsemester`
#

DROP TABLE IF EXISTS `tblsemester`;


#
# Table structure of table `tblsemester`
#

CREATE TABLE `tblsemester` (
  `SEMID` int(11) NOT NULL AUTO_INCREMENT,
  `SEMESTER` varchar(90) NOT NULL,
  `SETSEM` tinyint(1) NOT NULL,
  PRIMARY KEY (`SEMID`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblsemester (3 records)
#
 
INSERT INTO `tblsemester` VALUES (1, 'First', 0) ; 
INSERT INTO `tblsemester` VALUES (2, 'Second', 0) ; 
INSERT INTO `tblsemester` VALUES (3, 'Summer', 1) ;
#
# End of data contents of table tblsemester
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfees`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllecturersubject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------


#
# Delete any existing table `tblstuddetails`
#

DROP TABLE IF EXISTS `tblstuddetails`;


#
# Table structure of table `tblstuddetails`
#

CREATE TABLE `tblstuddetails` (
  `DETAIL_ID` int(11) NOT NULL AUTO_INCREMENT,
  `GUARDIAN` varchar(255) NOT NULL,
  `GUARDIAN_ADDRESS` varchar(255) NOT NULL,
  `GCONTACT` varchar(40) NOT NULL,
  `IDNO` varchar(90) NOT NULL,
  PRIMARY KEY (`DETAIL_ID`),
  KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblstuddetails (2 records)
#
 
INSERT INTO `tblstuddetails` VALUES (1, 'Bless Paredes', '', '09306587988', '2018-SC-0001') ; 
INSERT INTO `tblstuddetails` VALUES (2, '', '', '', '15-SC-0836') ;
#
# End of data contents of table tblstuddetails
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfees`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllecturersubject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstudent`
# --------------------------------------------------------


#
# Delete any existing table `tblstudent`
#

DROP TABLE IF EXISTS `tblstudent`;


#
# Table structure of table `tblstudent`
#

CREATE TABLE `tblstudent` (
  `S_ID` int(11) NOT NULL AUTO_INCREMENT,
  `IDNO` varchar(90) NOT NULL,
  `FNAME` varchar(40) NOT NULL,
  `LNAME` varchar(40) NOT NULL,
  `MNAME` varchar(40) NOT NULL,
  `SEX` varchar(10) NOT NULL DEFAULT 'Male',
  `BDAY` date NOT NULL,
  `BPLACE` text NOT NULL,
  `STATUS` varchar(30) NOT NULL,
  `AGE` int(30) NOT NULL,
  `NATIONALITY` varchar(40) NOT NULL,
  `RELIGION` varchar(255) NOT NULL,
  `CONTACT_NO` varchar(40) NOT NULL,
  `HOME_ADD` text NOT NULL,
  `ACC_USERNAME` varchar(255) NOT NULL,
  `ACC_PASSWORD` text NOT NULL,
  `YEARLEVEL` int(11) NOT NULL,
  `COURSE_ID` int(11) NOT NULL,
  `STUDPHOTO` varchar(255) NOT NULL,
  `ACCOUNTTYPE` varchar(90) NOT NULL DEFAULT 'Student',
  PRIMARY KEY (`S_ID`),
  UNIQUE KEY `IDNO` (`IDNO`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblstudent (2 records)
#
 
INSERT INTO `tblstudent` VALUES (1, '2018-SC-0001', 'Annie', 'Paredes', 'L', 'Female', '1990-11-11', 'Binalbagan City', 'Single', 0, '09206589888', 'Catholic', '09206589888', 'Binalbagan City', '2018-SC-0001', '0bd6f980e6605d114f65981d40c8259d66ec7c49', 0, 52, 'student_image/customerCLIP.jpg', 'Officer') ; 
INSERT INTO `tblstudent` VALUES (2, '15-SC-0836', 'JASON', 'ALCANTARA', 'L', 'Male', '1999-02-05', '', 'Select', 0, '', '', '', 'SAN CARLOS CITY, PANGASINAN', '15-SC-0836', '30a8fe2aa9307a1cbd8ec717e3f64e780d4398b7', 0, 52, 'student_image/invoiceCLIP.jpg', 'Officer') ;
#
# End of data contents of table tblstudent
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfees`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllecturersubject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstudent`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsy`
# --------------------------------------------------------


#
# Delete any existing table `tblsy`
#

DROP TABLE IF EXISTS `tblsy`;


#
# Table structure of table `tblsy`
#

CREATE TABLE `tblsy` (
  `AYID` int(11) NOT NULL AUTO_INCREMENT,
  `SY` varchar(30) NOT NULL,
  PRIMARY KEY (`AYID`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1 ;

#
# Data contents of table tblsy (1 records)
#
 
INSERT INTO `tblsy` VALUES (1, '2000-2001') ;
#
# End of data contents of table tblsy
# --------------------------------------------------------

# WordPress : buffernow.com MySQL database backup
#
# Generated: Tuesday 22. October 2019 14:45 CEST
# Hostname: localhost
# Database: `db_chmbac`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `course`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `department`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `grades`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `studentsubjects`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `subject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblannouncement`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblauto`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblexpenses`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblfees`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllecturersubject`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllevel`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tbllogs`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsection`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsemester`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstuddetails`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblstudent`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `tblsy`
# --------------------------------------------------------
# --------------------------------------------------------
# Table: `useraccounts`
# --------------------------------------------------------


#
# Delete any existing table `useraccounts`
#

DROP TABLE IF EXISTS `useraccounts`;


#
# Table structure of table `useraccounts`
#

CREATE TABLE `useraccounts` (
  `ACCOUNT_ID` int(11) NOT NULL AUTO_INCREMENT,
  `ACCOUNT_NAME` varchar(255) NOT NULL,
  `ACCOUNT_USERNAME` varchar(255) NOT NULL,
  `ACCOUNT_PASSWORD` text NOT NULL,
  `ACCOUNT_TYPE` varchar(30) NOT NULL,
  `EMPID` varchar(90) NOT NULL,
  `POSITION` varchar(90) NOT NULL,
  `USERIMAGE` varchar(255) NOT NULL,
  PRIMARY KEY (`ACCOUNT_ID`),
  UNIQUE KEY `ACCOUNT_USERNAME` (`ACCOUNT_USERNAME`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=latin1 ;

#
# Data contents of table useraccounts (5 records)
#
 
INSERT INTO `useraccounts` VALUES (1, 'Enock', 'izzy', '271a77093bf07cdb81c0e82ce12c41dfa0a4d6ab', 'Administrator', '1234', '', 'photos/LoginRed.jpg') ; 
INSERT INTO `useraccounts` VALUES (13, 'janobe', 'i', '042dc4512fa3d391c5170cf3aa61e6a638f84342', 'Instructor', '', '', '') ; 
INSERT INTO `useraccounts` VALUES (14, 'Annie Paredes', '2018-SC-0001', '0bd6f980e6605d114f65981d40c8259d66ec7c49', 'Officer', '2018-SC-0001', 'President', '') ; 
INSERT INTO `useraccounts` VALUES (15, 'Evelyn B. Lomboy', 'SNCA-0001', '5bce3b6bb2c3dabfc8d74b2ef25cd32876a4f214', 'Instructor', '', '', '') ; 
INSERT INTO `useraccounts` VALUES (17, 'JASON ALCANTARA', '15-SC-0836', '30a8fe2aa9307a1cbd8ec717e3f64e780d4398b7', 'Officer', '15-SC-0836', 'Vice-President', '') ;
#
# End of data contents of table useraccounts
# --------------------------------------------------------

