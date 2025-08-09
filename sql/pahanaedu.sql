-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2025 at 09:17 AM
-- Server version: 8.0.42
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pahanaedu`
--

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `Id` int NOT NULL,
  `acc_no` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone` int NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`Id`, `acc_no`, `name`, `address`, `phone`, `email`) VALUES
(5, 1001, 'Dimalsha Sachinthani', 'Avissawella', 757961719, 'dimalsha@gmail.com'),
(8, 1002, 'Rivindu Lahiruka', 'Galle', 773201819, 'rivindu@gmail.com'),
(14, 1003, 'Adeesha Indumini', 'Avissawella', 757961719, 'adeesha@gmail.com'),
(15, 1004, 'Nimal Perera', 'Colombo', 771234567, 'nimalp@gmail.com'),
(16, 1005, 'Sunil Silva', 'Kandy', 772345678, 'sunils@gmail.com'),
(17, 1006, 'Kamal Fernando', 'Galle', 773456789, 'kamalf@gmail.com'),
(18, 1007, 'Janaka Rajapaksha', 'Matara', 774567890, 'janakar@gmail.com'),
(19, 1008, 'Thilini Jayawardena', 'Negombo', 775678901, 'thilinij@gmail.com'),
(20, 1009, 'Harsha Gunasekara', 'Kurunegala', 776789012, 'harshag@gmail.com'),
(21, 1010, 'Dilani Perera', 'Battaramulla', 777890123, 'dilanip@gmail.com'),
(22, 1011, 'Dulaj Madushanka', 'Panadura', 778901234, 'dulajm@gmail.com'),
(23, 1012, 'Ishara Weerasinghe', 'Dehiwala', 779012345, 'isharaw@gmail.com'),
(24, 1013, 'Naduni Ranasinghe', 'Maharagama', 780123456, 'nadunir@gmail.com'),
(25, 1014, 'Asela Herath', 'Kalutara', 781234567, 'aselah@gmail.com'),
(26, 1015, 'Buddhika Senanayake', 'Rathnapura', 782345678, 'buddhikas@gmail.com'),
(27, 1016, 'Chandima Wickramasinghe', 'Moratuwa', 783456789, 'chandimaw@gmail.com'),
(28, 1017, 'Hasini Silva', 'Ja-Ela', 784567890, 'hasinis@gmail.com'),
(29, 1018, 'Mahesh Abeywickrama', 'Homagama', 785678901, 'maheshab@gmail.com'),
(30, 1019, 'Sanduni Gamage', 'Nugegoda', 786789012, 'sandunig@gmail.com'),
(31, 1020, 'Sasindu Jayasuriya', 'Kadawatha', 787890123, 'sasinduj@gmail.com'),
(32, 1021, 'Prabodha Rathnayake', 'Wattala', 788901234, 'prabodhar@gmail.com'),
(33, 1022, 'Sachini Dissanayake', 'Anuradhapura', 789012345, 'sachinid@gmail.com'),
(34, 1023, 'Kavindu Samarasekara', 'Polonnaruwa', 790123456, 'kavindus@gmail.com'),
(35, 1024, 'Pasindu Udayanga', 'Trincomalee', 791234567, 'pasinduu@gmail.com'),
(36, 1025, 'Shanika Herath', 'Badulla', 792345678, 'shanikah@gmail.com'),
(37, 1026, 'Dineth Liyanage', 'Ampara', 793456789, 'dinethl@gmail.com'),
(38, 1027, 'Madushani Wickrama', 'Gampaha', 794567890, 'madushanig@gmail.com'),
(39, 1028, 'Isuru Perera', 'Beruwala', 795678901, 'isurup@gmail.com'),
(40, 1029, 'Tharushi Alwis', 'Chilaw', 796789012, 'tharushia@gmail.com'),
(41, 1030, 'Lahiru Gunawardena', 'Vavuniya', 797890123, 'lahirug@gmail.com'),
(42, 1031, 'Rashmi Dilhani', 'Hatton', 798901234, 'rashmid@gmail.com'),
(43, 1032, 'Vimukthi Senarath', 'Kilinochchi', 799012345, 'vimukthis@gmail.com'),
(44, 1033, 'Yasodhara Weerasekara', 'Jaffna', 700123456, 'yasodharaw@gmail.com'),
(45, 1034, 'Thisara Jayasinghe', 'Kalmunai', 701234567, 'thisaraj@gmail.com'),
(46, 1035, 'Anuththara Abeysinghe', 'Nuwara Eliya', 702345678, 'anuththaraa@gmail.com'),
(47, 1036, 'Nimesh Fernando', 'Peliyagoda', 703456789, 'nimeshf@gmail.com'),
(48, 1037, 'Ruwani Kularathna', 'Bandarawela', 704567890, 'ruwanik@gmail.com'),
(49, 1038, 'Denuwan Samarasekara', 'Gampola', 705678901, 'denuwans@gmail.com'),
(50, 1039, 'Shehani Pathirana', 'Embilipitiya', 706789012, 'shehanip@gmail.com'),
(51, 1040, 'Bhagya Kariyawasam', 'Mannar', 707890123, 'bhagyak@gmail.com'),
(52, 1041, 'Thimira Sandeepa', 'Balangoda', 708901234, 'thimiras@gmail.com'),
(53, 1042, 'Ravindu Kavinda', 'Haputale', 709012345, 'ravinduk@gmail.com'),
(54, 1043, 'Nilakshi Nisansala', 'Ambalangoda', 710123456, 'nilakshin@gmail.com'),
(55, 1044, 'Dewmini Rajapaksha', 'Akkaraipattu', 711234567, 'dewminir@gmail.com'),
(56, 1045, 'Lakshan Udara', 'Puttalam', 712345678, 'lakshanu@gmail.com'),
(57, 1046, 'Thamasha Mihirangi', 'Monaragala', 713456789, 'thamasham@gmail.com'),
(58, 1047, 'Kalpani Sandamali', 'Hikkaduwa', 714567890, 'kalpanis@gmail.com'),
(59, 1048, 'Rangana Perera', 'Nawalapitiya', 715678901, 'ranganap@gmail.com'),
(60, 1049, 'Menaka Harshani', 'Kegalle', 716789012, 'menakah@gmail.com'),
(61, 1050, 'Viraj Lakmal', 'Moragahahena', 717890123, 'virajl@gmail.com'),
(62, 1051, 'Oshadi Senavi', 'Maradana', 718901234, 'oshadis@gmail.com'),
(63, 1052, 'Charitha Kumara', 'Wellawaya', 719012345, 'charithak@gmail.com'),
(65, 1001, 'Test User', 'Test City', 771234567, 'testuser@example.com');

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int NOT NULL,
  `item_code` varchar(100) NOT NULL,
  `name` varchar(255) NOT NULL,
  `price` double NOT NULL,
  `stock` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `item_code`, `name`, `price`, `stock`) VALUES
