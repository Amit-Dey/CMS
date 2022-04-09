-- phpMyAdmin SQL Dump
-- version 5.1.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 09, 2022 at 07:01 PM
-- Server version: 10.4.24-MariaDB
-- PHP Version: 7.4.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `our-blog`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_post`
--

CREATE TABLE `tbl_post` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `create_time` date NOT NULL,
  `update_time` date NOT NULL,
  `author` varchar(100) NOT NULL,
  `author_id` int(11) NOT NULL,
  `cover` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_post`
--

INSERT INTO `tbl_post` (`id`, `title`, `description`, `create_time`, `update_time`, `author`, `author_id`, `cover`) VALUES
(1, 'Step by Step guide on how you can be a green coder, for newbies', '<p><span style=\"color:#2ecc71\"><span style=\"font-size:16px\">To be green we need to be very comfortable with&nbsp;<strong>ad-hoc problems</strong>&nbsp;these are problems where you don&#39;t need to use any data structures (heap,tree etc) or algorithms (dp,binary-search etc) div2A is always ad-hoc, div2B(sometimes adhoc) is also needed to be green most of the time(so if we clear A in 15 minutes, we spend the time on remaining time on B)</span></span></p>\r\n\r\n<p><span style=\"font-size:16px\">The problems are never the same, but the way we approach them is similar<br />\r\nso I recommend going through the div2A problems here&nbsp;<a href=\"https://codeforces.com/blog/entry/65133\">blog</a>&nbsp;<a href=\"https://goo.gl/unDETI\">problems list</a>&nbsp;(thank you!&nbsp;<a href=\"https://codeforces.com/profile/mostafa.saad.fci\" title=\"Expert mostafa.saad.fci\">mostafa.saad.fci</a>) after solving half of the problems, I stopped coding them and instead just tried to reach the point where I knew exactly what I wanted to code and then read the editorial to verify</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Read/See on youtube lots of code everywhere understand all editorials!!</span></p>\r\n\r\n<p><span style=\"font-size:16px\">You should be able to solve div2A problems after reading/coding all the problems from div2A in that list (around 80 of them)<br />\r\n&amp;&amp; giving every div3, educational, atcoder beginner contest, div2, codechef for few months</span></p>\r\n\r\n<p><span style=\"font-size:16px\">Some tips from me: -&gt;Try to ignore the irrelevant information: like names of people, berland, etc<br />\r\n-&gt;Figure out exactly what is asked<br />\r\n-&gt;Get your paper and pen and draw the example cases<br />\r\n-&gt;Once you can solve any problem as a human, i.e. take an input and be able to get the output<br />\r\n-&gt;make your thought process into an algorithm<br />\r\n-&gt;very often it can become a single formula or few if-else statements<br />\r\n-&gt;later you can worry about optimization like instead of doing while(true)a-=26 until you reach your desired value, you can just do it like a-=26*(b-a)/26 by a particular value</span></p>\r\n\r\n<p><span style=\"font-size:16px\">For div2B: It is usually possible to solve these with a specific realization after drawing enough examples and then thinking of your strategy when solving these as a human<br />\r\nVery often B or C is a greedy algorithm find min/max, or else you need to return&nbsp;<strong>any of the correct solutions</strong>&nbsp;when you see any, you should think of the easiest examples and solutions(ignore samples sometimes) and think about how you can convert those into an algorithm (try to come up with the simplest/obvious method)</span></p>\r\n\r\n<p><span style=\"font-size:16px\">For div2B/C where it is an array and you have no idea what to do:<br />\r\nTry to sort the input, apply a hashmap for frequencies/positions, if it is binary string, convert it to run length encoding, eg. 0001111000111 -&gt; (0,3),(1,4),(0,3),(1,3)<br />\r\nThe problems where two players are playing a game -&gt; play the game with yourself on paper</span></p>\r\n\r\n<p><span style=\"font-size:16px\">For the rest, I am yet to learn the strategies but often in the questions, it helps me to make imaginary functions that you call and implement those later, all the best :D</span></p>\r\n', '0000-00-00', '2022-04-09', 'Admin', 0, 'IMG-62517cd26493f9.53057256.png'),
(2, 'adasdfasd', '<h1>Thank you for downloading IntelliJ IDEA!</h1>\r\n\r\n<h2>Your download should start shortly. If it doesn&#39;t, please use the&nbsp;<a href=\"https://download.jetbrains.com/idea/ideaIC-2021.3.3.exe\">direct link</a>.</h2>\r\n', '2022-04-09', '0000-00-00', 'Amit', 0, 'IMG-6251b6f430e2d6.56806881.png'),
(3, 'adsfdsafsdf', '<p>Hello.asdf a</p>\r\n', '2022-04-09', '0000-00-00', 'Amit', 0, 'IMG-6251baeae824c5.78806302.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id` int(11) NOT NULL,
  `first_name` varchar(100) NOT NULL,
  `last_name` varchar(100) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `auth` int(1) NOT NULL DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id`, `first_name`, `last_name`, `email`, `password`, `auth`) VALUES
(1, 'Amit', 'Dey', 'amitdey9020@gmail.com', 'admin', 0),
(3, 'Admin', 'Dey', 'admin@gmail.com', 'admin', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_post`
--
ALTER TABLE `tbl_post`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_post`
--
ALTER TABLE `tbl_post`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
