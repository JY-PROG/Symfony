-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jun 09, 2023 at 03:04 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `le_couturier`
--

-- --------------------------------------------------------

--
-- Table structure for table `doctrine_migration_versions`
--

CREATE TABLE `doctrine_migration_versions` (
  `version` varchar(191) COLLATE utf8mb3_unicode_ci NOT NULL,
  `executed_at` datetime DEFAULT NULL,
  `execution_time` int DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb3 COLLATE=utf8mb3_unicode_ci;

--
-- Dumping data for table `doctrine_migration_versions`
--

INSERT INTO `doctrine_migration_versions` (`version`, `executed_at`, `execution_time`) VALUES
('DoctrineMigrations\\Version20230609133135', '2023-06-09 13:31:42', 72);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int NOT NULL,
  `email` varchar(180) COLLATE utf8mb4_unicode_ci NOT NULL,
  `roles` json NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `email`, `roles`, `password`) VALUES
(1, 'hello@hello.com', '[]', '$2y$13$dSZ2/46ftccuxYKiCxd3BuU4cn9HUfukdoIqOkbzvWkYSMKMLtJUC'),
(2, 'Helloo', '[]', '$2y$13$iocwDu3xTing3NhoXb8Sfuo8LTiZhFHiysrAsEpdpHqOn1EdZLV0S'),
(3, 'hello@helloo.com', '[]', '$2y$13$l0SjL.48Ms2sIKeyB75/K.AgH50JV3XACRgrAd1xG5lUEDpUPsC3S'),
(4, 'bonjour@bonjour.com', '[]', '$2y$13$6EnhhHSe5XXZTNHX22rBreXbX5BVfZal9V5iVdPOh2r2vmw9NjSUm'),
(5, 'bonjour@bonjoour.com', '[]', '$2y$13$L45H5vCgsak.kmQNWbhMf.K7N6od.VEsfMDy/EfNzvk.5IaPRLvIW'),
(6, 'bonjour@bonjouuur.com', '[]', '$2y$13$KQW5JWgYfiaPKGrsNxPGlu8OF9aAio2sMOeCnvDBQjZmDVPeohO02'),
(7, '123@123.com', '[]', '$2y$13$C5xamWdmG1xRAyztLQ9X7O5.9SARM9xkkJAiVVs1VYSN7uocgflLC'),
(8, '111@111.com', '[]', '$2y$13$ApcjVJ2sZVxcpSkZcVrZIe96KfzKM54We5fepZfk.0XzWOgHlwXSm'),
(9, '666@666.com', '[]', '$2y$13$F9O36MiFhfBqOzxnL05WtOB7PwwlvnO7PrGOB1z8Yj97n7S4NQ6Ee'),
(10, 'jules@jules.com', '[]', '$2y$13$rIt.W7MbY0KUqnsAWrq3ueRcaST0dfb8SogUHrMeeiPU5FW7ZI51a'),
(11, 'Salut@Salut.com', '[]', '$2y$13$KFSVxFnIKz0/ZDoBc8kbNetNOaLaO2f/mDy0ShrD50tYb9b3saYZy');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `doctrine_migration_versions`
--
ALTER TABLE `doctrine_migration_versions`
  ADD PRIMARY KEY (`version`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `UNIQ_8D93D649E7927C74` (`email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