(1, '1001', 'Ballpoint Pen', 120, 15),
(2, '1002', 'Ruler', 50, 100),
(3, '1003', 'Stapler', 200, 150),
(4, '1004', 'Eraser', 50, 100),
(6, '1005', 'Book', 300, 200),
(11, '1006', 'Highlighter', 120, 10),
(12, '1007', 'Note Book', 400, 50),
(16, '1008', 'A4 Exercise Book', 120, 50),
(17, '1009', 'Ballpoint Pen (Blue)', 35, 200),
(18, '1010', 'HB Pencil', 20, 300),
(19, '1011', 'Eraser', 15, 250),
(20, '1012', 'Ruler 12 inch', 30, 150),
(21, '1013', 'Gel Pen (Black)', 40, 180),
(22, '1014', 'Spiral Notebook', 160, 90),
(23, '1015', 'Highlighter (Yellow)', 60, 120),
(24, '1016', 'Correction Fluid', 85, 100),
(25, '1017', 'Glue Stick', 75, 130),
(26, '1018', 'Scissors (Small)', 150, 80),
(27, '1019', 'Stapler', 250, 60),
(28, '1020', 'Stapler Pins Pack', 55, 140),
(29, '1021', 'A4 File', 90, 100),
(30, '1022', 'Clear Folder', 35, 110),
(31, '1023', 'Index Cards (100 pack)', 180, 70),
(32, '1024', 'Drawing Book', 200, 65),
(33, '1025', 'Sketch Pens (12 colors)', 280, 75),
(34, '1026', 'Watercolor Set', 320, 50),
(35, '1027', 'Paint Brush Set', 250, 55),
(36, '1028', 'Sharpener', 25, 300),
(37, '1029', 'Binder Clips (Small)', 40, 180),
(38, '1030', 'Paper Clips (Box)', 30, 200),
(39, '1031', 'White Board Marker', 85, 100),
(40, '1032', 'Marker Ink Refill', 95, 70),
(41, '1033', 'Sticky Notes', 60, 160),
(42, '1034', 'Plastic Cover Roll', 200, 40),
(43, '1035', 'Brown Paper Sheet', 20, 220),
(44, '1036', 'Cardboard Sheets (10)', 150, 60),
(45, '1037', 'Craft Paper Pack', 220, 50),
(46, '1038', 'Notebook A5', 100, 110),
(47, '1039', 'Mechanical Pencil', 120, 90),
(48, '1040', 'Graph Paper Book', 140, 85),
(49, '1041', 'Document Holder', 110, 75),
(50, '1042', 'Calculator (Basic)', 450, 40),
(51, '1043', 'Geometry Box', 300, 60),
(52, '1044', 'Mini Whiteboard', 350, 35),
(53, '1045', 'Clipboard', 180, 80),
(54, '1046', 'Label Stickers', 90, 120),
(55, '1047', 'Punch Machine', 400, 30),
(56, '1048', 'Desk Organizer', 500, 25),
(57, '1049', 'Laminating Sheets (A4)', 150, 55),
(58, '1050', 'Plastic File Box', 600, 20),
(59, '1051', 'Board Pins (Box)', 50, 100),
(60, '1052', 'Rubber Bands Pack', 40, 90),
(61, '1053', 'Envelope (A4)', 15, 250),
(62, '1054', 'Envelopes (DL Pack)', 100, 80),
(63, '1055', 'Clipboard Folder', 190, 60),
(64, '1056', 'PVC Tape (Clear)', 60, 100),
(65, '1057', 'Paper Cutter', 170, 50);

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `id` int NOT NULL,
  `customer_id` int NOT NULL,
  `items_json` text NOT NULL,
  `total` decimal(10,2) NOT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`id`, `customer_id`, `items_json`, `total`, `created_at`) VALUES
