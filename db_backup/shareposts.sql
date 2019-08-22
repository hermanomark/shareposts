-- phpMyAdmin SQL Dump
-- version 3.2.4
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: Aug 22, 2019 at 07:38 PM
-- Server version: 5.1.41
-- PHP Version: 5.3.1

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `shareposts`
--

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE IF NOT EXISTS `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `user_id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `body` text NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=21 ;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `user_id`, `title`, `body`, `created_at`) VALUES
(13, 15, 'asdsad', 'asdsadsa', '2018-12-28 11:13:17'),
(8, 14, 'test 1 updated', 'test 1 updatedasdasda', '2018-12-28 10:15:38'),
(7, 14, 'testtest', 'test tes', '2018-12-28 10:15:20'),
(16, 14, 'test', 'test', '2018-12-28 14:32:55'),
(15, 14, 'adasdas', 'sadsa', '2018-12-28 11:13:49'),
(17, 14, 'sdfsdf', 'dsfds', '2018-12-28 14:33:01'),
(18, 16, 'user post', 'user post', '2018-12-28 14:34:03'),
(19, 0, 'test', 'test', '2019-03-27 14:12:46'),
(20, 14, 'test', 'test', '2019-06-27 17:34:46');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE IF NOT EXISTS `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM  DEFAULT CHARSET=latin1 AUTO_INCREMENT=17 ;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `password`, `created_at`) VALUES
(13, 'user3', 'user3@app.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2018-12-18 11:30:21'),
(15, 'John Doe', 'johndoe@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2018-12-19 17:21:38'),
(16, 'user', 'user@app.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2018-12-28 14:33:49'),
(14, 'Mark Hermano', 'hermano.mark.mh@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '2018-12-18 14:08:32');

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
