-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 10-Set-2019 às 03:23
-- Versão do servidor: 10.1.19-MariaDB
-- PHP Version: 5.5.38

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `db_appteste`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `app_001_conta`
--

CREATE TABLE `app_001_conta` (
  `id` int(11) NOT NULL,
  `valor` float NOT NULL,
  `tipo` int(11) NOT NULL,
  `dth_cadastro` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `app_001_conta`
--

INSERT INTO `app_001_conta` (`id`, `valor`, `tipo`, `dth_cadastro`) VALUES
(1, 123, 1, '2019-09-09'),
(2, 123, 2, '2019-09-09'),
(3, 580, 2, '2019-09-09'),
(4, 123, 1, '2019-09-09'),
(5, 258.56, 2, '2019-09-09');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `app_001_conta`
--
ALTER TABLE `app_001_conta`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `app_001_conta`
--
ALTER TABLE `app_001_conta`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
