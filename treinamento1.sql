-- phpMyAdmin SQL Dump
-- version 4.4.15.1
-- http://www.phpmyadmin.net
--
-- Host: mysql556.umbler.com
-- Generation Time: 13-Jul-2019 às 20:44
-- Versão do servidor: 5.6.40-log
-- PHP Version: 5.4.8

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `treinamento1`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `formularioinsere`
--

CREATE TABLE IF NOT EXISTS `formularioinsere` (
  `id` int(11) NOT NULL,
  `anonascimento` int(11) NOT NULL,
  `genero` enum('M','F') NOT NULL,
  `objetivo` mediumtext NOT NULL,
  `niveltreino` mediumtext NOT NULL,
  `frequencia` mediumint(9) NOT NULL,
  `numerosemanas` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=85 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `formularioinsere`
--

INSERT INTO `formularioinsere` (`id`, `anonascimento`, `genero`, `objetivo`, `niveltreino`, `frequencia`, `numerosemanas`) VALUES
(79, 0, 'M', 'Emagrecer', 'Iniciante', 2, 4),
(80, 0, 'M', 'Emagrecer', 'Iniciante', 2, 1),
(81, 0, 'F', 'Condicionamento', 'Avancado', 2, 2),
(82, 0, 'F', 'Condicionamento', 'Avancado', 2, 2),
(83, 0, 'M', 'Emagrecer', 'Iniciante', 4, 4),
(84, 0, 'M', 'Emagrecer', 'Iniciante', 2, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `treinocorrida`
--

CREATE TABLE IF NOT EXISTS `treinocorrida` (
  `idtreino` int(11) NOT NULL,
  `descricao` text NOT NULL,
  `idtreinoform` int(11) NOT NULL,
  `numerotreino` int(11) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `treinocorrida`
--

INSERT INTO `treinocorrida` (`idtreino`, `descricao`, `idtreinoform`, `numerotreino`) VALUES
(69, 'Correr 5min\r\ncaminhar 5min', 79, 1),
(70, 'Correr 10min\r\ncaminhar 5min', 79, 2),
(71, 'Correr 15min\r\ncaminhar 5min', 79, 3),
(72, 'Correr 20min\r\ncaminhar 3min', 79, 4),
(73, 'Correr 25min\r\ncaminhar 3min', 79, 5),
(74, 'Correr 25min\r\ncaminhar 3min', 79, 6),
(75, 'Correr 25min\r\ncaminhar 3min', 79, 7),
(76, 'Correr 30min\r\ncaminhar 5min', 79, 8),
(77, 'Caminhar 5min\r\nCorrer 10min\r\nCaminhar 5min', 80, 1),
(78, 'Caminhar 5min\r\nCorrer 15min\r\nCaminhar 5min', 80, 2),
(79, 'Prancha n2 2x \r\nAgachamento Smith 4x8 1min \r\nExtensão 3x12 30s \r\nFlexão 3x12 30s \r\nAbdução 3x8 50s \r\nGlúteo 4apoios 4x10 45s \r\nElev. unil. com joelho flexionado 4x5 0s\r\nAbdominal supra + infra 3x30 20s \r\nRemada trx 4x12 \r\nVoador 4x12 30s \r\nElevação lateral 3x8 \r\nTríceps roldana 3x10 \r\nRosca direta 3x10 30s', 81, 1),
(80, 'Prancha n2 2x \r\nAgachamento Smith 4x8 1min \r\nExtensão 3x12 30s \r\nFlexão 3x12 30s \r\nAbdução 3x8 50s \r\nGlúteo 4apoios 4x10 45s \r\nElev. unil. com joelho flexionado 4x5 0s\r\nAbdominal supra + infra 3x30 20s \r\nRemada trx 4x12 \r\nVoador 4x12 30s \r\nElevação lateral 3x8 \r\nTríceps roldana 3x10 \r\nRosca direta 3x10 30s', 81, 2),
(81, 'Prancha n2 2x \r\nAgachamento Smith 4x8 1min \r\nExtensão 3x12 30s \r\nFlexão 3x12 30s \r\nAbdução 3x8 50s \r\nGlúteo 4apoios 4x10 45s \r\nElev. unil. com joelho flexionado 4x5 0s\r\nAbdominal supra + infra 3x30 20s \r\nRemada trx 4x12 \r\nVoador 4x12 30s \r\nElevação lateral 3x8 \r\nTríceps roldana 3x10 \r\nRosca direta 3x10 30s', 81, 3),
(82, 'Prancha n2 2x \r\nAgachamento Smith 4x8 1min \r\nExtensão 3x12 30s \r\nFlexão 3x12 30s \r\nAbdução 3x8 50s \r\nGlúteo 4apoios 4x10 45s \r\nElev. unil. com joelho flexionado 4x5 0s\r\nAbdominal supra + infra 3x30 20s \r\nRemada trx 4x12 \r\nVoador 4x12 30s \r\nElevação lateral 3x8 \r\nTríceps roldana 3x10 \r\nRosca direta 3x10 30s', 81, 4),
(83, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 1),
(84, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 2),
(85, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 3),
(86, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 4),
(87, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 5),
(88, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 6),
(89, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 7),
(90, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 8),
(91, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 9),
(92, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 10),
(93, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 11),
(94, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 12),
(95, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 13),
(96, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 14),
(97, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 15),
(98, 'caminhar 1km 5km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 10km/h\r\nCorrer   1km 8km/h\r\nCorrer   1km 11km/h\r\nCorrer   1km 7km/h\r\n', 83, 16),
(99, 'Treino 1', 84, 1),
(100, 'Treino 2', 84, 2);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `formularioinsere`
--
ALTER TABLE `formularioinsere`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `treinocorrida`
--
ALTER TABLE `treinocorrida`
  ADD PRIMARY KEY (`idtreino`),
  ADD KEY `idtreinoform` (`idtreino`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `formularioinsere`
--
ALTER TABLE `formularioinsere`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=85;
--
-- AUTO_INCREMENT for table `treinocorrida`
--
ALTER TABLE `treinocorrida`
  MODIFY `idtreino` int(11) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=101;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
