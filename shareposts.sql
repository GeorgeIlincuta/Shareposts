-- phpMyAdmin SQL Dump
-- version 4.6.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 16, 2018 at 05:34 PM
-- Server version: 5.7.14
-- PHP Version: 7.0.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shareposts`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`) VALUES
(1, 3, 'Syria: Turkish ground troops enter Afrin enclave', 'Turkish ground troops have crossed into northern Syria as part of Ankara\'s campaign to rid the border area of Kurdish fighters, Turkey\'s PM says.\n\nBinali Yildirim said the aim was to establish a 30km (19-mile) "safe zone" deep inside Syria, Turkish reports say.\n\nBut the Kurdish YPG militia says it has repelled Turkish troops in Afrin.\n\nTurkey\'s operation, announced Saturday, risks increasing tensions with the US, which was supporting the YPG in the fight against Islamic State jihadists.\n\nThe YPG (Syrian Kurdish People\'s Protection Units) is part of a US-backed alliance with a number of ethnic Arab militias called the Syrian Democratic Forces (SDF). The SDF has said it will have no choice but to defend itself if attacked.', '2018-01-21 16:42:48'),
(4, 4, 'Dross', 'Dross is a mass of solid impurities floating on a molten metal or dispersed in the metal, such as in wrought iron. It forms on the surface of low-melting-point metals such as tin, lead, zinc or aluminium or alloys by oxidation of the metal. For higher melting point metals such as steel, oxidized impurities melt and float making them easy to pour off.\r\n\r\nWith wrought iron, hammering and later rolling removed some dross. With tin and lead the dross can be removed by adding sodium hydroxide pellets, which dissolve the oxides and form a slag. If floating, dross can also be skimmed off.\r\n\r\nDross, as a solid, is distinguished from slag, which is a liquid. Dross product is not entirely waste material; for example, aluminium dross can be recycled and is used in secondary steelmaking for slag deoxidation.', '2018-01-22 00:38:30');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(3, 'Cosmin', 'cosmin@gmail.com', '$2y$10$JkXIFR6B8zbU8VgNbf1MaeRz8Rfdo36OfSe5zE73mfMPeW8QFPN2.', '2018-01-15 21:14:49'),
(4, 'Senex', 'senex@gmail.com', '$2y$10$VFJOK2qOYHL7.jQj4TzOPeBCeCVtUh7oJIM2FY19I0UylFlsrwfC.', '2018-01-22 00:36:55');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
