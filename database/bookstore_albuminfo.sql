-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Mar 26, 2024 at 08:51 PM
-- Server version: 10.4.20-MariaDB
-- PHP Version: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bookstore`
--

-- --------------------------------------------------------

--
-- Table structure for table `albums`
--

CREATE TABLE `albums` (
  `title` varchar(200) NOT NULL,
  `album_date` date NOT NULL,
  `album_image` varchar(300) NOT NULL,
  `album_type` varchar(200) NOT NULL,
  `artist_name` varchar(200) NOT NULL,
  `id` int(11) NOT NULL,
  `artist_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `albums`
--

INSERT INTO `albums` (`title`, `album_date`, `album_image`, `album_type`, `artist_name`, `id`, `artist_id`) VALUES
('Mockingbird', '2018-03-08', 'https://wallpapers.com/images/featured-full/eminem-wcz13mef9912s7wn.jpg', 'rock', 'eminem', 1, 1),
('gods plan', '2018-02-20', 'https://static01.nyt.com/images/2021/12/08/arts/06drake2/06drake2-superJumbo.jpg?quality=75&auto=webp', 'rock', 'drake', 2, 4),
('bad romance', '2018-02-20', 'https://akm-img-a-in.tosshub.com/indiatoday/images/story/202303/why-lady-gaga-isnt-performing-at-2023-oscars-nomination-ftr-sixteen_nine.png?VersionId=WtFOfkU2Ix71XduYYPfwWBsaOZ4.OMR9&size=690:388', 'rock', 'lady gaga', 3, 3),
('all too well', '2002-02-01', 'https://media.gettyimages.com/id/1243395808/photo/nsai-2022-nashville-songwriter-awards.jpg?s=2048x2048&w=gi&k=20&c=ItHRRb5Ejv3jE8SFihPTrkkhq9HIPO2RgbnKZ7DrlNA=', 'pop', 'taylor swift', 4, 2),
('Never Say Never', '2018-02-01', 'https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRSqoSEuV0lmNrEVLwJ6q75DaOWQjorN0b2G_BLJr4OScCX0YSZ', 'rock', 'Justin beiber', 5, 25);

-- --------------------------------------------------------

--
-- Table structure for table `artist`
--

CREATE TABLE `artist` (
  `name` varchar(200) NOT NULL,
  `age` int(5) NOT NULL,
  `email` varchar(200) NOT NULL,
  `id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `artist`
--

INSERT INTO `artist` (`name`, `age`, `email`, `id`) VALUES
('eminem', 45, 'test@gmail.com', 1),
('taylor swift', 34, 'taylor@test.com', 2),
('lady gaga', 37, 'ladyagaga@test.com', 3),
('drake', 37, 'drake@test.com', 4);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `albums`
--
ALTER TABLE `albums`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `artist`
--
ALTER TABLE `artist`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `albums`
--
ALTER TABLE `albums`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `artist`
--
ALTER TABLE `artist`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
