-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 11, 2024 at 01:48 PM
-- Server version: 10.5.21-MariaDB-0+deb11u1
-- PHP Version: 8.1.23

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `fsandjaja03`
--

-- --------------------------------------------------------

--
-- Stand-in structure for view `CandidatesByCityView`
-- (See below for the actual view)
--
CREATE TABLE `CandidatesByCityView` (
`City` varchar(100)
,`CityCount` decimal(23,0)
);

-- --------------------------------------------------------

--
-- Stand-in structure for view `CandidatesInAntrim`
-- (See below for the actual view)
--
CREATE TABLE `CandidatesInAntrim` (
`FirstName` varchar(255)
,`LastName` varchar(255)
,`City` varchar(100)
);

-- --------------------------------------------------------

--
-- Table structure for table `Candidate_Details`
--

CREATE TABLE `Candidate_Details` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Phone` int(11) NOT NULL,
  `City` varchar(100) NOT NULL,
  `ZipCode` varchar(100) NOT NULL,
  `Nationality` varchar(100) NOT NULL,
  `VisaReq` tinyint(1) NOT NULL,
  `DocsID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Candidate_Details`
--

INSERT INTO `Candidate_Details` (`ID`, `FirstName`, `LastName`, `Email`, `Phone`, `City`, `ZipCode`, `Nationality`, `VisaReq`, `DocsID`) VALUES
(1, 'Johnny', 'Doew', 'johnny.doew@mail.com', 1234567, 'Belfast', '78920', 'British', 1, 1),
(2, 'Janneva', 'Smith', 'janneva.smith@mail.com', 9876543, 'Coleraine', '67890', 'Indian', 0, 2),
(3, 'Alicia', 'Johnson', 'alicia.johnson@mail.com', 5555825, 'Antrim', '11234', 'Singaporean', 1, 3),
(4, 'Bobby', 'Williams', 'bobby.williams@mail.com', 4144894, 'Belfast', '78920', 'Malaysian', 0, 4),
(5, 'Evanny', 'Brown', 'evanny.brown@mail.com', 9496793, 'Antrim', '11234', 'Mexican', 1, 5),
(6, 'Michaels', 'Lee', 'michaels.lee@mail.com', 1363532, 'Coleraine', '67890', 'Korean', 0, 6),
(7, 'Sophia', 'Miller', 'sophia.miller@mail.com', 7379705, 'Coleraine', '67890', 'Japanesse', 1, 7),
(8, 'Davud', 'Jones', 'daud.jones@mail.com', 6263516, 'Antrim', '11234', 'Indonesian', 0, 8),
(9, 'Oliva', 'White', 'oliva.white@mail.com', 2321524, 'Antrim', '11234', 'Russian', 1, 9),
(10, 'Ryana', 'Taylor', 'ryana.taylor@mail.com', 8038582, 'Belfast', '78920', 'American', 0, 10),
(11, 'Samuel', 'Turner', 'samuel.turner@mail.com', 6543210, 'Belfast', '78920', 'Australian', 1, 11),
(12, 'Emma', 'Johnson', 'emma.johnson@mail.com', 1234567, 'Coleraine', '67890', 'Canadian', 0, 12),
(13, 'Natalie', 'Harris', 'natalie.harris@mail.com', 5555825, 'Antrim', '11234', 'New Zealander', 1, 13),
(14, 'George', 'Roberts', 'george.roberts@mail.com', 4144894, 'Belfast', '78920', 'South African', 0, 14),
(15, 'Isabella', 'Smith', 'isabella.smith@mail.com', 9496793, 'Antrim', '11234', 'Brazilian', 1, 15),
(16, 'Christopher', 'Martin', 'christopher.martin@mail.com', 1363532, 'Coleraine', '67890', 'French', 0, 16),
(17, 'Victoria', 'Baker', 'victoria.baker@mail.com', 7379705, 'Coleraine', '67890', 'Italian', 1, 17),
(18, 'Andrew', 'Young', 'andrew.young@mail.com', 6263516, 'Antrim', '11234', 'German', 0, 18),
(19, 'Emily', 'Thompson', 'emily.thompson@mail.com', 2321524, 'Antrim', '11234', 'Chinese', 1, 19),
(20, 'William', 'Davis', 'william.davis@mail.com', 8038582, 'Belfast', '78920', 'Spanish', 0, 20),
(21, 'Emma', 'John', 'emma.john@mail.com', 1234567, 'Coleraine', '67890', 'Canadian', 0, 21),
(22, 'Natalia', 'Harrisa', 'natalia.harrisa@mail.com', 5555825, 'Antrim', '11234', 'New Zealander', 1, 22),
(23, 'Georgina', 'Roberts', 'georgina.roberts@mail.com', 4144894, 'Belfast', '78920', 'South African', 0, 23),
(24, 'Isabel', 'Smith', 'isabel.smith@mail.com', 9496793, 'Antrim', '11234', 'Brazilian', 1, 24),
(25, 'Christoper', 'Martin', 'christoper.martin@mail.com', 1363532, 'Coleraine', '67890', 'French', 0, 25),
(26, 'Victory', 'Baker', 'victory.baker@mail.com', 7379705, 'Coleraine', '67890', 'Italian', 1, 26),
(27, 'Andrew', 'Young', 'andrew.young@mail.com', 6263516, 'Antrim', '11234', 'German', 0, 27),
(28, 'Emilia', 'Thompson', 'emilia.thompson@mail.com', 2321524, 'Antrim', '11234', 'Chinese', 1, 28),
(29, 'Will', 'Davis', 'will.davis@mail.com', 8038582, 'Belfast', '78920', 'Spanish', 0, 29),
(30, 'Samuel', 'Turner', 'samuel.turner@mail.com', 6543210, 'Belfast', '78920', 'Australian', 1, 30),
(31, 'Emily', 'Johnson', 'emily.johnson@mail.com', 1234567, 'Coleraine', '67890', 'Canadian', 0, 31),
(32, 'Natasha', 'Harris', 'natasha.harris@mail.com', 5555825, 'Antrim', '11234', 'New Zealander', 1, 32),
(33, 'George', 'Roberto', 'george.roberto@mail.com', 4144894, 'Belfast', '78920', 'South African', 0, 33),
(34, 'Gianna', 'Smith', 'Gianna.smith@mail.com', 9496793, 'Antrim', '11234', 'Brazilian', 1, 34),
(35, 'Christo', 'Martin', 'christo.martin@mail.com', 1363532, 'Coleraine', '67890', 'French', 0, 35),
(36, 'Vally', 'Baker', 'vally.baker@mail.com', 7379705, 'Coleraine', '67890', 'Italian', 1, 36),
(37, 'Adri', 'Young', 'adri.young@mail.com', 6263516, 'Antrim', '11234', 'German', 0, 37),
(38, 'Edward', 'Thompson', 'edward.thompson@mail.com', 2321524, 'Antrim', '11234', 'Chinese', 1, 38),
(39, 'Willy', 'Dash', 'willy.dash@mail.com', 8038582, 'Belfast', '78920', 'Spanish', 0, 39),
(40, 'Saskia', 'Turner', 'saskia.turner@mail.com', 6543210, 'Belfast', '78920', 'Australian', 1, 40),
(41, 'Juan', 'Wee', 'Jwee03@gmail,com', 837927, 'Antrim', 'BT8', 'Malaysian', 1, 33);

-- --------------------------------------------------------

--
-- Table structure for table `Candidate_Document`
--

CREATE TABLE `Candidate_Document` (
  `DocsID` int(11) NOT NULL,
  `CV` blob DEFAULT NULL,
  `CoverLetter` blob DEFAULT NULL,
  `Transcript` blob DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Candidate_Document`