(1, 14, '{\"1\":{\"name\":\"Ballpoint Pen\",\"price\":120,\"quantity\":1},\"2\":{\"name\":\"Ruler\",\"price\":50,\"quantity\":2},\"3\":{\"name\":\"Stapler\",\"price\":200,\"quantity\":2},\"6\":{\"name\":\"Book\",\"price\":300,\"quantity\":4},\"11\":{\"name\":\"Highlighter\",\"price\":120,\"quantity\":2}}', 2060.00, '2025-08-01 15:49:00'),
(2, 20, '{\"1\":{\"name\":\"Ballpoint Pen\",\"price\":120,\"quantity\":5}}', 600.00, '2025-08-01 19:48:32'),
(8, 5, '[{\"item_code\":\"123\"\"name\":\"Notebook\",\"qty\":2,\"price\":500}]', 1000.00, '2025-08-03 06:58:23'),
(9, 5, '[{\"item_code\":\"123\"\"name\":\"Notebook\",\"qty\":2,\"price\":500}]', 1000.00, '2025-08-03 06:58:50'),
(10, 5, '[{\"item_code\":\"123\"\"name\":\"Notebook\",\"qty\":2,\"price\":500}]', 1000.00, '2025-08-03 06:59:27'),
(11, 5, '{\"1\":{\"name\":\"Ballpoint Pen\",\"price\":120,\"quantity\":2},\"2\":{\"name\":\"Ruler\",\"price\":50,\"quantity\":1},\"3\":{\"name\":\"Stapler\",\"price\":200,\"quantity\":2},\"11\":{\"name\":\"Highlighter\",\"price\":120,\"quantity\":1}}', 810.00, '2025-08-03 07:03:52'),
(12, 20, '{\"1\":{\"name\":\"Ballpoint Pen\",\"price\":120,\"quantity\":4},\"2\":{\"name\":\"Ruler\",\"price\":50,\"quantity\":4},\"11\":{\"name\":\"Highlighter\",\"price\":120,\"quantity\":1},\"16\":{\"name\":\"A4 Exercise Book\",\"price\":120,\"quantity\":2}}', 1040.00, '2025-08-03 07:07:58'),
(13, 8, '{\"1\":{\"name\":\"Ballpoint Pen\",\"price\":120,\"quantity\":1},\"2\":{\"name\":\"Ruler\",\"price\":50,\"quantity\":2}}', 220.00, '2025-08-08 08:31:49');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `username` varchar(100) NOT NULL,
  `password` varchar(255) NOT NULL,
  `email` varchar(100) DEFAULT NULL,
  `phoneNum` varchar(15) DEFAULT NULL,
  `role` varchar(20) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `email`, `phoneNum`, `role`, `created_at`) VALUES
(1, 'dimalsha', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'dimalsha@gmail.com', '0757961719', 'admin', '2025-07-31 14:36:05'),
(2, 'rivindu', '5994471abb01112afcc18159f6cc74b4f511b99806da59b3caf5a9c173cacfc5', 'rivindu@gmail.com', '0774720318', 'admin', '2025-07-31 14:37:37'),
(3, 'testuser1754201179166', 'a109e36947ad56de1dca1cc49f0ef8ac9ad9a7b1aa0df41fb3c4cb73c1ff01ea', 'testuser@example.com', '0771234567', 'customer', '2025-08-03 06:06:19'),
(4, 'testuser1754201179166', 'a109e36947ad56de1dca1cc49f0ef8ac9ad9a7b1aa0df41fb3c4cb73c1ff01ea', 'testuser@example.com', '0771234567', 'customer', '2025-08-03 06:06:19');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`Id`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`id`),
  ADD KEY `customer_id` (`customer_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `customers`
--
ALTER TABLE `customers`
  MODIFY `Id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=68;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `orders`
--
ALTER TABLE `orders`
  ADD CONSTRAINT `orders_ibfk_1` FOREIGN KEY (`customer_id`) REFERENCES `customers` (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
