-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 09-Fev-2018 às 23:33
-- Versão do servidor: 10.1.30-MariaDB
-- PHP Version: 7.2.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_classificados`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_anuncio`
--

CREATE TABLE `tb_anuncio` (
  `id_anuncio` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_cat` int(11) NOT NULL,
  `titulo` varchar(50) NOT NULL,
  `descr` text NOT NULL,
  `valor` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_anuncio`
--

INSERT INTO `tb_anuncio` (`id_anuncio`, `id_user`, `id_cat`, `titulo`, `descr`, `valor`, `status`) VALUES
(3, 1, 27, 'Arduino', 'placa arduino para sistemas automatização eletrônica.com porta usb, nivelador de potencia, tela de digital e leds.', 150.5, 3),
(4, 1, 29, 'Sonic Bash', 'sega lança a versão 4 do Sonic, com o mesmo layout classico do Master System dos anos 90.', 128, 2);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoria`
--

CREATE TABLE `tb_categoria` (
  `id_cat` int(11) NOT NULL,
  `nome_cat` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_categoria`
--

INSERT INTO `tb_categoria` (`id_cat`, `nome_cat`) VALUES
(23, 'Calçado'),
(26, 'Roupas'),
(27, 'Eletronico'),
(29, 'Game'),
(31, 'Musica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_imagens`
--

CREATE TABLE `tb_imagens` (
  `id_imagem` int(11) NOT NULL,
  `id_anuncio` int(11) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `senha` varchar(32) NOT NULL,
  `tel` varchar(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nome`, `email`, `senha`, `tel`) VALUES
(1, 'Ususario1', 'user1@gmail.com', '698d51a19d8a121ce581499d7b701668', '33401234'),
(2, 'Usuario2', 'user2@gmail.com', 'bcbe3365e6ac95ea2c0343a2395834dd', '33434321');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_anuncio`
--
ALTER TABLE `tb_anuncio`
  ADD PRIMARY KEY (`id_anuncio`);

--
-- Indexes for table `tb_categoria`
--
ALTER TABLE `tb_categoria`
  ADD PRIMARY KEY (`id_cat`);

--
-- Indexes for table `tb_imagens`
--
ALTER TABLE `tb_imagens`
  ADD PRIMARY KEY (`id_imagem`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_anuncio`
--
ALTER TABLE `tb_anuncio`
  MODIFY `id_anuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tb_categoria`
--
ALTER TABLE `tb_categoria`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- AUTO_INCREMENT for table `tb_imagens`
--
ALTER TABLE `tb_imagens`
  MODIFY `id_imagem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