--

INSERT INTO `Candidate_Document` (`DocsID`, `CV`, `CoverLetter`, `Transcript`) VALUES
(1, NULL, NULL, NULL),
(2, NULL, NULL, NULL),
(3, NULL, NULL, NULL),
(4, NULL, NULL, NULL),
(5, NULL, NULL, NULL),
(6, NULL, NULL, NULL),
(7, NULL, NULL, NULL),
(8, NULL, NULL, NULL),
(9, NULL, NULL, NULL),
(10, NULL, NULL, NULL),
(11, NULL, NULL, NULL),
(12, NULL, NULL, NULL),
(13, NULL, NULL, NULL),
(14, NULL, NULL, NULL),
(15, NULL, NULL, NULL),
(16, NULL, NULL, NULL),
(17, NULL, NULL, NULL),
(18, NULL, NULL, NULL),
(19, NULL, NULL, NULL),
(20, NULL, NULL, NULL),
(21, NULL, NULL, NULL),
(22, NULL, NULL, NULL),
(23, NULL, NULL, NULL),
(24, NULL, NULL, NULL),
(25, NULL, NULL, NULL),
(26, NULL, NULL, NULL),
(27, NULL, NULL, NULL),
(28, NULL, NULL, NULL),
(29, NULL, NULL, NULL),
(30, NULL, NULL, NULL),
(31, NULL, NULL, NULL),
(32, NULL, NULL, NULL),
(33, NULL, NULL, NULL),
(34, NULL, NULL, NULL),
(35, NULL, NULL, NULL),
(36, NULL, NULL, NULL),
(37, NULL, NULL, NULL),
(38, NULL, NULL, NULL),
(39, NULL, NULL, NULL),
(40, NULL, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Company`
--

CREATE TABLE `Company` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Employer_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Company`
--

INSERT INTO `Company` (`ID`, `Name`, `Email`, `Employer_ID`) VALUES
(1, 'Tech Solutions Ltd', 'info@techsolutions.com', 101),
(2, 'Innovate Innovations Inc.', 'contact@innovate.com', 102),
(3, 'Global Services Co.', 'info@globalservices.com', 103),
(4, 'Swift Enterprises', 'hr@swiftenterprises.com', 104),
(5, 'Dynamic Minds Technologies', 'info@dynamicminds.com', 105),
(6, 'Smart Solutions Corp.', 'info@smartsolutionscorp.com', 106),
(7, 'Elite Innovations Ltd.', 'contact@eliteinnovations.com', 107),
(8, 'Pinnacle Solutions Group', 'info@pinnaclesolutionsgroup.com', 108),
(9, 'Creative Minds Co.', 'hr@creativeminds.com', 109),
(10, 'Infinite Innovations Ltd.', 'info@infinite-innovations.com', 110),
(11, 'Tech Innovations Ltd.', 'info@techinnovations.com', 111),
(12, 'Innovate Technologies Inc.', 'contact@innovate-tech.com', 112),
(13, 'Global Solutions Corp.', 'info@globalsolutionscorp.com', 113),
(14, 'Swift Technologies', 'hr@swifttechnologies.com', 114),
(15, 'Dynamic Innovations Group', 'info@dynamicinnovationsgroup.com', 115),
(16, 'Smart Minds Solutions', 'info@smartmindssolutions.com', 116),
(17, 'Elite Tech Innovations', 'contact@elitetechinnovations.com', 117),
(18, 'Pinnacle Innovations', 'info@pinnacleinnovations.com', 118),
(19, 'Creative Solutions Co.', 'hr@creativesolutions.com', 119),
(20, 'Infinite Dynamics Technologies', 'info@infinite-dynamics.com', 120),
(21, 'Tech Minds Ltd.', 'info@techminds.com', 121),
(22, 'Innovate Solutions Inc.', 'contact@innovate-solutions.com', 122),
(23, 'Global Innovations Co.', 'info@globalinnovations.com', 123),
(24, 'Swift Innovations Enterprises', 'hr@swiftinnovations.com', 124),
(25, 'Dynamic Innovations Technologies', 'info@dynamicinnovations.com', 125),
(26, 'Smart Dynamics Solutions', 'info@smartdynamics.com', 126),
(27, 'Elite Solutions Innovations', 'contact@elite-solutions.com', 127),
(28, 'Pinnacle Innovate Group', 'info@pinnacle-innovate.com', 128),
(29, 'Creative Dynamica Co.', 'hr@creativedynamica.com', 129),
(30, 'Infinite Innovate Technologies', 'info@infinite-innovate.com', 130),
(31, 'InnoTech Innovations', 'info@innotech.com', 131),
(32, 'Global Tech Services', 'info@globaltechservices.com', 132),
(33, 'Swifty Innovate Solutions', 'hr@swiftyinnovatesolutions.com', 133),
(34, 'Dynamic Minds Innovations', 'info@dynamicmindsinnovations.com', 134),
(35, 'Smartie Innovations Co.', 'info@smartieinnovationsco.com', 135),
(36, 'Elite Techno Solutions', 'contact@elitetechnosolutions.com', 136),
(37, 'Pinnaple Innovate Technologies', 'info@pinnapleinnovatetech.com', 137),
(38, 'Creative Innovations Group', 'hr@creativeinnovationsgroup.com', 138),
(39, 'Infinity Solutions Inc.', 'info@infinity-solutions.com', 139),
(40, 'Tech Dynamics Innovations', 'info@techdynamicsinnovations.com', 140);

-- --------------------------------------------------------

--
-- Table structure for table `Company_Employers`
--

CREATE TABLE `Company_Employers` (
  `ID` int(11) NOT NULL,
  `FirstName` varchar(255) NOT NULL,
  `LastName` varchar(255) NOT NULL,
  `Number` int(11) NOT NULL,
  `Email` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Company_Employers`
--

INSERT INTO `Company_Employers` (`ID`, `FirstName`, `LastName`, `Number`, `Email`) VALUES
(101, 'John', 'Doe', 1234567, 'john.doe@company1.com'),
(102, 'Jane', 'Smith', 9876543, 'jane.smith@company2.com'),
(103, 'Robert', 'Johnson', 1122334, 'robert.johnson@company3.com'),
(104, 'Emily', 'Williams', 9988776, 'emily.williams@company4.com'),
(105, 'Michael', 'Brown', 1123456, 'michael.brown@company5.com'),
(106, 'Sophie', 'Miller', 7654321, 'sophie.miller@company6.com'),
(107, 'David', 'Jones', 6543210, 'david.jones@company7.com'),
(108, 'Olivia', 'White', 2345678, 'olivia.white@company8.com'),
(109, 'Alex', 'Davis', 8765432, 'alex.davis@company9.com'),
(110, 'Emma', 'Taylor', 1987654, 'emma.taylor@company10.com'),
(111, 'John', 'Cena', 1234567, 'john.cena@company11.com'),
(112, 'Jennie', 'Swors', 9876543, 'jenny.swors@company12.com'),
(113, 'Roberto', 'Mark', 1122334, 'roberto.mark@company13.com'),
(114, 'Emily', 'Green', 9988776, 'emily.green@company14.com'),
(115, 'Franz', 'Brown', 1123456, 'franz.brown@company15.com'),
(116, 'Sandra', 'Muller', 7654321, 'sandra.muller@company16.com'),
(117, 'Jolly', 'Man', 6543210, 'jolly.man@company17.com'),
(118, 'Ozzy', 'White', 2345678, 'ozzy.white@company18.com'),
(119, 'Alexandra', 'Daud', 8765432, 'alexandra.daud@company19.com'),
(120, 'Emmanuela', 'Tawly', 1987654, 'emmanuela.tawly@company20.com'),
(121, 'Chris', 'Evans', 9988776, 'chris.evans@company21.com'),
(122, 'Michelle', 'Williams', 1123456, 'michelle.williams@company22.com'),
(123, 'Daniel', 'Miller', 7654321, 'daniel.miller@company23.com'),
(124, 'Eva', 'Johnson', 6543210, 'eva.johnson@company24.com'),
(125, 'Victor', 'White', 2345678, 'victor.white@company25.com'),
(126, 'Sophia', 'Dalla', 8765432, 'sophia.dalla@company26.com'),
(127, 'David', 'Taylor', 1987654, 'david.taylor@company27.com'),
(128, 'Oliver', 'Brown', 1123456, 'oliver.brown@company28.com'),
(129, 'Amelia', 'Smith', 7654321, 'amelia.smith@company29.com'),
(130, 'Matthew', 'Miller', 6543210, 'matthew.miller@company30.com'),
(131, 'Laura', 'Johnson', 2345678, 'laura.johnson@company31.com'),
(132, 'Christopher', 'Evans', 9988776, 'christopher.evans@company32.com'),
(133, 'Megan', 'Williams', 1123456, 'megan.williams@company33.com'),
(134, 'Nathan', 'Miller', 7654321, 'nathan.miller@company34.com'),
(135, 'Elena', 'Johnson', 6543210, 'elena.johnson@company35.com'),
(136, 'Vincent', 'White', 2345678, 'vincent.white@company36.com'),
(137, 'Sophie', 'Davis', 8765432, 'sophie.davis@company37.com'),
(138, 'Daniel', 'Taylor', 1987654, 'daniel.taylor@company38.com'),
(139, 'Olivina', 'Brown', 1123456, 'olivina.brown@company39.com'),
(140, 'Lucas', 'Smith', 7654321, 'lucas.smith@company40.com');

-- --------------------------------------------------------

--
-- Stand-in structure for view `EarlyApplicantsByJobView`
-- (See below for the actual view)
--
CREATE TABLE `EarlyApplicantsByJobView` (
`Job_ID` int(11)
,`FirstName` varchar(255)
,`LastName` varchar(255)
,`EarliestApplyDate` date
);

-- --------------------------------------------------------

--
-- Table structure for table `Interview`
--

CREATE TABLE `Interview` (
  `ID` int(11) NOT NULL,
  `Result_Code` int(11) NOT NULL,
  `Note` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Interview`
--

INSERT INTO `Interview` (`ID`, `Result_Code`, `Note`) VALUES
(1, 1, NULL),
(2, 2, NULL),
(3, 1, NULL),
(4, 2, NULL),
(5, 1, NULL),
(6, 2, NULL),
(7, 1, NULL),
(8, 2, NULL),
(9, 1, NULL),
(10, 2, NULL),
(11, 1, NULL),
(12, 2, NULL),
(13, 1, NULL),
(14, 2, NULL),
(15, 1, NULL),
(16, 2, NULL),
(17, 1, NULL),
(18, 2, NULL),
(19, 1, NULL),
(20, 2, NULL),
(21, 1, NULL),
(22, 2, NULL),
(23, 1, NULL),
(24, 2, NULL),
(25, 1, NULL),
(26, 2, NULL),
(27, 1, NULL),
(28, 2, NULL),
(29, 1, NULL),
(30, 2, NULL),
(31, 1, NULL),
(32, 2, NULL),
(33, 1, NULL),
(34, 2, NULL),
(35, 1, NULL),
(36, 2, NULL),
(37, 1, NULL),
(38, 2, NULL),
(39, 1, NULL),
(40, 2, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Job`
--

CREATE TABLE `Job` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Description` text NOT NULL,
  `Date_Open` date NOT NULL,
  `Closing_Date` date NOT NULL,
  `Start_Date` date NOT NULL,
  `Availability` int(11) NOT NULL,
  `Category_ID` int(11) NOT NULL,
  `Company_ID` int(11) NOT NULL,
  `City` varchar(100) NOT NULL,
  `ZipCode` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Job`
--

INSERT INTO `Job` (`ID`, `Name`, `Description`, `Date_Open`, `Closing_Date`, `Start_Date`, `Availability`, `Category_ID`, `Company_ID`, `City`, `ZipCode`) VALUES
(1, 'Software Engineer', 'Exciting role for a skilled software engineer.', '2024-05-01', '2024-06-01', '2024-07-01', 3, 1, 1, 'Belfast', 'BT1'),
(2, 'Data Scientist', 'Join our data science team and make a difference.', '2024-05-05', '2024-06-05', '2024-07-05', 2, 2, 2, 'Antrim', 'BT41'),
(3, 'Marketing Coordinator', 'Coordinate marketing efforts and drive success.', '2024-05-10', '2024-06-10', '2024-07-10', 5, 3, 3, 'Coleraine', 'BT52'),
(4, 'Customer Service Specialist', 'Provide exceptional customer service to our clients.', '2024-05-15', '2024-06-15', '2024-07-15', 4, 4, 4, 'Belfast', 'BT2'),
(5, 'UI/UX Designer', 'Create stunning user interfaces and experiences.', '2024-05-20', '2024-06-20', '2024-07-20', 6, 5, 5, 'Antrim', 'BT42'),
(6, 'IT Project Manager', 'Lead IT projects and drive successful outcomes.', '2024-05-25', '2024-06-25', '2024-07-25', 7, 6, 6, 'Coleraine', 'BT53'),
(7, 'Financial Advisor', 'Provide financial advice and support to clients.', '2024-06-01', '2024-07-01', '2024-08-01', 8, 7, 7, 'Belfast', 'BT3'),
(8, 'HR Manager', 'Manage HR functions and contribute to organizational success.', '2024-06-05', '2024-07-05', '2024-08-05', 9, 8, 8, 'Antrim', 'BT43'),
(9, 'Sales Manager', 'Lead and oversee the sales team for outstanding results.', '2024-06-10', '2024-07-10', '2024-08-10', 10, 9, 9, 'Coleraine', 'BT54'),
(10, 'Network Administrator', 'Administer and maintain network infrastructure.', '2024-06-15', '2024-07-15', '2024-08-15', 1, 10, 10, 'Belfast', 'BT4'),
(11, 'Database Administrator', 'Manage and optimize database systems.', '2024-06-20', '2024-07-20', '2024-08-20', 2, 1, 10, 'Antrim', 'BT44'),
(12, 'Software Tester', 'Ensure the quality of software through testing.', '2024-06-25', '2024-07-25', '2024-08-25', 3, 4, 1, 'Coleraine', 'BT55'),
(13, 'Digital Marketing Specialist', 'Execute digital marketing campaigns.', '2024-07-01', '2024-08-01', '2024-09-01', 5, 6, 11, 'Belfast', 'BT5'),
(14, 'Business Analyst', 'Analyze business processes and recommend improvements.', '2024-07-05', '2024-08-05', '2024-09-05', 4, 1, 3, 'Antrim', 'BT45'),
(15, 'Graphic Designer', 'Create visually appealing graphics and designs.', '2024-07-10', '2024-08-10', '2024-09-10', 6, 5, 15, 'Coleraine', 'BT56'),
(16, 'IT Support Specialist', 'Provide technical support to end-users.', '2024-07-15', '2024-08-15', '2024-09-15', 7, 6, 18, 'Belfast', 'BT6'),
(17, 'Financial Analyst', 'Analyze financial data and provide insights.', '2024-07-20', '2024-08-20', '2024-09-20', 8, 7, 17, 'Antrim', 'BT46'),
(18, 'Recruitment Specialist', 'Manage the recruitment process and find top talent.', '2024-07-25', '2024-08-25', '2024-09-25', 9, 1, 8, 'Coleraine', 'BT57'),
(19, 'Sales Representative', 'Promote and sell products or services.', '2024-08-01', '2024-09-01', '2024-10-01', 10, 9, 19, 'Belfast', 'BT7'),
(20, 'Network Engineer', 'Design and implement computer networks.', '2024-08-05', '2024-09-05', '2024-10-05', 1, 2, 2, 'Antrim', 'BT47'),
(21, 'Project Coordinator', 'Coordinate and oversee project activities.', '2024-08-10', '2024-09-10', '2024-10-10', 2, 2, 29, 'Coleraine', 'BT58'),
(22, 'Content Writer', 'Create engaging and informative content.', '2024-08-15', '2024-09-15', '2024-10-15', 3, 3, 20, 'Belfast', 'BT8'),
(23, 'Systems Analyst', 'Analyze and improve computer systems.', '2024-08-20', '2024-09-20', '2024-10-20', 4, 7, 23, 'Antrim', 'BT48'),
(24, 'Customer Support Specialist', 'Provide excellent support to customers.', '2024-08-25', '2024-09-25', '2024-10-25', 5, 4, 14, 'Coleraine', 'BT59'),
(25, 'Marketing Manager', 'Lead and oversee marketing strategies.', '2024-09-01', '2024-10-01', '2024-11-01', 6, 9, 25, 'Belfast', 'BT9'),
(26, 'IT Security Analyst', 'Ensure the security of IT systems and data.', '2024-09-05', '2024-10-05', '2024-11-05', 7, 6, 22, 'Antrim', 'BT49'),
(27, 'Human Resources Coordinator', 'Assist in HR functions and processes.', '2024-09-10', '2024-10-10', '2024-11-10', 8, 5, 17, 'Coleraine', 'BT60'),
(28, 'Sales Analyst', 'Analyze sales data and trends.', '2024-09-15', '2024-10-15', '2024-11-15', 9, 4, 28, 'Belfast', 'BT10'),
(29, 'UX/UI Developer', 'Design and implement user interfaces.', '2024-09-20', '2024-10-20', '2024-11-20', 10, 8, 9, 'Antrim', 'BT50'),
(30, 'Project Manager', 'Lead and manage various projects.', '2024-09-25', '2024-10-25', '2024-11-25', 1, 2, 3, 'Coleraine', 'BT61'),
(31, 'Sales', 'none', '2030-01-24', '2012-02-24', '2022-04-25', 5, 2, 1, 'Belfast', 'BT9 6RT');

-- --------------------------------------------------------

--
-- Table structure for table `Job_Application`
--

CREATE TABLE `Job_Application` (
  `ID` int(11) NOT NULL,
  `ApplyDate` date NOT NULL,
  `Status_ID` int(11) DEFAULT NULL,
  `Result_ID` int(11) DEFAULT NULL,
  `Job_Post_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Job_Application`
--

INSERT INTO `Job_Application` (`ID`, `ApplyDate`, `Status_ID`, `Result_ID`, `Job_Post_ID`) VALUES
(1, '2023-03-01', 5, 3, 10),
(2, '2023-02-15', 8, 12, 25),
(3, '2023-04-10', 2, 20, 7),
(4, '2023-03-05', 6, 1, 35),
(5, '2023-01-20', 10, 18, 15),
(6, '2023-02-28', 4, 5, 28),
(7, '2023-05-15', 9, 24, 2),
(8, '2023-03-20', 1, 15, 14),
(9, '2023-04-05', 7, 9, 30),
(10, '2023-02-10', 3, 21, 22),
(11, '2023-04-25', 5, 8, 12),
(12, '2023-03-15', 10, 14, 5),
(13, '2023-02-01', 2, 22, 18),
(14, '2023-01-10', 1, 6, 38),
(15, '2023-04-20', 8, 25, 3),
(16, '2023-01-25', 6, 2, 17),
(17, '2023-05-05', 9, 13, 29),
(18, '2023-03-10', 4, 4, 21),
(19, '2023-05-10', 1, 10, 33),
(20, '2023-03-08', 6, 17, 11),
(21, '2023-02-18', 9, 3, 27),
(22, '2023-04-13', 3, 11, 36),
(23, '2023-03-01', 5, 24, 6),
(24, '2023-01-25', 8, 5, 13),
(25, '2023-02-28', 10, 20, 31),
(26, '2023-05-18', 4, 14, 4),
(27, '2023-03-25', 2, 9, 16),
(28, '2023-04-08', 7, 21, 23),
(29, '2023-02-15', 1, 8, 7),
(30, '2023-04-30', 5, 13, 19),
(31, '2023-03-18', 10, 6, 32),
(32, '2023-02-05', 2, 22, 24),
(33, '2023-01-15', 1, 7, 37),
(34, '2023-05-20', 8, 15, 20);

-- --------------------------------------------------------

--
-- Table structure for table `Job_Category`
--

CREATE TABLE `Job_Category` (
  `ID` int(11) NOT NULL,
  `Name` varchar(100) NOT NULL,
  `Description` longtext DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Job_Category`
--

INSERT INTO `Job_Category` (`ID`, `Name`, `Description`) VALUES
(1, 'Software Development', NULL),
(2, 'Data Analysis', NULL),
(3, 'Data Entry', NULL),
(4, 'Customer Support', NULL),
(5, 'Marketing', NULL),
(6, 'Graphic Design', NULL),
(7, 'Project Management', NULL),
(8, 'Finance', NULL),
(9, 'Human Resources', NULL),
(10, 'Sales', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `Job_Post`
--

CREATE TABLE `Job_Post` (
  `ID` int(11) NOT NULL,
  `Job_ID` int(11) DEFAULT NULL,
  `Candidate_ID` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Job_Post`
--

INSERT INTO `Job_Post` (`ID`, `Job_ID`, `Candidate_ID`) VALUES
(1, 1, 5),
(2, 2, 5),
(3, 3, 15),
(4, 3, 20),
(5, 5, 25),
(6, 6, 30),
(7, 7, 3),
(8, 8, 12),
(9, 9, 18),
(10, 10, 1),
(11, 11, 7),
(12, 12, 28),
(13, 13, 9),
(14, 14, 21),
(15, 15, 14),
(16, 16, 26),
(17, 17, 2),
(18, 18, 19),
(19, 18, 11),
(20, 20, 29),
(21, 21, 22),
(22, 22, 8),
(23, 23, 16),
(24, 24, 4),
(25, 25, 27),
(26, 26, 13),
(27, 27, 23),
(28, 28, 6),
(29, 2, 17),
(30, 11, 24),
(31, 1, 17),
(32, 12, 10),
(33, 9, 15),
(34, 20, 20),
(35, 4, 25),
(36, 6, 30),
(37, 6, 17),
(38, 4, 21);

-- --------------------------------------------------------

--
-- Stand-in structure for view `PassedCandidates`
-- (See below for the actual view)
--
CREATE TABLE `PassedCandidates` (
`ID` int(11)
,`Job_ID` int(11)
,`ApplyDate` date
);

-- --------------------------------------------------------

--
-- Table structure for table `Result`
--

CREATE TABLE `Result` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL,
  `Test_ID` int(11) NOT NULL,
  `Interview_ID` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Result`
--

INSERT INTO `Result` (`ID`, `Name`, `Test_ID`, `Interview_ID`) VALUES
(1, 'Passed', 1, 1),
(2, 'Failed', 2, 2),
(3, 'Passed', 3, 3),
(4, 'Failed', 4, 4),
(5, 'Waitlisted', 5, 5),
(6, 'Failed', 6, 6),
(7, 'Passed', 7, 7),
(8, 'Failed', 8, 8),
(9, 'Waitlisted', 9, 9),
(10, 'Waitlisted', 10, 10),
(11, 'Passed', 11, 11),
(12, 'Failed', 12, 12),
(13, 'Passed', 13, 13),
(14, 'Failed', 14, 14),
(15, 'Waitlisted', 15, 15),
(16, 'Failed', 16, 16),
(17, 'Passed', 17, 17),
(18, 'Failed', 18, 18),
(19, 'Passed', 19, 19),
(20, 'Failed', 20, 20),
(21, 'Passed', 21, 21),
(22, 'Failed', 22, 22),
(23, 'Waitlisted', 23, 23),
(24, 'Failed', 24, 24),
(25, 'Waitlisted', 25, 25),
(26, 'Failed', 26, 26),
(27, 'Waitlisted', 27, 27),
(28, 'Waitlisted', 28, 28),
(29, 'Waitlisted', 29, 29),
(30, 'Failed', 30, 30),
(31, 'Passed', 31, 31),
(32, 'Failed', 32, 32),
(33, 'Waitlisted', 33, 33),
(34, 'Waitlisted', 34, 34),
(35, 'Waitlisted', 35, 35),
(36, 'Waitlisted', 36, 36),
(37, 'Waitlisted', 37, 37),
(38, 'Failed', 38, 38),
(39, 'Waitlisted', 39, 39),
(40, 'Waitlisted', 40, 40);

-- --------------------------------------------------------

--
-- Table structure for table `Result_Code`
--

CREATE TABLE `Result_Code` (
  `Code` int(11) NOT NULL,
  `Description` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Result_Code`
--

INSERT INTO `Result_Code` (`Code`, `Description`) VALUES
(1, 'Pass'),
(2, 'Fail');

-- --------------------------------------------------------

--
-- Table structure for table `Status`
--

CREATE TABLE `Status` (
  `ID` int(11) NOT NULL,
  `Name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Status`
--

INSERT INTO `Status` (`ID`, `Name`) VALUES
(1, 'Pending'),
(2, 'Reviewed'),
(3, 'Shortlisted'),
(4, 'Interview Scheduled'),
(5, 'Offer Extended'),
(6, 'Offer Accepted'),
(7, 'Offer Declined'),
(8, 'Hired'),
(9, 'Rejected'),
(10, 'Withdrawn');

-- --------------------------------------------------------

--
-- Table structure for table `Test`
--

CREATE TABLE `Test` (
  `ID` int(11) NOT NULL,
  `Result_Code` int(11) NOT NULL,
  `Score` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `Test`
--

INSERT INTO `Test` (`ID`, `Result_Code`, `Score`) VALUES
(1, 1, 85),
(2, 2, 60),
(3, 1, 92),
(4, 2, 78),
(5, 2, 45),
(6, 2, 70),
(7, 1, 88),
(8, 2, 55),
(9, 2, 75),
(10, 1, 68),
(11, 1, 98),
(12, 2, 40),
(13, 1, 87),
(14, 2, 65),
(15, 2, 50),
(16, 2, 72),
(17, 1, 96),
(18, 2, 42),
(19, 1, 80),
(20, 2, 58),
(21, 1, 93),
(22, 2, 55),
(23, 2, 70),
(24, 2, 78),
(25, 2, 63),
(26, 2, 85),
(27, 2, 45),
(28, 1, 92),
(29, 2, 72),
(30, 2, 68),
(31, 1, 89),
(32, 2, 50),
(33, 2, 75),
(34, 1, 98),
(35, 2, 40),
(36, 1, 87),
(37, 2, 65),
(38, 2, 80),
(39, 2, 58),
(40, 1, 96);

-- --------------------------------------------------------

--
-- Structure for view `CandidatesByCityView`
--
DROP TABLE IF EXISTS `CandidatesByCityView`;

CREATE ALGORITHM=UNDEFINED DEFINER=`fsandjaja03`@`localhost` SQL SECURITY DEFINER VIEW `CandidatesByCityView`  AS SELECT `Candidate_Details`.`City` AS `City`, sum(1) AS `CityCount` FROM `Candidate_Details` GROUP BY `Candidate_Details`.`City` ORDER BY `Candidate_Details`.`City` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `CandidatesInAntrim`
--
DROP TABLE IF EXISTS `CandidatesInAntrim`;

CREATE ALGORITHM=UNDEFINED DEFINER=`fsandjaja03`@`localhost` SQL SECURITY DEFINER VIEW `CandidatesInAntrim`  AS SELECT `Candidate_Details`.`FirstName` AS `FirstName`, `Candidate_Details`.`LastName` AS `LastName`, `Candidate_Details`.`City` AS `City` FROM `Candidate_Details` WHERE `Candidate_Details`.`City` = 'Antrim' ORDER BY `Candidate_Details`.`LastName` ASC, `Candidate_Details`.`FirstName` ASC ;

-- --------------------------------------------------------

--
-- Structure for view `EarlyApplicantsByJobView`
--
DROP TABLE IF EXISTS `EarlyApplicantsByJobView`;

CREATE ALGORITHM=UNDEFINED DEFINER=`fsandjaja03`@`localhost` SQL SECURITY DEFINER VIEW `EarlyApplicantsByJobView`  AS SELECT `JP`.`Job_ID` AS `Job_ID`, `CD`.`FirstName` AS `FirstName`, `CD`.`LastName` AS `LastName`, min(`JA`.`ApplyDate`) AS `EarliestApplyDate` FROM ((`Job_Application` `JA` join `Job_Post` `JP` on(`JA`.`Job_Post_ID` = `JP`.`ID`)) join `Candidate_Details` `CD` on(`JP`.`Candidate_ID` = `CD`.`ID`)) WHERE `JA`.`ApplyDate` < '2023-05-05' GROUP BY `JP`.`Job_ID`, `CD`.`FirstName`, `CD`.`LastName` ;

-- --------------------------------------------------------

--
-- Structure for view `PassedCandidates`
--
DROP TABLE IF EXISTS `PassedCandidates`;

CREATE ALGORITHM=UNDEFINED DEFINER=`fsandjaja03`@`localhost` SQL SECURITY DEFINER VIEW `PassedCandidates`  AS SELECT `CD`.`ID` AS `ID`, `JP`.`Job_ID` AS `Job_ID`, `JA`.`ApplyDate` AS `ApplyDate` FROM (((`Job_Application` `JA` join `Result` `R` on(`JA`.`Result_ID` = `R`.`ID`)) join `Job_Post` `JP` on(`JA`.`Job_Post_ID` = `JP`.`ID`)) join `Candidate_Details` `CD` on(`JP`.`Candidate_ID` = `CD`.`ID`)) WHERE `R`.`Name` = 'passed' ORDER BY `JA`.`ApplyDate` ASC ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `Candidate_Details`
--
ALTER TABLE `Candidate_Details`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_DocsID` (`DocsID`);

--
-- Indexes for table `Candidate_Document`
--
ALTER TABLE `Candidate_Document`
  ADD PRIMARY KEY (`DocsID`);

--
-- Indexes for table `Company`
--
ALTER TABLE `Company`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `EmployerID_fk` (`Employer_ID`);

--
-- Indexes for table `Company_Employers`
--
ALTER TABLE `Company_Employers`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Interview`
--
ALTER TABLE `Interview`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `resultcode_fk` (`Result_Code`);

--
-- Indexes for table `Job`
--
ALTER TABLE `Job`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `Categoryid_fk` (`Category_ID`),
  ADD KEY `Companyid_fk` (`Company_ID`);

--
-- Indexes for table `Job_Application`
--
ALTER TABLE `Job_Application`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_Job_Post_Application` (`Job_Post_ID`),
  ADD KEY `Result_ID` (`Result_ID`),
  ADD KEY `Status_ID` (`Status_ID`);

--
-- Indexes for table `Job_Category`
--
ALTER TABLE `Job_Category`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Job_Post`
--
ALTER TABLE `Job_Post`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_Job` (`Job_ID`),
  ADD KEY `fk_Candidate` (`Candidate_ID`);

--
-- Indexes for table `Result`
--
ALTER TABLE `Result`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `TestID_fk` (`Test_ID`),
  ADD KEY `InterviewID_fk` (`Interview_ID`);

--
-- Indexes for table `Result_Code`
--
ALTER TABLE `Result_Code`
  ADD PRIMARY KEY (`Code`);

--
-- Indexes for table `Status`
--
ALTER TABLE `Status`
  ADD PRIMARY KEY (`ID`);

--
-- Indexes for table `Test`
--
ALTER TABLE `Test`
  ADD PRIMARY KEY (`ID`),
  ADD KEY `fk_ResultCode` (`Result_Code`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `Candidate_Details`
--
ALTER TABLE `Candidate_Details`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=42;

--
-- AUTO_INCREMENT for table `Company`
--
ALTER TABLE `Company`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `Company_Employers`
--
ALTER TABLE `Company_Employers`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=141;

--
-- AUTO_INCREMENT for table `Interview`
--
ALTER TABLE `Interview`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `Job`
--
ALTER TABLE `Job`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT for table `Job_Application`
--
ALTER TABLE `Job_Application`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=35;

--
-- AUTO_INCREMENT for table `Job_Post`
--
ALTER TABLE `Job_Post`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=39;

--
-- AUTO_INCREMENT for table `Result`
--
ALTER TABLE `Result`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- AUTO_INCREMENT for table `Status`
--
ALTER TABLE `Status`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `Test`
--
ALTER TABLE `Test`
  MODIFY `ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=41;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `Candidate_Details`
--
ALTER TABLE `Candidate_Details`
  ADD CONSTRAINT `fk_DocsID` FOREIGN KEY (`DocsID`) REFERENCES `Candidate_Document` (`DocsID`);

--
-- Constraints for table `Company`
--
ALTER TABLE `Company`
  ADD CONSTRAINT `EmployerID_fk` FOREIGN KEY (`Employer_ID`) REFERENCES `Company_Employers` (`ID`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `Interview`
--
ALTER TABLE `Interview`
  ADD CONSTRAINT `resultcode_fk` FOREIGN KEY (`Result_Code`) REFERENCES `Result_Code` (`Code`);

--
-- Constraints for table `Job`
--
ALTER TABLE `Job`
  ADD CONSTRAINT `Categoryid_fk` FOREIGN KEY (`Category_ID`) REFERENCES `Job_Category` (`ID`),
  ADD CONSTRAINT `Companyid_fk` FOREIGN KEY (`Company_ID`) REFERENCES `Company` (`ID`);

--
-- Constraints for table `Job_Application`
--
ALTER TABLE `Job_Application`
  ADD CONSTRAINT `Job_Application_ibfk_1` FOREIGN KEY (`Result_ID`) REFERENCES `Result` (`ID`),
  ADD CONSTRAINT `Job_Application_ibfk_2` FOREIGN KEY (`Status_ID`) REFERENCES `Status` (`ID`),
  ADD CONSTRAINT `fk_Job_Post_Application` FOREIGN KEY (`Job_Post_ID`) REFERENCES `Job_Post` (`ID`);

--
-- Constraints for table `Job_Post`
--
ALTER TABLE `Job_Post`
  ADD CONSTRAINT `fk_Candidate` FOREIGN KEY (`Candidate_ID`) REFERENCES `Candidate_Details` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `fk_Job` FOREIGN KEY (`Job_ID`) REFERENCES `Job` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE;

--
-- Constraints for table `Result`
--
ALTER TABLE `Result`
  ADD CONSTRAINT `InterviewID_fk` FOREIGN KEY (`Interview_ID`) REFERENCES `Interview` (`ID`) ON DELETE NO ACTION ON UPDATE CASCADE,
  ADD CONSTRAINT `TestID_fk` FOREIGN KEY (`Test_ID`) REFERENCES `Test` (`ID`);

--
-- Constraints for table `Test`
--
ALTER TABLE `Test`
  ADD CONSTRAINT `fk_ResultCode` FOREIGN KEY (`Result_Code`) REFERENCES `Result_Code` (`Code`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
