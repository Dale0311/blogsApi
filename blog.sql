-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Jul 24, 2023 at 02:55 PM
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
-- Database: `blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `blogs`
--

CREATE TABLE `blogs` (
  `id` int NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `user_id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `blogs`
--

INSERT INTO `blogs` (`id`, `title`, `body`, `user_id`) VALUES
(1, 'blog #1', 'Singing Radiohead at the top of our lungs\r\nWith the boom box blaring as we\'re falling in love\r\nI got a bottle of whatever, but it\'s gettin\' us drunk\r\nSinging, \"Here\'s to never growing up\"\r\nCall up all our friends, go hard this weekend\r\nFor no damn reason, I don\'t think we\'ll ever change\r\nMeet you at the spot, half past ten o\'clock\r\nWe don\'t ever stop, and we\'re never gonna change\r\nSay, won\'t you say forever? Stay\r\nIf you stay forever, hey\r\nWe can say forever young\r\nSinging Radiohead at the top of our lungs\r\nWith the boom box blaring as we\'re falling in love\r\nI got a bottle of whatever, but it\'s gettin\' us drunk\r\nSinging, \"Here\'s to never growing up\"\r\nWe\'ll be running down the street, yelling \"Kiss my ass\"\r\nI\'m like yeah whatever, we\'re still living like that\r\nWhen the sun\'s going down, we\'ll be raising our cups\r\nSinging, \"Here\'s to never growing up\"\r\nOh whoa, oh whoa (here\'s to never growing up)\r\nOh whoa, oh whoa (here\'s to never growing up)\r\nWe live like rock stars, dance on every bar (woo)\r\nThis is who we are, I don\'t think we\'ll ever change (hell, no!)\r\nThey say just grow up, but they don\'t know us\r\nWe don\'t give a fuck, and we\'re never gonna change\r\nSay, won\'t you say forever? Stay\r\nIf you stay forever, hey\r\nWe can say forever young\r\nSinging Radiohead at the top of our lungs\r\nWith the boom box blaring as we\'re falling in love\r\nI got a bottle of whatever, but it\'s gotten us drunk\r\nSinging, \"Here\'s to never growing up\"\r\nWe\'ll be running down the street, yelling \"Kiss my ass\"\r\nI\'m like yeah whatever, we\'re still living like that\r\nWhen the sun\'s going down, we\'ll be raising our cups\r\nSinging, \"Here\'s to never growing up\"\r\nOh whoa, oh whoa (here\'s to never growing up)\r\nOh whoa, oh whoa (here\'s to never growing up)', 1),
(2, 'blog #2', 'Hey Jude, don\'t make it bad.\r\nTake a sad song and make it better.\r\nRemember to let her into your heart,\r\nThen you can start to make it better.\r\nHey Jude, don\'t be afraid.\r\nYou were made to go out and get her.\r\nThe minute you let her under your skin,\r\nThen you begin to make it better.\r\nAnd anytime you feel the pain, hey Jude, refrain,\r\nDon\'t carry the world upon your shoulders.\r\nFor well you know that it\'s a fool who plays it cool\r\nBy making his world a little colder.\r\nHey Jude, don\'t let me down.\r\nYou have found her, now go and get her.\r\nRemember to let her into your heart,\r\nThen you can start to make it better.\r\nSo let it out and let it in, hey Jude, begin,\r\nYou\'re waiting for someone to perform with.\r\nAnd don\'t you know that it\'s just you, hey Jude, you\'ll do,\r\nThe movement you need is on your shoulder.\r\nHey Jude, don\'t make it bad.\r\nTake a sad song and make it better.\r\nRemember to let her under your skin,\r\nThen you\'ll begin to make it\r\nBetter better better better better better, oh.', 2);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int NOT NULL,
  `name` varchar(255) NOT NULL,
  `penname` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `penname`) VALUES
(1, 'Dale', 'DeylPong'),
(2, 'Sarah', 'Belly Button');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `blogs`
--
ALTER TABLE `blogs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `user_id` (`user_id`) USING BTREE;

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `blogs`
--
ALTER TABLE `blogs`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `blogs`
--
ALTER TABLE `blogs`
  ADD CONSTRAINT `user_id` FOREIGN KEY (`user_id`) REFERENCES `users` (`id`) ON DELETE RESTRICT ON UPDATE RESTRICT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
