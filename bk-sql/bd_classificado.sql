-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: 08-Fev-2018 às 01:40
-- Versão do servidor: 10.1.21-MariaDB
-- PHP Version: 7.1.1

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `bd_classificados`
--
CREATE DATABASE IF NOT EXISTS `bd_classificados` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_classificados`;

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

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_categoria`
--

CREATE TABLE `tb_categoria` (
  `id_cat` int(11) NOT NULL,
  `nome_cat` varchar(30) NOT NULL
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
  MODIFY `id_anuncio` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_categoria`
--
ALTER TABLE `tb_categoria`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `bd_escola`
--
CREATE DATABASE IF NOT EXISTS `bd_escola` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bd_escola`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_alunos`
--

CREATE TABLE `tb_alunos` (
  `id` int(11) NOT NULL,
  `nome` varchar(25) NOT NULL,
  `sobrenome` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_alunos`
--
ALTER TABLE `tb_alunos`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_alunos`
--
ALTER TABLE `tb_alunos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `bdchat`
--
CREATE DATABASE IF NOT EXISTS `bdchat` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdchat`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb-chamados`
--

CREATE TABLE `tb-chamados` (
  `id` int(11) NOT NULL,
  `ip` varchar(20) NOT NULL,
  `nome` varchar(50) NOT NULL,
  `dt-ini` datetime NOT NULL,
  `status` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb-chamados`
--
ALTER TABLE `tb-chamados`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb-chamados`
--
ALTER TABLE `tb-chamados`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;--
-- Database: `bdscv`
--
CREATE DATABASE IF NOT EXISTS `bdscv` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdscv`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `servrec`
--

CREATE TABLE `servrec` (
  `cod_sr` int(10) UNSIGNED NOT NULL,
  `recibo` int(10) UNSIGNED NOT NULL,
  `servico` int(10) UNSIGNED NOT NULL,
  `qtd` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `servrec`
--

INSERT INTO `servrec` (`cod_sr`, `recibo`, `servico`, `qtd`) VALUES
(440, 390, 1, 3),
(441, 390, 4, 2),
(442, 390, 5, 1),
(443, 390, 6, 1),
(444, 390, 8, 1),
(445, 390, 9, 4),
(446, 390, 7, 1),
(447, 390, 13, 1),
(448, 390, 14, 2),
(449, 390, 15, 1),
(450, 390, 17, 1),
(451, 390, 18, 1),
(452, 390, 19, 1),
(453, 390, 20, 1),
(454, 390, 27, 1),
(455, 390, 17, 1),
(456, 390, 14, 1),
(457, 391, 1, 1),
(458, 391, 3, 1),
(459, 391, 4, 1),
(460, 391, 5, 1),
(461, 391, 14, 1),
(462, 391, 17, 1),
(463, 391, 18, 1),
(464, 391, 19, 1),
(465, 391, 27, 1),
(466, 392, 1, 1),
(467, 393, 1, 1),
(468, 394, 3, 1),
(469, 394, 4, 1),
(470, 394, 3, 1),
(471, 395, 1, 1),
(472, 395, 3, 3),
(473, 395, 4, 1),
(474, 395, 5, 6),
(475, 395, 6, 1),
(476, 395, 7, 2),
(477, 395, 8, 1),
(478, 395, 13, 8),
(479, 395, 14, 1),
(480, 395, 15, 1),
(481, 395, 17, 1),
(482, 395, 19, 1),
(483, 395, 18, 1),
(484, 395, 20, 1),
(485, 395, 27, 1),
(486, 396, 3, 1),
(487, 397, 1, 1),
(488, 397, 3, 1),
(489, 397, 4, 1),
(490, 397, 5, 1),
(491, 397, 6, 1),
(492, 397, 7, 1),
(493, 397, 8, 1),
(494, 397, 9, 1),
(495, 397, 13, 1),
(496, 397, 14, 1),
(497, 397, 15, 1),
(498, 397, 17, 1),
(499, 397, 18, 1),
(500, 397, 19, 1),
(501, 397, 20, 1),
(502, 397, 27, 1),
(503, 398, 1, 1),
(504, 398, 14, 1),
(505, 398, 3, 1),
(506, 398, 15, 1),
(507, 398, 4, 1),
(508, 398, 27, 1),
(509, 398, 20, 1),
(510, 398, 5, 1),
(511, 398, 19, 1),
(512, 398, 6, 1),
(513, 398, 17, 1),
(514, 398, 14, 1),
(515, 398, 9, 1),
(516, 398, 6, 1),
(517, 399, 3, 1),
(518, 399, 4, 1),
(519, 400, 7, 1),
(520, 401, 17, 3),
(521, 401, 14, 1),
(522, 401, 27, 1),
(523, 401, 20, 1),
(524, 402, 3, 1),
(525, 403, 7, 1),
(526, 404, 18, 1),
(527, 405, 20, 1),
(528, 406, 20, 1),
(529, 406, 19, 1),
(530, 406, 18, 1),
(531, 406, 17, 1),
(532, 406, 15, 1),
(533, 406, 14, 1),
(534, 406, 13, 1),
(535, 406, 9, 1),
(536, 406, 8, 1),
(537, 406, 7, 1),
(538, 406, 6, 1),
(539, 406, 5, 1),
(540, 406, 4, 1),
(541, 406, 3, 1),
(542, 406, 27, 1),
(543, 406, 1, 1),
(544, 407, 3, 1),
(545, 407, 4, 1),
(546, 408, 1, 1),
(547, 409, 1, 1),
(548, 410, 4, 1),
(549, 410, 3, 1),
(550, 411, 1, 1),
(551, 412, 1, 1),
(552, 412, 3, 1),
(553, 412, 4, 1),
(554, 412, 5, 1),
(555, 412, 6, 1),
(556, 412, 7, 1),
(557, 413, 7, 1),
(558, 413, 20, 1),
(559, 414, 4, 1),
(560, 415, 6, 1),
(561, 415, 7, 1),
(562, 416, 5, 1),
(563, 416, 1, 1),
(564, 416, 9, 1),
(565, 416, 13, 1),
(566, 416, 18, 1),
(567, 417, 7, 1),
(568, 417, 9, 1),
(569, 417, 13, 1),
(570, 418, 1, 1),
(571, 418, 3, 1),
(572, 418, 3, 1),
(573, 419, 7, 1),
(574, 419, 8, 1),
(575, 419, 6, 1),
(576, 419, 1, 1),
(577, 420, 27, 1),
(578, 420, 20, 1),
(579, 420, 17, 1),
(580, 421, 1, 1),
(581, 421, 7, 1),
(582, 422, 8, 1),
(583, 422, 9, 1),
(584, 422, 4, 1),
(585, 422, 13, 1),
(586, 422, 17, 1),
(587, 423, 9, 1),
(588, 423, 13, 1),
(589, 423, 15, 1),
(590, 423, 6, 1),
(591, 424, 18, 2),
(592, 424, 14, 1),
(593, 425, 6, 1),
(594, 425, 3, 1),
(595, 425, 9, 1),
(596, 425, 13, 1),
(597, 425, 19, 1),
(598, 426, 27, 5),
(599, 426, 20, 1),
(600, 426, 19, 3);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_clientes`
--

CREATE TABLE `tb_clientes` (
  `codigo_c` int(10) UNSIGNED NOT NULL,
  `nome_c` varchar(45) NOT NULL,
  `end` varchar(45) NOT NULL,
  `num` int(10) UNSIGNED NOT NULL,
  `cep` int(15) UNSIGNED NOT NULL,
  `bairro` varchar(45) NOT NULL,
  `cidade` varchar(45) NOT NULL,
  `uf` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `rg` varchar(45) NOT NULL,
  `tel` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_clientes`
--

INSERT INTO `tb_clientes` (`codigo_c`, `nome_c`, `end`, `num`, `cep`, `bairro`, `cidade`, `uf`, `cpf`, `rg`, `tel`) VALUES
(3, 'Rafael Martins da Silva Junior', 'avemida fernandes paulo de arantes', 200, 8234781, 'conforto', 'volta redonda', 'RJ', '980', '98989', '24-99847568'),
(2, 'Filipe de oliveira Souza ', 'avenida waldomiro peres gonsalves', 1080, 27333001, 'ponte alta', 'barra mansa', 'RJ', '1052933478', '164578945', '24-81178232'),
(1, 'Diego Silva', 'rua dois', 123, 2782934, 'ponte alta', 'barra mansa', 'rj', '1231287189', '91837193719', '24 33409876'),
(4, 'Gabriel Nunes', 'rua 60', 340, 71283718, 'sessenta', 'volta redodna', 'rj', '878798790', '4564545', '24 440393029'),
(20, 'Leandro  Ap. Silva', 'rua avenida', 12, 28710011, 'logo alí', 'Barra Mansa', 'RJ', '888888888', '123098123098', '24-33429845'),
(21, 'cliente 1', 'rua 1', 1111111110, 1111111110, 'bairro 1', 'cidade 1', 'SP', '1111111110', '111111111111', '1111111111'),
(22, 'cliente 2', 'rua 2', 222222220, 222222220, 'bairro 2', 'cidade 2', 'RS', '222222220', '2222222222', '222222222'),
(23, 'cliente 3', 'rua 3', 30, 333333330, 'bairro 3', 'cidade 3', 'MG', '33333330', '3333333333', '33333333333'),
(24, 'cliente 4', 'rua 4', 40, 444444440, 'bairro 4', 'cidade 4', 'BH', '444444440', '4444444444444444', '444444444444'),
(25, 'Felipe Valentin da Silva', 'rua x', 180, 28391839, 'Eucaliptal', 'Volta Redonda', 'RJ', '9182391823', '1812981419', '24-33240983');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_rec_temp`
--

CREATE TABLE `tb_rec_temp` (
  `codigo_rt` int(11) NOT NULL,
  `recibo` int(10) UNSIGNED NOT NULL,
  `qtd` int(10) UNSIGNED NOT NULL,
  `servico` varchar(45) NOT NULL,
  `preco` float(8,2) NOT NULL,
  `total_item` float(10,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_rec_temp`
--

INSERT INTO `tb_rec_temp` (`codigo_rt`, `recibo`, `qtd`, `servico`, `preco`, `total_item`) VALUES
(578, 418, 1, 'Vacina BCG – contra a Tuberculose', 29.90, 29.90),
(579, 418, 1, 'Vacina contra a Hepatite B', 200.00, 200.00),
(580, 418, 1, 'Vacina contra a Hepatite B', 200.00, 200.00),
(598, 423, 1, 'Vacinas Anti Poliomielite', 64.00, 64.00),
(602, 425, 1, 'Vacina contra a Hepatite B', 200.00, 200.00),
(597, 423, 1, 'Vacina contra a Hepatite A', 20.00, 20.00),
(596, 423, 1, 'Vacina Tríplice Viral ', 10.00, 10.00),
(595, 423, 1, 'Vacinas Antimeningocócicas', 99.00, 99.00),
(601, 425, 1, 'Vacinas Anti Poliomielite', 64.00, 64.00),
(603, 425, 1, 'Vacinas Antimeningocócicas', 99.00, 99.00),
(604, 425, 1, 'Vacina Tríplice Viral ', 10.00, 10.00),
(605, 425, 1, 'Vacina contra a Raiva', 190.00, 190.00),
(606, 426, 5, 'Vacina Anti-Homosexualismo', 220.00, 1100.00),
(607, 426, 1, 'Vacina contra a Febre Tifóide', 210.00, 210.00),
(608, 426, 3, 'Vacina contra a Raiva', 190.00, 570.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_rec_user`
--

CREATE TABLE `tb_rec_user` (
  `codigo_r` int(10) UNSIGNED NOT NULL,
  `total` float(10,2) NOT NULL,
  `cod_user` int(10) UNSIGNED NOT NULL,
  `data` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_rec_user`
--

INSERT INTO `tb_rec_user` (`codigo_r`, `total`, `cod_user`, `data`) VALUES
(418, 429.90, 2, '23/1/2014'),
(419, 252.70, 1, '23/1/2014'),
(420, 447.60, 1, '23/1/2014'),
(421, 99.90, 1, '28/1/2014'),
(422, 235.90, 1, '28/1/2014'),
(423, 193.00, 1, '28/1/2014'),
(424, 389.00, 1, '3/2/2014'),
(425, 563.00, 2, '3/2/2014'),
(426, 1880.00, 2, '3/2/2014');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_recibo`
--

CREATE TABLE `tb_recibo` (
  `codigo_r` int(10) UNSIGNED NOT NULL,
  `data` varchar(45) NOT NULL,
  `total` float(10,2) NOT NULL,
  `cliente` int(10) UNSIGNED NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_recibo`
--

INSERT INTO `tb_recibo` (`codigo_r`, `data`, `total`, `cliente`) VALUES
(1, '14/3/2013', 90.90, 20),
(9, '15/3/2013', 394.40, 2),
(8, '15/3/2013', 218.00, 3),
(7, '14/3/2013', 324.00, 3),
(5, '14/3/2013', 189.10, 4),
(6, '14/3/2013', 138.80, 4),
(10, '15/3/2013', 483.20, 2),
(11, '15/3/2013', 299.70, 3),
(12, '15/3/2013', 399.60, 2),
(13, '15/3/2013', 386.00, 2),
(14, '15/3/2013', 998.00, 2),
(15, '16/3/2013', 200.00, 3),
(16, '16/3/2013', 434.00, 2),
(17, '16/3/2013', 333.00, 3),
(18, '16/3/2013', 634.00, 2),
(19, '16/3/2013', 220.00, 3),
(20, '16/3/2013', 342.00, 3),
(21, '16/3/2013', 222.00, 3),
(22, '16/3/2013', 152.00, 4),
(23, '16/3/2013', 318.00, 3),
(24, '16/3/2013', 29.00, 1),
(25, '16/3/2013', 649.00, 2),
(26, '16/3/2013', 99.00, 20),
(27, '16/3/2013', 419.00, 2),
(28, '16/3/2013', 565.00, 2),
(29, '16/3/2013', 414.00, 2),
(30, '16/3/2013', 386.00, 2),
(31, '16/3/2013', 426.00, 2),
(32, '17/3/2013', 200.00, 3),
(33, '17/3/2013', 179.00, 4),
(34, '17/3/2013', 3609.00, 2),
(35, '17/3/2013', 20.00, 12),
(36, '17/3/2013', 34.00, 20),
(37, '17/3/2013', 34.00, 20),
(38, '17/3/2013', 34.00, 20),
(39, '17/3/2013', 64.00, 20),
(40, '17/3/2013', 64.00, 20),
(41, '17/3/2013', 200.00, 3),
(42, '17/3/2013', 200.00, 3),
(43, '17/3/2013', 20.00, 12),
(44, '17/3/2013', 29.00, 1),
(45, '17/3/2013', 99.00, 20),
(46, '17/3/2013', 200.00, 3),
(47, '17/3/2013', 70.00, 20),
(48, '17/3/2013', 20.00, 11),
(49, '17/3/2013', 200.00, 3),
(50, '17/3/2013', 29.00, 1),
(51, '17/3/2013', 34.00, 20),
(52, '17/3/2013', 20.00, 8),
(53, '17/3/2013', 200.00, 3),
(54, '17/3/2013', 29.00, 1),
(55, '17/3/2013', 20.00, 11),
(56, '17/3/2013', 200.00, 3),
(57, '17/3/2013', 200.00, 3),
(58, '17/3/2013', 34.00, 20),
(59, '17/3/2013', 29.00, 1),
(60, '17/3/2013', 29.00, 1),
(61, '17/3/2013', 29.00, 1),
(62, '17/3/2013', 29.00, 1),
(63, '17/3/2013', 84.00, 20),
(64, '17/3/2013', 64.00, 20),
(65, '17/3/2013', 29.00, 1),
(66, '17/3/2013', 29.00, 1),
(67, '17/3/2013', 29.00, 1),
(68, '17/3/2013', 200.00, 3),
(69, '17/3/2013', 200.00, 3),
(70, '17/3/2013', 200.00, 3),
(71, '17/3/2013', 29.00, 1),
(72, '17/3/2013', 29.00, 1),
(73, '17/3/2013', 200.00, 3),
(74, '17/3/2013', 20.00, 8),
(75, '17/3/2013', 64.00, 20),
(76, '17/3/2013', 88.00, 20),
(77, '17/3/2013', 20.00, 12),
(78, '17/3/2013', 20.00, 11),
(79, '17/3/2013', 200.00, 3),
(80, '17/3/2013', 64.00, 20),
(81, '17/3/2013', 29.00, 1),
(82, '17/3/2013', 200.00, 3),
(83, '17/3/2013', 200.00, 3),
(84, '17/3/2013', 200.00, 3),
(85, '17/3/2013', 200.00, 3),
(86, '17/3/2013', 70.00, 20),
(87, '17/3/2013', 29.00, 1),
(88, '17/3/2013', 64.00, 20),
(89, '17/3/2013', 217.00, 3),
(90, '17/3/2013', 20.00, 8),
(91, '17/3/2013', 88.00, 20),
(92, '17/3/2013', 20.00, 11),
(93, '17/3/2013', 20.00, 11),
(94, '17/3/2013', 20.00, 11),
(95, '17/3/2013', 64.00, 20),
(96, '17/3/2013', 200.00, 3),
(97, '17/3/2013', 34.00, 20),
(98, '17/3/2013', 70.00, 20),
(99, '17/3/2013', 34.00, 20),
(100, '17/3/2013', 20.00, 11),
(101, '17/3/2013', 200.00, 3),
(102, '17/3/2013', 29.00, 1),
(103, '17/3/2013', 200.00, 3),
(104, '17/3/2013', 34.00, 20),
(105, '17/3/2013', 200.00, 3),
(106, '17/3/2013', 20.00, 12),
(107, '17/3/2013', 200.00, 3),
(108, '17/3/2013', 88.00, 20),
(109, '17/3/2013', 34.00, 20),
(110, '17/3/2013', 20.00, 12),
(111, '17/3/2013', 34.00, 20),
(112, '17/3/2013', 70.00, 20),
(113, '17/3/2013', 20.00, 11),
(114, '17/3/2013', 34.00, 20),
(115, '17/3/2013', 200.00, 3),
(116, '17/3/2013', 20.00, 11),
(117, '18/3/2013', 20.00, 11),
(118, '18/3/2013', 20.00, 8),
(119, '18/3/2013', 324.00, 3),
(120, '18/3/2013', 20.00, 12),
(121, '18/3/2013', 34.00, 20),
(122, '18/3/2013', 34.00, 20),
(123, '18/3/2013', 70.00, 20),
(124, '18/3/2013', 70.00, 20),
(125, '18/3/2013', 70.00, 20),
(126, '18/3/2013', 20.00, 8),
(127, '18/3/2013', 200.00, 3),
(128, '18/3/2013', 200.00, 3),
(129, '18/3/2013', 200.00, 3),
(130, '18/3/2013', 200.00, 3),
(131, '18/3/2013', 200.00, 3),
(132, '18/3/2013', 20.00, 8),
(133, '18/3/2013', 20.00, 12),
(134, '18/3/2013', 200.00, 3),
(135, '19/3/2013', 650.00, 2),
(136, '20/3/2013', 98.00, 20),
(137, '20/3/2013', 200.00, 3),
(138, '20/3/2013', 20.00, 8),
(139, '20/3/2013', 88.00, 20),
(140, '20/3/2013', 99.00, 20),
(141, '20/3/2013', 20.00, 11),
(142, '20/3/2013', 20.00, 11),
(143, '20/3/2013', 29.00, 1),
(144, '20/3/2013', 64.00, 20),
(145, '20/3/2013', 20.00, 12),
(146, '20/3/2013', 20.00, 11),
(147, '20/3/2013', 34.00, 20),
(148, '20/3/2013', 200.00, 3),
(149, '20/3/2013', 29.00, 1),
(150, '20/3/2013', 34.00, 20),
(151, '20/3/2013', 29.00, 1),
(152, '20/3/2013', 20.00, 12),
(153, '21/3/2013', 34.00, 20),
(154, '21/3/2013', 29.00, 1),
(155, '21/3/2013', 29.00, 1),
(156, '21/3/2013', 20.00, 12),
(157, '21/3/2013', 29.00, 1),
(158, '21/3/2013', 200.00, 3),
(159, '21/3/2013', 29.00, 1),
(160, '21/3/2013', 99.00, 20),
(161, '21/3/2013', 29.00, 1),
(162, '21/3/2013', 29.00, 1),
(163, '21/3/2013', 99.00, 20),
(164, '21/3/2013', 200.00, 3),
(165, '21/3/2013', 20.00, 8),
(166, '21/3/2013', 34.00, 20),
(167, '21/3/2013', 29.00, 1),
(168, '21/3/2013', 34.00, 20),
(169, '21/3/2013', 99.00, 20),
(170, '21/3/2013', 29.00, 1),
(171, '21/3/2013', 283.00, 3),
(172, '21/3/2013', 229.00, 3),
(173, '21/3/2013', 29.00, 1),
(174, '21/3/2013', 29.00, 1),
(418, '23/1/2014', 429.90, 3),
(419, '23/1/2014', 252.70, 4),
(420, '23/1/2014', 447.60, 3),
(421, '28/1/2014', 99.90, 2),
(422, '28/1/2014', 235.90, 4),
(423, '28/1/2014', 193.00, 1),
(424, '3/2/2014', 389.00, 2),
(425, '3/2/2014', 563.00, 20),
(426, '3/2/2014', 1880.00, 25);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_servicos`
--

CREATE TABLE `tb_servicos` (
  `codigo_s` int(10) UNSIGNED NOT NULL,
  `descr` varchar(60) NOT NULL,
  `preco` float(8,2) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_servicos`
--

INSERT INTO `tb_servicos` (`codigo_s`, `descr`, `preco`) VALUES
(1, 'Vacina BCG – contra a Tuberculose', 29.90),
(3, 'Vacina contra a Hepatite B', 200.00),
(4, 'Vacina Tetravalente', 20.50),
(5, 'Vacina Antitetânica', 34.00),
(6, 'Vacinas Anti Poliomielite', 64.00),
(7, 'Vacina contra o Rotavíru', 70.00),
(8, 'Vacinas Antipneumocócicas', 88.80),
(9, 'Vacinas Antimeningocócicas', 99.00),
(13, 'Vacina Tríplice Viral ', 10.00),
(14, 'Vacina contra a Varicela', 29.00),
(15, 'Vacina contra a Hepatite A', 20.00),
(17, 'Vacina contra a Febre Amarela', 17.60),
(18, 'Vacina contra o HPV', 180.00),
(19, 'Vacina contra a Raiva', 190.00),
(20, 'Vacina contra a Febre Tifóide', 210.00),
(27, 'Vacina Anti-Homosexualismo', 220.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tbuser`
--

CREATE TABLE `tbuser` (
  `codigo_user` int(10) UNSIGNED NOT NULL,
  `nome` varchar(45) NOT NULL,
  `formacao` varchar(45) NOT NULL,
  `registro` varchar(45) NOT NULL,
  `cpf` varchar(45) NOT NULL,
  `senha` varchar(45) NOT NULL
) ENGINE=MyISAM DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tbuser`
--

INSERT INTO `tbuser` (`codigo_user`, `nome`, `formacao`, `registro`, `cpf`, `senha`) VALUES
(1, 'Artur B. Fernandes Silva', 'Técnico de Enfermagem', 'COREN: RJ - 19128', '820.150.077-68', 'q1w2e3r4'),
(2, 'Sonia Silva', 'Enfermagem', 'COREN - 13465 - RJ', '654987321', 'q1w2e3r4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `servrec`
--
ALTER TABLE `servrec`
  ADD PRIMARY KEY (`cod_sr`);

--
-- Indexes for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
  ADD PRIMARY KEY (`codigo_c`);

--
-- Indexes for table `tb_rec_temp`
--
ALTER TABLE `tb_rec_temp`
  ADD PRIMARY KEY (`codigo_rt`);

--
-- Indexes for table `tb_rec_user`
--
ALTER TABLE `tb_rec_user`
  ADD PRIMARY KEY (`codigo_r`);

--
-- Indexes for table `tb_recibo`
--
ALTER TABLE `tb_recibo`
  ADD PRIMARY KEY (`codigo_r`);

--
-- Indexes for table `tb_servicos`
--
ALTER TABLE `tb_servicos`
  ADD PRIMARY KEY (`codigo_s`);

--
-- Indexes for table `tbuser`
--
ALTER TABLE `tbuser`
  ADD PRIMARY KEY (`codigo_user`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `servrec`
--
ALTER TABLE `servrec`
  MODIFY `cod_sr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=601;
--
-- AUTO_INCREMENT for table `tb_clientes`
--
ALTER TABLE `tb_clientes`
  MODIFY `codigo_c` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
--
-- AUTO_INCREMENT for table `tb_rec_temp`
--
ALTER TABLE `tb_rec_temp`
  MODIFY `codigo_rt` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=609;
--
-- AUTO_INCREMENT for table `tb_recibo`
--
ALTER TABLE `tb_recibo`
  MODIFY `codigo_r` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=427;
--
-- AUTO_INCREMENT for table `tb_servicos`
--
ALTER TABLE `tb_servicos`
  MODIFY `codigo_s` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `tbuser`
--
ALTER TABLE `tbuser`
  MODIFY `codigo_user` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1000000;--
-- Database: `bdwvasystem`
--
CREATE DATABASE IF NOT EXISTS `bdwvasystem` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `bdwvasystem`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_postagem`
--

CREATE TABLE `tb_postagem` (
  `id` int(11) NOT NULL,
  `titulo` varchar(255) CHARACTER SET utf8 NOT NULL,
  `data` varchar(12) CHARACTER SET utf8 NOT NULL,
  `imagem` varchar(255) CHARACTER SET utf8 NOT NULL,
  `exibir` varchar(5) NOT NULL,
  `descricao` longtext CHARACTER SET utf8 NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_postagem`
--

INSERT INTO `tb_postagem` (`id`, `titulo`, `data`, `imagem`, `exibir`, `descricao`) VALUES
(5, 'Chipset', '07/04/2016', '21948.jpg', 'Sim', '<div>O <b>chipset </b>Ã© um dos principais componentes lÃ³gicos de uma placa-mÃ£e, dividindo-se entre \"ponte norte\" (northbridge, controlador de memÃ³ria, alta velocidade) e \"ponte sul\" (southbridge, controlador de perifÃ©ricos, baixa velocidade). A ponte norte faz a comunicaÃ§Ã£o do processador com as memÃ³rias, e em outros casos com os barramentos de alta velocidade AGP e PCI Express. JÃ¡ a ponte sul, abriga os controladores de HDs (ATA/IDE e SATA), portas USB, paralela, PS/2, serial, os barramentos PCI e ISA, que jÃ¡ nÃ£o sÃ£o usados mais em placas-mÃ£e modernas.</div><div><br></div><div>Muitas vezes, como em algumas implementaÃ§Ãµes de controladores para processadores AMD K8 (Athlon 64 e Athlon X2, nos quais o controlador de memÃ³ria estÃ¡ embutido no processador), as duas pontes (bridges) sÃ£o substituÃ­das por um Ãºnico chip, o que reduz custos para os fabricantes.</div><div><br></div><div>O chipset Ã© quem define, entre outras coisas, a quantidade mÃ¡xima de memÃ³ria RAM que uma placa-mÃ£e pode ter, o tipo de memÃ³ria que pode ser usada (SDRAM, DDR-SDRAM, Rambus, etc.), a freqÃ¼Ãªncia mÃ¡xima das memÃ³rias e do processador e o padrÃ£o de discos rÃ­gidos aceitos (UDMA/33, UDMA/66, etc.).</div>'),
(6, 'Processador', '10/04/2016', '25585.jpg', 'Sim', '<div><b>Processador </b>Ã© um circuito integrado que realiza as funÃ§Ãµes de cÃ¡lculo e tomada de decisÃ£o de um computador. Todos os computadores e equipamentos eletrÃ´nicos baseiam-se nele para executar suas funÃ§Ãµes, podemos dizer que o processador Ã© o cÃ©rebro do computador por realizar todas estas funÃ§Ãµes, Ã© tornar o computador inteligente.</div><div><br></div><div>Um microprocessador incorpora as funÃ§Ãµes de uma unidade central de computador (CPU) em um Ãºnico circuito integrado, ou no mÃ¡ximo alguns circuitos integrados. Ã‰ um dispositivo multifuncional programÃ¡vel que aceita dados digitais como entrada, processa de acordo com as instruÃ§Ãµes armazenadas em sua memÃ³ria, e fornece resultados como saÃ­da. Microprocessadores operam com nÃºmeros e sÃ­mbolos representados no sistema binÃ¡rio.</div><div><br></div><div><br></div><div>Arquitetura interna de um microprocessador dedicado para processamento de imagens de ressonÃ¢ncia magnÃ©tica, a fotografia foi aumentada 600 vezes, sob luz ultravioleta para se enxergar os detalhes</div><div><br></div><div>Vista inferior de um Athlon XP 1800+ nÃºcleo Palomino, um microprocessador moderno.</div><div>O microprocessador Ã© um circuito integrado formado por uma camada chamada de mesa epitaxial de silÃ­cio, trabalhada de modo a formar um cristal de extrema pureza, laminada atÃ© uma espessura mÃ­nima com grande precisÃ£o, depois cuidadosamente mascarada por um processo fotogrÃ¡fico e dopada pela exposiÃ§Ã£o a altas temperaturas em fornos que contÃªm misturas gasosas de impurezas. Este processo Ã© repetido tantas vezes quanto necessÃ¡rio Ã  formaÃ§Ã£o da microarquitetura do componente.</div><div><br></div><div>ResponsÃ¡vel pela execuÃ§Ã£o das instruÃ§Ãµes num sistema, o microprocessador, escolhido entre os disponÃ­veis no mercado, determina, em certa medida a capacidade de processamento do computador e tambÃ©m o conjunto primÃ¡rio de instruÃ§Ãµes que ele compreende. O sistema operativo Ã© construÃ­do sobre este conjunto.</div>'),
(7, 'Socket', '11/04/2016', '11222.jpg', 'Nao', '<p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;\"><span class=\"notranslate\"><b>Socket </b>Ã© um componente mecÃ¢nico (s) que fornece as ligaÃ§Ãµes mecÃ¢nicas e elÃ©ctricas entre um<a href=\"https://translate.googleusercontent.com/translate_c?depth=1&amp;hl=pt-BR&amp;prev=search&amp;rurl=translate.google.com.br&amp;sl=en&amp;u=https://en.wikipedia.org/wiki/Microprocessor&amp;usg=ALkJrhhGsKTgoIe1cKhNdltAt0UCJWAJuQ\" title=\"microprocessador\" style=\"color: rgb(11, 0, 128); background: none;\">microprocessador</a>&nbsp;e uma&nbsp;<a href=\"https://translate.googleusercontent.com/translate_c?depth=1&amp;hl=pt-BR&amp;prev=search&amp;rurl=translate.google.com.br&amp;sl=en&amp;u=https://en.wikipedia.org/wiki/Printed_circuit_board&amp;usg=ALkJrhhdWwIXsRbcMMPKwnpPMsP47GebYg\" title=\"Placa de circuito impresso\" style=\"color: rgb(11, 0, 128); background: none;\">placa de circuito impresso</a>&nbsp;(PCB).</span>&nbsp;<span class=\"notranslate\">Isso permite que a CPU para ser colocado e substituÃ­do sem solda.</span></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;\"><span class=\"notranslate\">tomadas comuns tÃªm ganchos de fixaÃ§Ã£o que se aplicam uma forÃ§a constante, que deve ser superada quando um dispositivo Ã© inserido.</span>&nbsp;<span class=\"notranslate\">Para chips com um grande nÃºmero de pinos, ou&nbsp;<a href=\"https://translate.googleusercontent.com/translate_c?depth=1&amp;hl=pt-BR&amp;prev=search&amp;rurl=translate.google.com.br&amp;sl=en&amp;u=https://en.wikipedia.org/wiki/Zero_insertion_force&amp;usg=ALkJrhirF4LNyk-GH4LiKQ0vO9CC8B7qZg\" title=\"forÃ§a de inserÃ§Ã£o zero\" style=\"color: rgb(11, 0, 128); background: none;\">ZIF</a>&nbsp;(ZIF) sockets ou&nbsp;<a href=\"https://translate.googleusercontent.com/translate_c?depth=1&amp;hl=pt-BR&amp;prev=search&amp;rurl=translate.google.com.br&amp;sl=en&amp;u=https://en.wikipedia.org/wiki/Land_grid_array&amp;usg=ALkJrhgtSwRqUnrr5yWYIiX0wwaMS62VfQ\" title=\"Land Grid Array\" style=\"color: rgb(11, 0, 128); background: none;\">Land Grid Array</a>&nbsp;(LGA) soquetes sÃ£o usados â€‹â€‹em seu lugar.</span>&nbsp;<span class=\"notranslate\">Estes projetos aplicar uma forÃ§a de compressÃ£o, uma vez quer uma alÃ§a (para o tipo ZIF) ou uma placa de superfÃ­cie (tipo LGA) Ã© colocado no lugar.</span>&nbsp;<span class=\"notranslate\">Isso proporciona a retenÃ§Ã£o mecÃ¢nica superior, evitando o risco de entortar os pinos ao inserir o chip no soquete.</span></p><p style=\"margin-top: 0.5em; margin-bottom: 0.5em; line-height: 22.4px; color: rgb(37, 37, 37); font-family: sans-serif; font-size: 14px;\"><span class=\"notranslate\">Soquetes de CPU sÃ£o usados â€‹â€‹em&nbsp;<a href=\"https://translate.googleusercontent.com/translate_c?depth=1&amp;hl=pt-BR&amp;prev=search&amp;rurl=translate.google.com.br&amp;sl=en&amp;u=https://en.wikipedia.org/wiki/Desktop_computer&amp;usg=ALkJrhj4FqYfYLNid-lcocAbbwy6mnu_cg\" title=\"computador de mesa\" style=\"color: rgb(11, 0, 128); background: none;\">desktops</a>&nbsp;e&nbsp;<a href=\"https://translate.googleusercontent.com/translate_c?depth=1&amp;hl=pt-BR&amp;prev=search&amp;rurl=translate.google.com.br&amp;sl=en&amp;u=https://en.wikipedia.org/wiki/Server_computer&amp;usg=ALkJrhhbttDtPSOafwZ9tGcB6sNEALDQVg\" title=\"computador servidor\" class=\"mw-redirect\" style=\"color: rgb(11, 0, 128); background: none;\">servidores</a>&nbsp;de computadores.</span>&nbsp;<span class=\"notranslate\">Uma vez que permitem fÃ¡cil troca de componentes, eles tambÃ©m sÃ£o usados â€‹â€‹para a criaÃ§Ã£o de protÃ³tipos de novos circuitos.&nbsp;<a href=\"https://translate.googleusercontent.com/translate_c?depth=1&amp;hl=pt-BR&amp;prev=search&amp;rurl=translate.google.com.br&amp;sl=en&amp;u=https://en.wikipedia.org/wiki/Laptop&amp;usg=ALkJrhg0JXVkxO_xFMLunB5rwuOQQcERzg\" title=\"Computador portÃ¡til\" style=\"color: rgb(11, 0, 128); background: none;\">Laptops</a>&nbsp;normalmente usam&nbsp;<a href=\"https://translate.googleusercontent.com/translate_c?depth=1&amp;hl=pt-BR&amp;prev=search&amp;rurl=translate.google.com.br&amp;sl=en&amp;u=https://en.wikipedia.org/wiki/Surface-mount_technology&amp;usg=ALkJrhjovGEmW2GFAmxMjnp1d6cLx6nc-g\" title=\"tecnologia de montagem superficial\" style=\"color: rgb(11, 0, 128); background: none;\">montagem em superfÃ­cie</a>&nbsp;CPUs, que necessitam de menos espaÃ§o do que uma parte socketed.</span></p>'),
(9, 'Cooler', '11/04/2016', '8804.jpg', 'Sim', 'Cooler (em inglï¿½s: refrigerador) ï¿½ um sistema de arrefecimento usado em diversos tipos de hardwares eletrï¿½nicos com o objetivo de evitar a sobre-carga de calor que estes componentes geram. Microprocessadores de placas de computadores, por exemplo, realizam milhï¿½es de cï¿½lculos por segundo e o seu funcionamento sï¿½ ï¿½ possï¿½vel com um sistema de cooler adaptado ao componente'),
(10, 'Placa MÃ£e', '11/04/2016', '2221.jpg', 'Sim', 'A <b>placa mÃ£e</b> (do inglÃªs: <i>mainboard </i>ou <i>motherboard</i>) Ã© a parte do computador responsÃ¡vel por conectar e interligar todos os componentes do computador, ou seja, processador com memÃ³ria RAM, disco rÃ­gido, placa grÃ¡fica, entre outros.[1] AlÃ©m de permitir o trÃ¡fego de informaÃ§Ã£o, a placa tambÃ©m alimenta alguns perifÃ©ricos com a energia elÃ©trica que recebe da fonte de alimentaÃ§Ã£o.<br>'),
(11, 'BIOS', '11/04/2016', '6114.jpg', 'Sim', 'BIOS, em&nbsp;computaÃ§Ã£o&nbsp;Basic Input/Output System&nbsp;(Sistema BÃ¡sico de Entrada/SaÃ­da). O termo Ã© incorretamente conhecido como&nbsp;Basic Integrated Operating System&nbsp;(Sistema Operacional BÃ¡sico Integrado) ou&nbsp;Built In Operating System&nbsp;(Sistema Operacional Interno). O BIOS Ã© um programa de computador prÃ©-gravado em memÃ³ria permanente (firmware) executado por um computador quando ligado. Ele Ã© responsÃ¡vel pelo suporte bÃ¡sico de acesso ao hardware, bem como por iniciar a carga do sistema operacional.[1]&nbsp;A BIOS fica gravada em uma&nbsp;memÃ³ria ROM, impedindo-a de ser desinstalada'),
(12, 'RAM', '10/04/2016', '14195.jpg', 'Sim', '&nbsp;RAM Ã© um componente essencial nÃ£o apenas nos&nbsp;computadores pessoais, mas em qualquer tipo de&nbsp;computador, pois Ã© onde basicamente ficam armazenados os programas bÃ¡sicos operacionais. Por mais que exista espaÃ§o de&nbsp;armazenamento&nbsp;disponÃ­vel, na forma de um&nbsp;HDD&nbsp;ou&nbsp;memÃ³ria flash, Ã© sempre necessÃ¡ria uma certa quantidade de RAM.O termo acesso&nbsp;aleatÃ³rio&nbsp;identifica a capacidade de acesso a qualquer posiÃ§Ã£o e em qualquer momento, por oposiÃ§Ã£o ao acesso sequencial, imposto por alguns dispositivos de armazenamento, como&nbsp;fitas magnÃ©ticas. O nome nÃ£o Ã© verdadeiramente apropriado, jÃ¡ que outros tipos de memÃ³ria (como a&nbsp;ROM) tambÃ©m permitem o acesso aleatÃ³rio a seu conteÃºdo. O nome mais apropriado seria:MemÃ³ria de Leitura e Escrita, que estÃ¡ expressa na programaÃ§Ã£o computacional.'),
(13, 'Placa de Video', '11/04/2016', '22064.jpg', 'Sim', 'Placa de vÃ­deo,&nbsp;tambÃ©m chamada de&nbsp;placa grÃ¡fica&nbsp;ou&nbsp;aceleradora grÃ¡fica, Ã© um componente de um&nbsp;computador&nbsp;que envia sinais deste para o&nbsp;ecrÃ£, de forma que possam ser apresentadas imagens ao utilizador. Normalmente possui memÃ³ria, com capacidade medida em&nbsp;catetos.Os computadores de mais baratos, as placas de vÃ­deo estÃ£o incorporadas na&nbsp;placa-mÃ£e, nÃ£o possuem memÃ³ria dedicada, e por isso utilizam a&nbsp;memÃ³ria viva&nbsp;do sistema, normalmente denomina-se memÃ³ria (com)partilhada. Como a memÃ³ria viva de sistema Ã© geralmente mais lenta do que as utilizadas pelos fabricantes de placas de vÃ­deo, e ainda dividem o&nbsp;barramento&nbsp;com o&nbsp;processadore outros&nbsp;perifÃ©ricos&nbsp;para acessÃ¡-la, este mÃ©todo torna o sistema mais lento. Isso Ã© notado especialmente quando se usam recursos tridimensionais ou de alta definiÃ§Ã£o.JÃ¡ em computadores bons e mais sofisticados, o adaptador de vÃ­deo pode ter um processador prÃ³prio, o&nbsp;GPU&nbsp;ou acelerador grÃ¡fico. Trata-se de um processador capaz de gerar imagens e efeitos visuais tridimensionais, e acelerar os bidimensionais, aliviando o trabalho do processador principal e gerando um resultado final melhor e mais rÃ¡pido. Esse processador utiliza uma linguagem prÃ³pria para descriÃ§Ã£o das imagens tridimensionais, algo como \"crie uma linha do ponto x1, y1, z1 ao ponto x2, y2, z2 e coloque o observador em x3, y3, z3\" Ã© interpretado e executado, gerando o resultado final, que Ã© a imagem da linha vista pelo observador virtual. O resultado final normalmente Ã© medido considerando-se o nÃºmero de vezes por segundo que o computador consegue redesenhar uma cena, cuja unidade Ã© o FPS (quadros por segundo,&nbsp;frames per second). Comparando-se o mesmo computador com e sem processador de vÃ­deo dedicado, os resultados (em FPS) chegam a ser dezenas de vezes maiores quando se tem o dispositivo.'),
(14, 'Placa de rede', '11/04/2016', '681.png', 'Sim', 'A placa de rede Ã© o hardware que permite aos computadores conversarem entre si atravÃ©s da rede. A sua funÃ§Ã£o Ã© controlar todo o envio e recepÃ§Ã£o de&nbsp;dados&nbsp;atravÃ©s da rede. Cada arquitetura de rede exige um tipo especÃ­fico de placa de rede; sendo as arquiteturas mais comuns a rede em anel&nbsp;Token Ring&nbsp;e a tipo&nbsp;Ethernet.'),
(15, 'Roteador', '11/04/2016', '20526.jpg', 'Sim', 'Roteador&nbsp;(router&nbsp;em inglÃªs) Ã© um dispositivo que encaminha&nbsp;pacotes de dados&nbsp;entre&nbsp;redes de computadores, criando um conjunto de redes de sobreposiÃ§Ã£o. Um roteador Ã© conectado a duas ou mais linhas de dados de redes diferentes. Quando um pacote de dados chega, em uma das linhas, o roteador lÃª a informaÃ§Ã£o de endereÃ§o no pacote para determinar o seu destino final. Em seguida, usando a informaÃ§Ã£o na sua polÃ­tica tabela de roteamento ou encaminhamento, ele direciona o pacote para a rede de prÃ³xima em sua viagem. Os roteadores sÃ£o os responsÃ¡veis pelo \"trÃ¡fego\" na Internet. Um pacote de dados Ã© normalmente encaminhado de um roteador para outro atravÃ©s das redes que constituem a internetwork atÃ© atingir o nÃ³ destino. E portanto o roteador Ã© tipicamente um dispositivo da camada 3 do&nbsp;Modelo OSI.'),
(16, 'Switch', '11/04/2016', '22479.jpg', 'Sim', 'Um comutador (em inglÃªs switch) Ã© uma ponte multiportas, o que quer dizer que se trata de um elemento ativo que age no&nbsp;nÃ­vel 2&nbsp;do&nbsp;modelo OSI, Ã© um equipamento que interliga os computadores em uma rede, os cabos de rede de cada computador se ligam a ele, que entÃ£o direciona os dados enviados de um computador especificamente para outro. Ã‰ como um sistema de PABX que conecta sua ligaÃ§Ã£o exatamente para o ramal desejado deixando os outros livres. Outro equipamento com a mesma funÃ§Ã£o Ã© oHUB&nbsp;(concentrador), a diferenÃ§a dos dois reside no fato de que o HUB nÃ£o Ã© capaz de direcionar os dados de um nÃ³, ao contrÃ¡rio, ele os envia a todos conectados Ã  rede ao mesmo tempo, o destino desencapsula a mensagem e os outros a ignoram, Ã© como diversas pessoas falando numa extensÃ£o de telefone. NÃ£o Ã© preciso dizer que o Switch Ã© mais eficiente que o HUB jÃ¡ que ele organiza para onde vai a mensagem enviada, evitando redundÃ¢ncia.&nbsp;'),
(17, 'Circuito elÃ©trico', '10/04/2016', '9564.jpg', 'Sim', 'Um&nbsp;circuito elÃ©trico&nbsp;Ã© a ligaÃ§Ã£o de&nbsp;elementos elÃ©tricos,[1]&nbsp;tais como&nbsp;resistores,&nbsp;indutores,&nbsp;capacitores,&nbsp;diodos,&nbsp;linhas de transmissÃ£o,fontes de tensÃ£o,&nbsp;fontes de corrente&nbsp;e&nbsp;interruptores, de modo que formem pelo menos um caminho fechado para a&nbsp;corrente elÃ©trica.[2]Um circuito elÃ©trico simples, alimentado por pilhas, baterias ou tomadas, sempre apresenta uma fonte de energia elÃ©trica, um aparelho elÃ©trico, fios ou placas de ligaÃ§Ã£o e um interruptor para ligar e desligar o aparelho. Estando ligado, o circuito elÃ©trico estÃ¡ fechado e uma corrente elÃ©trica passa por ele. Esta corrente pode produzir vÃ¡rios efeitos: Ã³ticos, cinÃ©ticos, tÃ©rmicos, acÃºsticos, etc. Circuitos elÃ©tricos sÃ£o conjuntos formados por um&nbsp;gerador elÃ©trico, um condutor em circuito fechado e um elemento capaz de utilizar a energia produzida pelo gerador'),
(18, 'Sata', '10/04/2016', '8293.jpeg', 'Sim', 'Serial ATA,&nbsp;SATA&nbsp;ou&nbsp;S-ATA&nbsp;(acrÃ´nimo&nbsp;para&nbsp;Serial AT Attachment) Ã© uma tecnologia de transferÃªncia de dados em sÃ©rie entre um computador e dispositivos de armazenamento em massa (mass storage devices) como unidades de&nbsp;disco rÃ­gido&nbsp;e drives Ã³pticos.Ã‰ o sucessor da tecnologia&nbsp;ATA&nbsp;(acrÃ´nimo de&nbsp;AT Attachment, introduzido em 1984 pela IBM em seu computador AT. ATA, tambÃ©m conhecido como&nbsp;IDE&nbsp;ou&nbsp;Integrated Drive Electronics) que foi renomeada para&nbsp;PATA&nbsp;(Parallel ATA) para se diferenciar de SATA.Diferentemente dos discos rÃ­gidos IDE, que transmitem os dados atravÃ©s de cabos de quarenta ou oitenta fios paralelos, o que resulta num cabo enorme, os discos rÃ­gidos SATA transferem os dados em sÃ©rie. Os cabos Serial ATA sÃ£o formados por dois pares de fios (um par para transmissÃ£o e outro par para recepÃ§Ã£o) usando transmissÃ£o diferencial, e mais trÃªs fios&nbsp;terra, totalizando 7 fios,[1]&nbsp;o que permite usar cabos com menor diÃ¢metro que nÃ£o interferem na ventilaÃ§Ã£o do gabinete.As principais vantagens sobre a tradicional interface paralela Ã© que o SATA, com a estratÃ©gia de transmissÃ£o serial, possui maior rapidez na transferÃªncia de dados, possibilidade de remover ou acrescentar dispositivos do tipo&nbsp;hot-swap&nbsp;e utilizaÃ§Ã£o de cabos mais finos que permitem o resfriamento de ar de forma mais eficiente.'),
(19, 'Pata IDE', '11/04/2016', '16698.jpg', 'Sim', 'IDE, sigla para Integrated Drive Eletronics, teve seus primeiros HDs lanÃ§ados em 1986 e foi o primeiro padrÃ£o que integrou a controladora com o disco rÃ­gido. No inÃ­cio, as primeiras placas tinham somente uma entrada IDE e outra FDD, do driver de disquete. Posteriormente, passaram a ter pelo menos duas, sendo uma primÃ¡ria e outra secundÃ¡ria. O protocolo ATAPI (AT Attachment Pack Interface) foi criado para integrar placa de som, unidades de CD-ROM, caixinhas e microfone com o drive de IDE, e logo assumiu o posto com padrÃ£o.A tecnologia ATA (AT Attachment, ou ligado ao AT), que foi criada em 1984 pela IBM em seu computador chamado AT. Inicialmente o padrÃ£o ATA tambÃ©m era conhecido como IDE e com o surgimento do SATA, foi renomeada para PATA (Parallel ATA) para diferenciar as duas tecnologias.Efetua a transferÃªncia de dados de forma paralela, vÃ¡rios sinais juntos em paralelo, sÃ£o divididos antes do envio e unidos ao receber.'),
(22, 'Cabo SATA', '10/04/2016', '9330.jpg', 'Sim', 'cabo de transferÃªncia serial, dados ligados apÃ³s outros.'),
(23, 'Cabo IDE ( PATA )', '11/04/2016', '28867.jpg', 'Sim', 'Cabo de transferÃªncia paralela de dados, partes juntas em paralelo, ao lado.'),
(24, 'ENICAC', '10/04/2016', '24042.jpg', 'Sim', 'Electronic Numerical Integrator and Computer&nbsp;(ENIAC - em portuguÃªs: computador integrador numÃ©rico eletrÃ´nico) foi o primeirocomputador&nbsp;digital&nbsp;eletrÃ´nico&nbsp;de grande escala. Muitos comentam que o primeiro foi o&nbsp;Mark I, mas este era apenas eletromecÃ¢nico. Foi criado em fevereiro de&nbsp;1946&nbsp;pelos cientistas&nbsp;norte-americanos&nbsp;John Eckert&nbsp;e&nbsp;John Mauchly, da&nbsp;Electronic Control CompanyO ENIAC comeÃ§ou a ser desenvolvido em&nbsp;1943&nbsp;durante a&nbsp;II Guerra Mundial&nbsp;para computar trajetÃ³rias tÃ¡ticas que exigissem conhecimento substancial em matemÃ¡tica, mas sÃ³ se tornou operacional apÃ³s o final da guerra.Sua capacidade de processamento era de 5.000 operaÃ§Ãµes por segundo;Criado na segunda guerra, tinha como principal finalidade&nbsp;cÃ¡lculos balÃ­sticos;PossuÃ­a 17.468&nbsp;vÃ¡lvulas termiÃ´nicas, de 160&nbsp;kW&nbsp;de potÃªncia;O \"sistema operacional\" da mÃ¡quina era atravÃ©s de cartÃµes perfurados.A calculadora efetua os cÃ¡lculos a partir das teclas pressionadas, fazendo interaÃ§Ã£o direta com o hardware, como no ENIAC, no qual era preciso conectar fios, relÃªs e sequÃªncias de chaves para que se determinasse a tarefa a ser executada. A cada tarefa diferente o processo deveria ser refeito. A resposta era dada por uma sequÃªncia de lÃ¢mpadas.'),
(25, 'Macintosh', '11/04/2016', '7141.jpg', 'Sim', 'Macintosh, ou&nbsp;Mac, Ã© o nome dos&nbsp;computadores pessoais&nbsp;fabricados e comercializados pela empresa&nbsp;Apple Inc.&nbsp;desde janeiro de&nbsp;1984. O nome deriva de&nbsp;McIntosh, um tipo de&nbsp;maÃ§Ã£&nbsp;apreciado por&nbsp;Jef Raskin. O Apple Macintosh foi o primeiro computador pessoal a popularizar a&nbsp;interface grÃ¡fica, na Ã©poca um desenvolvimento revolucionÃ¡rio. Ele Ã© muito utilizado para o tratamento de vÃ­deo,&nbsp;imagem&nbsp;e&nbsp;som.Os primeiros modelos foram construÃ­dos em torno dos&nbsp;microprocessadores&nbsp;da famÃ­lia&nbsp;68000&nbsp;da&nbsp;Motorola. Com o surgimento de arquiteturas mais poderosas, a partir de&nbsp;1994&nbsp;foi empregada a famÃ­lia de processadores&nbsp;PowerPC&nbsp;da&nbsp;IBM&nbsp;e Motorola. Em&nbsp;2006, uma nova transiÃ§Ã£o ocorreu, com a adoÃ§Ã£o de processadores&nbsp;Intel, da famÃ­lia Core.'),
(26, 'Lisa', '10/04/2016', '22202.jpg', 'Sim', 'O&nbsp;Lisa&nbsp;foi um&nbsp;computador pessoal&nbsp;(PC) revolucionÃ¡rio lanÃ§ado pela&nbsp;Apple Computer&nbsp;em&nbsp;1983. Foi o primeiro PC a ter um&nbsp;mouse&nbsp;e umainterface grÃ¡fica. Essa interface foi inspirada nas estaÃ§Ãµes de trabalho&nbsp;Xerox. A ideia por trÃ¡s do Lisa era tornar os computadores mais fÃ¡ceis de usar, aumentando assim a produtividade. O projeto Lisa comeÃ§ou em&nbsp;1978[1]&nbsp;em um computador poderoso com uma&nbsp;interface grÃ¡fica do utilizador&nbsp;(GUI) alvejado em relaÃ§Ã£o aos clientes empresariais.&nbsp;Steve Jobs, co-fundador da Apple, participou de seu desenvolvimento atÃ©&nbsp;1982,[2]&nbsp;quando foi forÃ§ado a abandonÃ¡-lo juntando-se ao projeto&nbsp;Macintosh.'),
(27, 'Windows 1', '10/04/2016', '18795.jpg', 'Sim', 'A Microsoft trabalha na primeira versÃ£o de um novo sistema operacional.&nbsp;Interface Manager&nbsp;Ã© o codinome, considerado o nome final, mas&nbsp;Windows&nbsp;acaba sendo escolhido, pois descreve melhor as caixas ou \"janelas\" de computaÃ§Ã£o que sÃ£o fundamentais para o novo sistema. O Windows Ã© anunciado em 1983, mas demora um pouco para ser desenvolvido. Os cÃ©ticos o chamam de \"vaporware\" (software anunciado, mas nunca desenvolvido).Em 20 de novembro de 1985, dois anos apÃ³s o anÃºncio inicial, a Microsoft comeÃ§a a vender o Windows&nbsp;1.0. Agora, em vez de digitar comandos do MS-DOS, basta mover o mouse para apontar e clicar nas telas ou \"janelas\". Bill Gates afirma que \"Ã© um software Ãºnico, projetado para aqueles que realmente usam computador\".'),
(28, 'Windows 2', '11/04/2016', '3272.jpg', 'Sim', 'Em 9 de dezembro de 1987, a Microsoft lanÃ§a o Windows&nbsp;2.0 com Ã­cones de Ã¡rea de trabalho e memÃ³ria expandida. Com maior suporte a grÃ¡ficos, vocÃª pode sobrepor janelas, controlar o layout da tela e usar atalhos de teclado para agilizar seu trabalho. Alguns desenvolvedores de software escrevem seus primeiros programas baseados no Windows para este lanÃ§amento.O Windows&nbsp;2.0 foi desenvolvido para o processador Intel 286. Quando o processador Intel 386 Ã© lanÃ§ado, o Windows/386 vem logo em seguida, para aproveitar os recursos de memÃ³ria estendida. As versÃµes subsequentes do Windows continuam a melhorar a velocidade, a confiabilidade e a usabilidade do computador.Em 1988, a Microsoft se torna a maior empresa de software para computadores do mundo baseada em vendas. Os computadores comeÃ§am a se tornar parte do cotidiano de alguns escritÃ³rios.'),
(29, 'Windows 3', '11/04/2016', '4449.jpg', 'Sim', 'Windows&nbsp;3.0Em 22 de maio de 1990, a Microsoft anuncia o Windows&nbsp;3.0, seguido rapidamente pelo Windows&nbsp;3.1 em 1992. Juntos, eles vendem 10 milhÃµes de cÃ³pias nos dois primeiros anos, tornando o Windows o sistema operacional mais usado atÃ© entÃ£o. A dimensÃ£o do sucesso faz com que a Microsoft repense seus planos anteriores. A MemÃ³ria Virtual melhora os grÃ¡ficos visuais. Em 1990, o Windows comeÃ§a a se parecer com as versÃµes que viriam depois.O Windows agora tem um desempenho significativamente melhor, grÃ¡ficos avanÃ§ados com 16 cores e Ã­cones aperfeiÃ§oados. Uma nova onda de computadores 386 ajuda a aumentar a popularidade do Windows&nbsp;3.0. Com suporte total ao processador Intel 386, os programas se tornam perceptivelmente mais rÃ¡pidos. O Gerenciador de Programas, o Gerenciador de Arquivos e o Gerenciador de ImpressÃ£o chegam no Windows&nbsp;3.0.'),
(30, 'Windows 5', '11/04/2016', '9350.jpg', 'Sim', 'Em 24 de agosto de 1995, a Microsoft lanÃ§a o Windows&nbsp;95, estabelecendo um recorde de 7 milhÃµes de cÃ³pias vendidas nas primeiras cinco semanas. Ã‰ o lanÃ§amento da Microsoft com publicidade jamais vista. Os comerciais de televisÃ£o trazem os Rolling Stones cantando \"Start Me Up\" com imagens do novo botÃ£o Iniciar. O press release comeÃ§a simplesmente dizendo: â€œEle chegou.â€Ã‰ a era do fax/modem, do email, do novo mundo online e dos incrÃ­veis jogos multimÃ­dia e softwares educacionais. O Windows&nbsp;95 tem suporte integrado para Internet, rede de conexÃ£o discada e novos recursos Plug and Play que permitem instalar facilmente hardware e software. O sistema operacional de 32 bits tambÃ©m oferece multimÃ­dia aperfeiÃ§oada, mais recursos de computaÃ§Ã£o mÃ³vel e redes integradas.'),
(31, 'Windows 6', '11/04/2016', '4423.jpg', 'Sim', 'Windows&nbsp;98LanÃ§ado em 25 de junho de 1998, o Windows&nbsp;98 Ã© a primeira versÃ£o do Windows projetada especificamente para os consumidores. Os computadores jÃ¡ sÃ£o comuns no trabalho e em casa, e comeÃ§am a surgir os cyber cafÃ©s com acesso Ã  Internet. O Windows&nbsp;98 Ã© descrito como um sistema operacional que Ã© â€œmelhor para trabalhar e jogarâ€.Com o Windows&nbsp;98, vocÃª encontra as informaÃ§Ãµes com mais facilidade tanto no computador quanto na Internet. Outras melhorias incluem a capacidade de abrir e fechar programas mais rapidamente, alÃ©m do suporte para leitura de DVDs e dispositivos USB (barramento serial universal). Outro item que aparece nessa versÃ£o Ã© a barra de InÃ­cio rÃ¡pido, que permite que vocÃª execute programas sem precisar navegar pelo menu Iniciar ou procurar por ele na Ã¡rea de trabalho.'),
(32, 'Windows XP', '11/04/2016', '11636.jpg', 'Sim', 'Em 25 de outubro de 2001, o Windows&nbsp;XP Ã© lanÃ§ado com um visual redesenhado, centrado na usabilidade, e um centro de serviÃ§os de Ajuda e Suporte unificado. O sistema estÃ¡ disponÃ­vel em 25 idiomas. Desde a metade da dÃ©cada de 1970 atÃ© o lanÃ§amento do Windows&nbsp;XP, cerca de 1 bilhÃ£o de computadores foram vendidos no mundo inteiro.Para a Microsoft, o Windows&nbsp;XP se tornarÃ¡ um de seus produtos mais vendidos nos anos seguintes. Ele Ã© rÃ¡pido e estÃ¡vel. Navegar pelo menu Iniciar, pela Barra de tarefas e pelo Painel de controle Ã© uma experiÃªncia mais intuitiva. As pessoas estÃ£o mais conscientes sobre vÃ­rus de computador e hackers, mas, atÃ© certo ponto, os medos sÃ£o acalmados com a entrega online de atualizaÃ§Ãµes de seguranÃ§a. Os clientes comeÃ§am a compreender os avisos sobre anexos suspeitos e vÃ­rus. HÃ¡ mais Ãªnfase em Ajuda e Suporte.'),
(33, 'Windows Vista', '11/04/2016', '25245.jpg', 'Sim', 'O Windows&nbsp;Vista Ã© lanÃ§ado em 2006 com o sistema de seguranÃ§a mais forte jÃ¡ visto. O Controle de Conta de UsuÃ¡rio ajuda a evitar que programas potencialmente nocivos faÃ§am alteraÃ§Ãµes no seu computador. No Windows&nbsp;Vista Ultimate, a Criptografia de Unidade de Disco BitLocker fornece melhor proteÃ§Ã£o de dados para seu computador Ã  medida que as vendas de notebooks e as necessidades de seguranÃ§a aumentam. O Windows&nbsp;Vista tambÃ©m apresenta melhorias no Windows&nbsp;Media Player, pois, cada vez mais, as pessoas passam a ver seus computadores como um local central de mÃ­dia digital. Nele, vocÃª pode assistir Ã  televisÃ£o, exibir e enviar fotos e editar vÃ­deos.'),
(34, 'Windows Seven', '11/04/2016', '786.jpg', 'Sim', 'O Windows&nbsp;7 Ã© lanÃ§ado para o mundo sem fio no final da dÃ©cada de 2000. Os notebooks superam os desktops nas vendas, e torna-se comum a conexÃ£o Ã  Internet em pontos de acesso pÃºblicos sem fio em cafeterias e em redes particulares domÃ©sticas.O Windows&nbsp;7 inclui novas maneiras de trabalhar com janelas, como os recursos de ajuste, espiada e tremulaÃ§Ã£o, que melhoram a funcionalidade e tornam o uso da interface mais divertido. Ele tambÃ©m marca o inÃ­cio do Windows Touch, que permite aos usuÃ¡rios com tela sensÃ­vel ao toque navegar pela Internet, ver fotos e abrir arquivos e pastas.'),
(35, 'Windows 8', '10/04/2016', '31459.png', 'Sim', 'O&nbsp;Windows&nbsp;8&nbsp;Ã© um sistema operacional reinventado, desde o chipset atÃ© a experiÃªncia do usuÃ¡rio, e apresenta uma interface totalmente nova que funciona tanto com recurso touch como com um mouse e um teclado. Ele funciona como tablet para diversÃ£o e como computador completo para trabalho. O&nbsp;Windows&nbsp;8&nbsp;tambÃ©m inclui melhorias na familiar Ã¡rea de trabalho do Windows , com uma nova barra de tarefas e o gerenciamento otimizado de arquivos.O&nbsp;Windows&nbsp;8&nbsp;apresenta uma tela Inicial com blocos que se conectam a pessoas, arquivos, aplicativos e sites. Os aplicativos sÃ£o o destaque. Existe um novo local de onde se pode baixÃ¡-los, a Windows Store, posicionada logo na tela Inicial.Junto com o&nbsp;Windows&nbsp;8, a Microsoft tambÃ©m lanÃ§a oWindows&nbsp;RT, que Ã© executado em alguns tablets e computadores. O&nbsp;Windows&nbsp;RT&nbsp;foi projetado para dispositivos elegantes, com bateria de longa duraÃ§Ã£o, e sÃ³ executa aplicativos da Windows Store. Ele tambÃ©m vem com uma versÃ£o integrada do Office, otimizada para telas touch.'),
(36, 'Windows 8.1', '11/04/2016', '11488.png', 'Sim', 'O&nbsp;Windows&nbsp;8.1&nbsp;amplia a visÃ£o do&nbsp;Windows&nbsp;8, de fornecer uma coleÃ§Ã£o eficiente de aplicativos e conectividade em nuvem em Ã³timos dispositivos. Tudo o que as pessoas adoravam noWindows&nbsp;8, ainda melhor.O&nbsp;Windows&nbsp;8.1&nbsp;combina a visÃ£o de inovaÃ§Ã£o da Microsoft com os comentÃ¡rios de clientes sobre o&nbsp;Windows&nbsp;8&nbsp;para fornecer muitos aprimoramentos e novos recursos: mais opÃ§Ãµes de personalizaÃ§Ã£o da tela inicial sincronizadas em todos os dispositivos, a opÃ§Ã£o de inicializaÃ§Ã£o direta na Ã¡rea de trabalho, a Busca inteligente Bing para vocÃª encontrar o que procura no computador ou na Web, um botÃ£o Iniciar para navegar entre a Ã¡rea de trabalho e a tela inicial, alÃ©m de opÃ§Ãµes mais flexÃ­veis para visualizar vÃ¡rios aplicativos de uma vez em uma ou em todas as telas. TambÃ©m hÃ¡ vÃ¡rios novos aplicativos nativos, como o Bing Receitas e Bebidas e o Bing SaÃºde e Bem-estar, alÃ©m de Ã³timos utilitÃ¡rios, como Lista de Leitura, Calculadora e Alarmes. Muitos dos excelentes aplicativos fornecidos no&nbsp;Windows&nbsp;8&nbsp;estÃ£o de volta, ainda melhores, tornando sua experiÃªncia muito mais agradÃ¡vel desde o inÃ­cio.'),
(37, 'Windows 10', '11/04/2016', '2969.png', 'Sim', 'O&nbsp;Windows&nbsp;10&nbsp;serÃ¡ lanÃ§ado no inÃ­cio de 2015, mas nÃ£o de uma vez. A Microsoft disponibiliza versÃµes preliminares do sistema operacional para entusiastas por meio do Programa Windows Insider, convidando os clientes a contribuir para o desenvolvimento e o futuro do&nbsp;Windows&nbsp;10. Os dispositivos do mundo inteiro estÃ£o superconectados e compartilham conteÃºdo em uma velocidade impressionante, e oWindows&nbsp;10&nbsp;trabalha para tornar essa colaboraÃ§Ã£o contÃ­nua e agradÃ¡vel.O Programa Windows Insider tem um papel fundamental para tornar o&nbsp;Windows&nbsp;10&nbsp;excelente. Os Participantes do Programa Windows Insider exploram e reagem Ã s versÃµes prÃ©vias; assim, a Microsoft pode desenvolver soluÃ§Ãµes de acordo com os comentÃ¡rios diretos dos consumidores que usam o Windows todos os dias.'),
(38, 'Linux', '12/04/2016', '25573.jpg', 'Sim', 'Linux Ã© o nÃºcleo do sistema operacional, programa responsÃ¡vel pelo funcionamento do computador, que faz a comunicaÃ§Ã£o entre hardware (impressora, monitor, mouse, teclado) e software (aplicativos em geral). O conjunto do kernel e demais programas responsÃ¡veis por interagir com este Ã© o que denominamos sistema operacional. O kernel Ã© o coraÃ§Ã£o do sistema.&nbsp;Os principais programas responsÃ¡veis por interagir com o kernel foram criados pela&nbsp;fundaÃ§Ã£o GNU. Por este motivo Ã© mais correto nos referenciarmos ao sistema operacional como GNU/Linux ao invÃ©s de apenas Linux.&nbsp;Uma distribuiÃ§Ã£o nada mais Ã© que o conjunto de kernel, programas de sistema e aplicativos reunidos num Ãºnico CD-ROM (ou qualquer outro tipo de mÃ­dia). Hoje em dia temos milhares de aplicativos para a plataforma GNU/Linux, onde cada empresa responsÃ¡vel por uma distro escolhe os aplicativos que nela deverÃ£o ser inclusos.Linux: kernel e distribuiÃ§Ãµes&nbsp;- Este artigo contÃ©m explicaÃ§Ãµes introdutÃ³rias sobre o kernel do Linux, o que Ã© e como identificar suas diversas versÃµes, alÃ©m da \"definiÃ§Ã£o\" do termo \'distribuiÃ§Ã£o\' e suas vÃ¡rias faces.'),
(39, 'Ubuntu', '13/04/2016', '32442.jpg', 'Sim', 'O Ubuntu diferencia-se do Debian por ter versões lançadas semestralmente, por disponibilizar suporte técnico nos 9 meses seguintes ao lançamento de cada versão (as versões LTS – Long Term Support – para desktop recebem 5 anos de suporte, e para servidor recebem 5 anos de suporte), e pela filosofia em torno de sua concepção. A proposta do Ubuntu é oferecer um sistema que qualquer pessoa possa utilizar sem dificuldades, independentemente de nacionalidade, nível de conhecimento ou limitações físicas. O sistema deve ser constituído principalmente por software livre. Deve também ser isento de qualquer taxa.\n\nOs fãs do Ubuntu são conhecidos como \"ubuntistas\", \"ubunteiros\" ou \"teros\". Atualmente (2015) a página do Ubuntu no Distrowatch é a segunda ou terceira mais acessada [2] , estando tecnicamente empatada com os acessos ao Debian. Com a versão 15.10, o Ubuntu é o terceiro mais acessado, estando na frente o Linux Mint. O Ubuntu já foi apontado como uma das melhores distros para o uso em desktop\nA Empresa Francesa Mandriva dedicou-se à distribuição e suporte do Sistema Operacional Mandriva Linux, tinha sua sede administrativa em Paris e no centro de desenvolvimento em Curitiba no Brasil; o laboratório brasileiro recebia o nome de Mandriva Conectiva. A Mandriva possuia também um escritório em San Diego, nos Estados Unidos. O Mandriva Linux contava com um grande número de contribuidores pelo mundo e seu público-alvo englobava usuários iniciantes no mundo Linux assim como usuários mais experientes.'),
(40, 'Mandriva', '13/04/2016', '20843.jpg', 'Sim', 'Mandriva&nbsp;Linux foi uma das maiores distribuiÃ§Ãµes Linux. Nasceu da fusÃ£o entre o antigo Mandrake Linux e a brasileira Conectiva.'),
(41, 'Suse', '13/04/2016', '29896.jpg', 'Sim', 'SUSE Linux[1]&nbsp;Ã© um&nbsp;sistema operativo&nbsp;(ou sistema operacional). Ã‰ construÃ­do em cima do kernel&nbsp;Linux&nbsp;e distribuÃ­do com&nbsp;softwares&nbsp;e aplicativos de outros projetos de cÃ³digo aberto. SUSE Linux Ã© originÃ¡rio da&nbsp;Alemanha&nbsp;e desenvolvido com base na Europa. Sua primeira apariÃ§Ã£o foi em&nbsp;1994, fazendo o SUSE ser a distribuiÃ§Ã£o Linux de cunho comercial mais antiga existente. Ã‰ conhecido pela sua ferramenta de configuraÃ§Ã£o o&nbsp;YaST.'),
(42, 'Slackware', '13/04/2016', '22881.png', 'Sim', 'Slackware&nbsp;Ã© o nome da mais antiga e conhecida&nbsp;distribuiÃ§Ã£o&nbsp;Linux mantida ainda em evidÃªncia. Seu criador e responsÃ¡vel pela manutenÃ§Ã£o,&nbsp;Patrick Volkerding, estabelece uma meta de produÃ§Ã£o da distribuiÃ§Ã£o baseada em simplicidade e estabilidade, alcanÃ§ando o padrÃ£o de distribuiÃ§Ã£o mais&nbsp;Unix-like&nbsp;ao manter seus usuÃ¡rios nas camadas de configuraÃ§Ã£o em console de modo texto para uma total personalizaÃ§Ã£o do ambiente. AlÃ©m de seu uso profissional, Ã© considerado tambÃ©m como uma distribuiÃ§Ã£o de nÃ­vel acadÃªmico, mantendo uma vasta documentaÃ§Ã£o atualizada em sua raiz, para os usuÃ¡rios que necessitem de maior conhecimento para dominÃ¡-lo'),
(43, 'Debian', '13/04/2016', '19590.png', 'Sim', 'Debian&nbsp;(pronÃºncia&nbsp;dÃ©bian[3]&nbsp;) Ã© o nome de um grupo de voluntÃ¡rios que o mantÃªm Ã  volta do mundo. A principal distribuiÃ§Ã£o mantida pelo projeto Ã©&nbsp;Debian GNU/Linux&nbsp;(ou simplesmente Debian), o projeto tambÃ©m distribui sistemas com outros&nbsp;nÃºcleosUnix-like, como o&nbsp;Debian GNU/kFreeBSD&nbsp;e o&nbsp;Debian GNU/Hurd. O Debian Ã© especialmente conhecido pelo seu sistema de gestÃ£o de pacotes, chamado&nbsp;APT, que permite: atualizaÃ§Ãµes relativamente fÃ¡ceis a partir de versÃµes realmente antigas; instalaÃ§Ãµes quase sem esforÃ§o de novos pacotes e remoÃ§Ãµes limpas dos pacotes antigos. Atualmente o Debian Stable se encontra na versÃ£o 8.3[4]&nbsp;, codinome \"Jessie\".O Debian Stable procura sempre manter os pacotes mais estÃ¡veis, assim, ele mantÃ©m o Gnome e KDE, por exemplo em versÃµes mais antigas que muitas outras distribuiÃ§Ãµes Linux por padrÃ£o. O fato dele conter pacotes mais antigos, garantindo a estabilidade, faz com que seja bem visado por servidores e tambÃ©m por usuÃ¡rios que desejam estabilidade em estaÃ§Ãµes de trabalho ou desktops domÃ©sticos.'),
(44, 'Fedora', '13/04/2016', '6471.png', 'Sim', 'Fedora&nbsp;antigamente chamado&nbsp;Fedora Core&nbsp;Ã© um&nbsp;sistema operativo&nbsp;que tem por base o Linux, a&nbsp;distribuiÃ§Ã£o Linux&nbsp;Ã© completamente livre de custos para poder usufruir e partilhar. Foi criada pela&nbsp;Red Hat. Atualmente mantida pelo Projeto Fedora (Fedora Project) e patrocinado pela Red Hat. Depois da instalaÃ§Ã£o o&nbsp;GNOME&nbsp;fica como&nbsp;gestor de desktop&nbsp;padrÃ£o, podendo ser mudado para o&nbsp;KDE,&nbsp;WindowMaker,&nbsp;XFCE&nbsp;e outros. JÃ¡ vem com o&nbsp;browser&nbsp;Mozilla Firefox, com&nbsp;LibreOffice&nbsp;e suporte a diversos idiomas, alÃ©m de uma grande diversidade de programas para servidores e desktops. Novas versÃµes do Fedora sÃ£o lanÃ§adas aproximadamente a cada 6 meses, tendo como padrÃ£o trÃªs versÃµes-teste para validaÃ§Ã£o e correÃ§Ã£o de&nbsp;defeitos, reportados atravÃ©s do sistema&nbsp;bugzilla&nbsp;do projeto. Atualmente (desde a versÃ£o 21) o Fedora estÃ¡ disponÃ­vel em 3 versÃµes principais: Fedora Workstation (para uso no desktop), Fedora Server (para servidores) e Fedora Cloud (para serviÃ§os na nuvem). Existe tambÃ©m as spins do Fedora, que sÃ£o versÃµes com ferramentas e desktopÂ´s (ambientes grÃ¡ficos) especÃ­ficos como o&nbsp;KDE,&nbsp;XFCE,&nbsp;LXDE, Games, Robotics, Security e outros.'),
(45, 'MAC OS', '13/04/2016', '9253.jpg', 'Sim', 'O&nbsp;Macintosh Operating System&nbsp;(Mac OS) Ã© a denominaÃ§Ã£o de um&nbsp;sistema operacional&nbsp;padrÃ£o dos computadores&nbsp;Macintoshproduzidos pela&nbsp;Apple Inc.. A primeira versÃ£o foi lanÃ§ada em 1984. AtÃ© antes da versÃ£o 7.6, era apenas chamado System (ex.: System 4, System 7), da versÃ£o 7.6 em diante passou a ser chamado Mac OS. AtÃ© a versÃ£o 10.7, denominava-se&nbsp;Mac OS X. A partir da versÃ£o 10.8, removeu-se o \"Mac\", utilizando-se apenas&nbsp;OS X. A remoÃ§Ã£o do \"Mac\" reflete na tentativa da Apple em aproximar osistema operacional&nbsp;desktop&nbsp;de seu SO mobile, o&nbsp;iOS.Foi o segundo sistema operacional a usar uma&nbsp;GUI&nbsp;(Depois do protÃ³tipo&nbsp;Xerox Alto, desenvolvido na&nbsp;Xerox PARC), e o primeiro sistema grÃ¡fico amplamente usado em computadores a usar Ã­cones para representar os itens do computador, como programas, pastas e documentos. TambÃ©m foi pioneiro na disseminaÃ§Ã£o do conceito de&nbsp;Desktop, com uma Mesa de Trabalho com Ã­cones de documentos, pastas e uma lixeira, em analogia ao ambiente de escritÃ³rio.'),
(46, 'Html', '13/04/2016', '11323.jpg', 'Sim', 'HTML&nbsp;(abreviaÃ§Ã£o para a expressÃ£o inglesa HyperText Markup Language, que significa Linguagem de MarcaÃ§Ã£o de Hipertexto) Ã© uma linguagem de marcaÃ§Ã£o utilizada na construÃ§Ã£o de pÃ¡ginas na Web. Documentos&nbsp;HTML&nbsp;podem ser interpretados por navegadores.'),
(47, 'CSS', '13/04/2016', '32600.jpg', 'Sim', 'Cascading Style Sheets&nbsp;(CSS) Ã© uma&nbsp;linguagem de folhas de estilo&nbsp;utilizada para definir a apresentaÃ§Ã£o de documentos escritos em uma linguagem de marcaÃ§Ã£o, como&nbsp;HTML&nbsp;ou&nbsp;XML. O seu principal benefÃ­cio Ã© a separaÃ§Ã£o entre o formato e o conteÃºdo de um documento.Em vez de colocar a formataÃ§Ã£o dentro do documento, o desenvolvedor cria um&nbsp;link&nbsp;(ligaÃ§Ã£o) para uma pÃ¡gina que contÃ©m os estilos, procedendo de forma idÃªntica para todas as pÃ¡ginas de um&nbsp;portal. Quando quiser alterar a aparÃªncia do&nbsp;portal&nbsp;basta portanto modificar apenas um arquivo.Com a variaÃ§Ã£o de atualizaÃ§Ãµes dos&nbsp;navegadores&nbsp;(browsers) como&nbsp;Internet Explorer&nbsp;que ficou sem nova versÃ£o de&nbsp;2001&nbsp;a&nbsp;2006, o suporte ao CSS pode variar. O Internet Explorer 6, por exemplo, tem suporte total a CSS1 e praticamente nulo a CSS2. Navegadores mais modernos como&nbsp;Google Chrome&nbsp;e&nbsp;Mozilla Firefox&nbsp;tem suporte maior, inclusive atÃ© a CSS3, ainda em desenvolvimento.A interpretaÃ§Ã£o dos navegadores pode ser avaliada com o teste&nbsp;Acid2, que se tornou uma forma base de revelar quÃ£o eficiente Ã© o suporte de CSS, fazendo com que a nova versÃ£o em desenvolvimento do Firefox seja totalmente compatÃ­vel a ele assim como o Opera jÃ¡ Ã©. O&nbsp;Doctype&nbsp;informado ou a ausÃªncia dele determina o&nbsp;quirks mode&nbsp;ou o&nbsp;strict mode&nbsp;modificando o modo como o CSS Ã© interpretado e a pÃ¡gina desenhada.'),
(48, 'JavaScript', '13/04/2016', '14513.png', 'Sim', 'JavaScript&nbsp;Ã© uma&nbsp;linguagem de programaÃ§Ã£o&nbsp;interpretada[2]&nbsp;. Foi originalmente implementada como parte dos&nbsp;navegadores web&nbsp;para que&nbsp;scripts&nbsp;pudessem ser executados do lado do cliente e interagissem com o usuÃ¡rio sem a necessidade deste script passar peloservidor, controlando o navegador, realizando comunicaÃ§Ã£o assÃ­ncrona e alterando o conteÃºdo do documento exibido.Ã‰ atualmente a principal&nbsp;linguagem para programaÃ§Ã£o&nbsp;client-side&nbsp;em navegadores web. ComeÃ§a tambÃ©m a ser bastante utilizada do lado do servidor atravÃ©s de ambientes como o&nbsp;node.js. Foi concebida para ser uma linguagem script com&nbsp;orientaÃ§Ã£o a objetosbaseada em protÃ³tipos, tipagem fraca e dinÃ¢mica e funÃ§Ãµes de primeira classe. Possui suporte Ã &nbsp;programaÃ§Ã£o funcional&nbsp;e apresenta recursos como fechamentos e funÃ§Ãµes de alta ordem comumente indisponÃ­veis em linguagens populares como&nbsp;Java&nbsp;e&nbsp;C++.'),
(49, 'JQuery', '13/04/2016', '16790.jpg', 'Sim', 'jQuery&nbsp;Ã© uma&nbsp;biblioteca&nbsp;JavaScript&nbsp;cross-browser&nbsp;desenvolvida para simplificar os&nbsp;scripts&nbsp;client side&nbsp;que interagem com o&nbsp;HTML.[1]Ela foi lanÃ§ada em dezembro de&nbsp;2006&nbsp;no&nbsp;BarCamp&nbsp;de&nbsp;Nova York&nbsp;por John Resig. Usada por cerca de 77% dos 10 mil sites mais visitados do mundo, jQuery Ã© a mais popular das bibliotecas JavaScript.[2]&nbsp;[3]jQuery Ã© uma biblioteca de&nbsp;cÃ³digo aberto&nbsp;e possui&nbsp;licenÃ§a dual, fazendo uso da&nbsp;LicenÃ§a MIT&nbsp;ou da&nbsp;GNU General Public LicenseversÃ£o 2.[4]&nbsp;A sintaxe do jQuery foi desenvolvida para tornar mais simples a navegaÃ§Ã£o do documento HTML, a seleÃ§Ã£o de elementosDOM, criar animaÃ§Ãµes, manipular eventos e desenvolver&nbsp;aplicaÃ§Ãµes AJAX. A biblioteca tambÃ©m oferece a possibilidade de criaÃ§Ã£o deplugins&nbsp;sobre ela. Fazendo uso de tais facilidades, os desenvolvedores podem criar camadas de&nbsp;abstraÃ§Ã£o&nbsp;para interaÃ§Ãµes de mais baixo nÃ­vel, simplificando o desenvolvimento de aplicaÃ§Ãµes web dinÃ¢micas de grande complexidade.A&nbsp;Microsoft&nbsp;e a&nbsp;Nokia&nbsp;anunciaram planos de incluir o jQuery em suas plataformas,[5]&nbsp;a Microsoft adotando-a inicialmente no&nbsp;Visual Studio[6]&nbsp;para uso com o framework AJAX do&nbsp;ASP.NET, e a Nokia na sua plataforma Web Run-Time de widgets.[7]&nbsp;A biblioteca jQuery tambÃ©m tem sido usada no&nbsp;MediaWiki&nbsp;desde a versÃ£o 1.16.'),
(50, 'Ajax', '13/04/2016', '20759.jpg', 'Sim', 'Ajax (acrÃ´nimo&nbsp;em&nbsp;lÃ­ngua inglesa&nbsp;de&nbsp;Asynchronous&nbsp;Javascript&nbsp;and&nbsp;XML[1]&nbsp;, em portuguÃªs \"Javascript e XML AssÃ­ncrono\") Ã© o uso metodolÃ³gico de tecnologias como&nbsp;Javascripte&nbsp;XML, providas por&nbsp;navegadores, para tornar pÃ¡ginas&nbsp;Web&nbsp;mais interativas com o usuÃ¡rio, utilizando-se de solicitaÃ§Ãµes assÃ­ncronas de informaÃ§Ãµes. Foi inicialmente desenvolvida pelo estudioso&nbsp;JessÃ© James Garret&nbsp;e mais tarde por diversas associaÃ§Ãµes. Apesar do nome, a utilizaÃ§Ã£o de XML nÃ£o Ã© obrigatÃ³ria (JSON&nbsp;Ã© frequentemente utilizado) e as solicitaÃ§Ãµes tambÃ©m nÃ£o necessitam ser assÃ­ncronas'),
(51, 'PHP', '13/04/2016', '14596.png', 'Sim', 'PHP&nbsp;(um&nbsp;acrÃ´nimo&nbsp;recursivo para&nbsp;\"PHP:&nbsp;Hypertext&nbsp;Preprocessor\", originalmente&nbsp;Personal&nbsp;Home&nbsp;Page) Ã© uma&nbsp;linguagem interpretadalivre, usada originalmente apenas para o desenvolvimento de aplicaÃ§Ãµes presentes e atuantes no&nbsp;lado do servidor, capazes de gerar conteÃºdo dinÃ¢mico na&nbsp;World Wide Web.[2]&nbsp;Figura entre as primeiras linguagens passÃ­veis de inserÃ§Ã£o em documentos&nbsp;HTML, dispensando em muitos casos o uso de arquivos externos para eventuais processamentos de dados. O&nbsp;cÃ³digo&nbsp;Ã© interpretado no lado do servidor pelo mÃ³dulo PHP, que tambÃ©m gera a pÃ¡gina web a ser visualizada no&nbsp;lado do cliente. A linguagem evoluiu, passou a oferecer funcionalidades em linha de comando, e alÃ©m disso, ganhou caracterÃ­sticas adicionais, que possibilitaram usos adicionais do PHP, nÃ£o relacionados a web sites. Ã‰ possÃ­vel instalar o PHP na maioria dos sistemas operacionais, gratuitamente. Concorrente direto da tecnologia&nbsp;ASP&nbsp;pertencente Ã  Microsoft, o PHP Ã© utilizado em aplicaÃ§Ãµes como o&nbsp;MediaWiki,&nbsp;Facebook,&nbsp;Drupal,&nbsp;Joomla,&nbsp;WordPress,Magento&nbsp;e o&nbsp;Oscommerce.Criado por&nbsp;Rasmus Lerdorf&nbsp;em 1995, o PHP tem a produÃ§Ã£o de sua implementaÃ§Ã£o principal, referÃªncia formal da linguagem, mantida por uma organizaÃ§Ã£o chamada The PHP Group. O PHP Ã© software livre, licenciado sob a PHP License, uma licenÃ§a incompatÃ­vel com a GNU General Public License (GPL) devido a restriÃ§Ãµes no uso do termo PHP.'),
(52, 'Java', '13/04/2016', '12013.jpg', 'Sim', 'Java Ã© uma&nbsp;linguagem de programaÃ§Ã£o&nbsp;interpretada&nbsp;orientada a objetos&nbsp;desenvolvida na&nbsp;dÃ©cada de 90&nbsp;por uma equipa de programadores chefiada por&nbsp;James Gosling, na empresa&nbsp;Sun Microsystems. Diferente das linguagens de programaÃ§Ã£o convencionais, que sÃ£o&nbsp;compiladas&nbsp;para&nbsp;cÃ³digo nativo, a linguagem Java Ã© compilada para umbytecode&nbsp;que Ã© executado por uma&nbsp;mÃ¡quina virtual. A linguagem de programaÃ§Ã£o Java Ã© a linguagem convencional da&nbsp;Plataforma Java, mas nÃ£o Ã© a sua Ãºnica linguagem.'),
(53, 'C++', '13/04/2016', '24866.png', 'Sim', 'C++&nbsp;(em&nbsp;portuguÃªs&nbsp;lÃª-se \"cÃª mais mais\", em&nbsp;inglÃªs&nbsp;lÃª-se&nbsp;see plus plus) Ã© uma&nbsp;linguagem de programaÃ§Ã£o compilada&nbsp;multi-paradigma(seu suporte inclui linguagem&nbsp;imperativa,orientada a objetos&nbsp;e&nbsp;genÃ©rica)&nbsp;e de uso geral. A linguagem Ã© considerada de mÃ©dio nÃ­vel, pois combina caracterÃ­sticas de linguagens de&nbsp;alto&nbsp;e&nbsp;baixo&nbsp;nÃ­veis. Desde os&nbsp;anos 1990&nbsp;Ã© uma das linguagens comerciais mais populares, sendo bastante usada tambÃ©m na&nbsp;academia&nbsp;por seu grande desempenho e base de utilizadores.Bjarne Stroustrup&nbsp;desenvolveu o C++ (originalmente com o nome&nbsp;C with&nbsp;Classes,[1]&nbsp;que significa&nbsp;C com&nbsp;classes&nbsp;em portuguÃªs) em1983&nbsp;no&nbsp;Bell Labs&nbsp;como um adicional Ã  linguagem&nbsp;C. Novas caracterÃ­sticas foram adicionadas com o tempo, como funÃ§Ãµes virtuais, sobrecarga de&nbsp;operadores,&nbsp;heranÃ§a mÃºltipla, gabaritos e&nbsp;tratamento de exceÃ§Ãµes. ApÃ³s a padronizaÃ§Ã£o&nbsp;ISO&nbsp;realizada em&nbsp;1998&nbsp;e a posterior revisÃ£o realizada em&nbsp;2003, uma nova versÃ£o da especificaÃ§Ã£o da linguagem foi lanÃ§ada em dezembro de&nbsp;2014, conhecida informalmente como&nbsp;C++14'),
(54, 'C#', '13/04/2016', '26547.png', 'Sim', 'C#&nbsp;(lÃª-se \"cÃª xarpe\"), Ã© uma&nbsp;linguagem de programaÃ§Ã£o&nbsp;interpretada&nbsp;multi-paradigma&nbsp;fortemente tipada, e, possuindo paradigmas de programaÃ§Ã£o&nbsp;imperativa,&nbsp;funcional,&nbsp;declarativa,&nbsp;orientada a objetos&nbsp;e&nbsp;generica&nbsp;C# foi desenvolvida pela&nbsp;Microsoft&nbsp;como parte daplataforma .NET. A sua sintaxe orientada a objetos foi baseada no&nbsp;C++&nbsp;mas inclui muitas influÃªncias de outras linguagens de programaÃ§Ã£o, como&nbsp;Object Pascal&nbsp;e&nbsp;Java. A linguagem C# Ã© compilada para&nbsp;bytecode&nbsp;e Ã© interpretada pela mÃ¡quina virtual&nbsp;Common Language Runtime&nbsp;');
INSERT INTO `tb_postagem` (`id`, `titulo`, `data`, `imagem`, `exibir`, `descricao`) VALUES
(55, 'Asp', '13/04/2016', '24944.png', 'Sim', 'O&nbsp;ASP&nbsp;(de&nbsp;Active Server Pages), tambÃ©m conhecido como ASP ClÃ¡ssico hoje em dia, Ã© uma estrutura de bibliotecas bÃ¡sicas (e nÃ£o uma linguagem) para processamento delinguagens de script&nbsp;no lado servidor para geraÃ§Ã£o de conteÃºdo dinÃ¢mico na&nbsp;Web. Exemplos de linguagens aceitas sÃ£o:&nbsp;VBScript,&nbsp;JScript,&nbsp;PerlScript,&nbsp;Tcl&nbsp;ou&nbsp;Python&nbsp;sendo que apenas as duas primeiras sÃ£o suportadas por padrÃ£o.Porem nÃ£o sÃ£o linguagens consideradas em ascensÃ£o no ambiente de programaÃ§Ã£o Web, sendo mais Indicado o PHPEle roda/corre nativamente em&nbsp;Windows Server, atravÃ©s do serviÃ§o chamado de&nbsp;IIS&nbsp;(Internet Information Service) - o&nbsp;servidor web&nbsp;da&nbsp;Microsoft, ou do&nbsp;PWS&nbsp;(Personal Web Server) em ambientes com&nbsp;Windows 98. AlÃ©m disso ele pode rodar/correr em outras plataformas, como&nbsp;Linux&nbsp;no servidor&nbsp;Apache&nbsp;quando usando um&nbsp;mÃ³dulo&nbsp;de um programa como o&nbsp;Tomcat.O script Ã© interpretado no lado do servidor e o que Ã© enviado ao lado do usuÃ¡rio/utilizador (navegador, por exemplo) Ã© apenas a saÃ­da que normalmente Ã© uma&nbsp;linguagem de marcaÃ§Ã£o&nbsp;como&nbsp;HTML,&nbsp;XHTML&nbsp;ou&nbsp;XML.Linguagens como o&nbsp;Javascript&nbsp;e o VBScript podem ser processadas pelo navegador do visitante. Neste caso, este tem que suportar a linguagem. Contudo, como o ASP Ã© processado pelo servidor, hÃ¡ independÃªncia de navegadores, uma vez que eles sÃ³ processarÃ£o HTML. AtravÃ©s dessa tecnologia tambÃ©m Ã© possÃ­vel executar consultas aBanco de Dados, atravÃ©s da biblioteca de componentes&nbsp;ActiveX.'),
(56, 'Xml', '13/04/2016', '19689.png', 'Sim', 'XML&nbsp;(eXtensible&nbsp;Markup&nbsp;Language) Ã© uma recomendaÃ§Ã£o da&nbsp;W3C&nbsp;para gerar&nbsp;linguagens de marcaÃ§Ã£o&nbsp;para necessidades especiais.[3]Ã‰ um dos subtipos da&nbsp;SGML&nbsp;(acrÃ´nimo de&nbsp;Standard Generalized Markup Language&nbsp;ou&nbsp;Linguagem Padronizada de MarcaÃ§Ã£o GenÃ©rica) capaz de descrever diversos tipos de dados. Seu propÃ³sito principal Ã© a facilidade de compartilhamento de informaÃ§Ãµes atravÃ©s da&nbsp;internet.Entre linguagens baseadas em XML incluem-se&nbsp;XHTML&nbsp;(formato para pÃ¡ginas&nbsp;Web),&nbsp;RDF,&nbsp;SDMX,&nbsp;SMIL,&nbsp;MathML&nbsp;(formato para expressÃµes matemÃ¡ticas),&nbsp;NCL,&nbsp;XBRL,&nbsp;XSIL&nbsp;e&nbsp;SVG&nbsp;(formato grÃ¡fico vetorial). A principal caracterÃ­stica do XML, de criar uma infraestrutura Ãºnica para diversas linguagens, Ã© que linguagens desconhecidas e de pouco uso tambÃ©m podem ser definidas sem maior trabalho e sem necessidade de ser submetidas aos comitÃªs de padronizaÃ§Ã£o.'),
(57, 'Json', '13/04/2016', '28014.png', 'Sim', 'JSON&nbsp;(com a pronÃºncia [\'dÊ’ejzÉ™n], J-son em inglÃªs, (Jay-son)), um&nbsp;acrÃ´nimo&nbsp;para \"JavaScript&nbsp;Object&nbsp;Notation\", Ã© um formato leve para intercÃ¢mbio de dados computacionais.&nbsp;JSON&nbsp;Ã© um subconjunto da notaÃ§Ã£o de objeto de&nbsp;JavaScript, mas seu uso nÃ£o requer JavaScript exclusivamente.[1]&nbsp;[2]&nbsp;O formato JSON foi originalmente criado por&nbsp;Douglas Crockford&nbsp;e Ã© descrito no&nbsp;RFC 4627. O&nbsp;media-type&nbsp;oficial do JSON Ã©&nbsp;application/json&nbsp;e a extensÃ£o Ã©&nbsp;.json.A simplicidade de JSON tem resultado em seu uso difundido, especialmente como uma alternativa para&nbsp;XML&nbsp;em&nbsp;AJAX. Uma das vantagens reivindicadas de&nbsp;JSON&nbsp;sobre&nbsp;XML&nbsp;como um formato para intercÃ¢mbio de dados neste contexto, Ã© o fato de ser muito mais fÃ¡cil escrever um analisador JSON. Em JavaScript mesmo, JSON pode ser analisado trivialmente usando a funÃ§Ã£o&nbsp;eval(). Isto foi importante para a aceitaÃ§Ã£o de JSON dentro da comunidade AJAX devido a presenÃ§a deste recurso de JavaScript em todos osnavegadores web&nbsp;atuais.'),
(58, 'Visual Baisc', '13/04/2016', '19471.png', 'Sim', 'O&nbsp;Visual Basic&nbsp;Ã© uma&nbsp;linguagem de programaÃ§Ã£o&nbsp;produzida pela empresa&nbsp;Microsoft, e Ã© parte integrante do pacote&nbsp;Microsoft Visual Studio. Sua versÃ£o mais recente faz parte do pacote&nbsp;Visual Studio .NET, voltada para&nbsp;aplicaÃ§Ãµes&nbsp;.Net. Sua versÃ£o anterior fez parte do Microsoft Visual Studio 6.0, ainda muito utilizado atualmente por aplicaÃ§Ãµes legadas...Um aperfeiÃ§oamento do&nbsp;BASIC, a linguagem Ã© dirigida por eventos (event driven), e possui tambÃ©m um ambiente de desenvolvimento integrado (IDE â€” Integrated Development Environment) totalmente grÃ¡fico, facilitando enormemente a construÃ§Ã£o da interface das aplicaÃ§Ãµes (GUI â€” Graphical User Interface).[1]&nbsp;O nome Visual Basic, Ã© Derivado de:Basic â€” a linguagem de ProgramaÃ§Ã£oVisual â€” o Nome do Pacote EX: Visual studio (Visual C++,&nbsp;Visual C#,&nbsp;Visual Basic .NET)Visual Basic era muito usada em ambientes corporativos: uma pesquisa de 2005 indicou que 62% dos programadores usavam uma forma de Visual Basic, seguido de&nbsp;C++,JavaScript,&nbsp;C#&nbsp;e Java. Atualmente foi suplantada pelo&nbsp;Java[2]Em suas primeiras versÃµes, o Visual Basic nÃ£o permitia acesso a&nbsp;bancos de dados, sendo portanto voltado apenas para iniciantes, mas devido ao sucesso entre as empresas â€” que faziam uso de componentes adicionais fabricados por terceiros para acesso a dados â€” a linguagem logo adotou tecnologias como&nbsp;DAO,&nbsp;RDO, e&nbsp;ADO, tambÃ©m da Microsoft, permitindo fÃ¡cil acesso a&nbsp;bases de dados. Mais tarde foi adicionada tambÃ©m a possibilidade de criaÃ§Ã£o de controles&nbsp;ActiveX, e, com a chegada do Visual Studio .NET, o Visual Basic â€” que era pseudo-orientada a objetos â€” tornou-se uma linguagem totalmente orientada a objetos (OO).'),
(59, 'Ms Dos', '13/04/2016', '9372.jpg', 'Sim', 'MS-DOS&nbsp;acrÃ´nimo de&nbsp;MicroSoft&nbsp;Disk&nbsp;Operating&nbsp;System Ã© um&nbsp;sistema operacional, comprado pela&nbsp;Microsoft&nbsp;para ser usado na linha de computadores&nbsp;IBM PC. O dono, e criador original do projeto&nbsp;QDOS&nbsp;-&nbsp;Quick and&nbsp;Dirty&nbsp;Operating&nbsp;System, Ã© a empresa Seattle Computer Systems, que foi inicialmente uma tentativa de criar um concorrente do estabelecido Sistema Operacional&nbsp;CP/M&nbsp;que rodasse no recÃ©m-lanÃ§ado processador&nbsp;8086&nbsp;da&nbsp;Intel.'),
(60, 'Unix', '13/04/2016', '20133.jpg', 'Sim', 'Unix&nbsp;Ã© um&nbsp;sistema operativo&nbsp;(ou sistema operacional)&nbsp;portÃ¡til&nbsp;(ou portÃ¡vel),&nbsp;multitarefa&nbsp;e&nbsp;multiutilizador&nbsp;(ou&nbsp;multiusuÃ¡rio) originalmente criado por&nbsp;Ken Thompson,&nbsp;Dennis Ritchie,&nbsp;Douglas McIlroy&nbsp;e&nbsp;Peter Weiner, que trabalhavam nos LaboratÃ³rios Bell (Bell Labs) da&nbsp;AT&amp;T. A marca&nbsp;UNIX&nbsp;Ã© uma propriedade do&nbsp;The Open Group, um consÃ³rcio formado por empresas de informÃ¡tica.'),
(61, 'Python', '13/04/2016', '29306.jpg', 'Sim', 'Python&nbsp;Ã© uma&nbsp;linguagem de programaÃ§Ã£o de alto nÃ­vel[4]&nbsp;,&nbsp;interpretada, de&nbsp;script,&nbsp;imperativa,&nbsp;orientada a objetos,&nbsp;funcional, detipagem&nbsp;dinÃ¢mica e forte. Foi lanÃ§ada por&nbsp;Guido van Rossum&nbsp;em&nbsp;1991.[1]&nbsp;Atualmente possui um modelo de desenvolvimento comunitÃ¡rio, aberto e gerenciado pela&nbsp;organizaÃ§Ã£o sem fins lucrativos&nbsp;Python Software Foundation. Apesar de vÃ¡rias partes da linguagem possuÃ­rem padrÃµes e especificaÃ§Ãµes formais, a linguagem como um todo nÃ£o Ã© formalmente especificada. O padrÃ£o&nbsp;de facto&nbsp;Ã© a implementaÃ§Ã£o&nbsp;CPython.A linguagem foi projetada com a filosofia de enfatizar a importÃ¢ncia do esforÃ§o do programador sobre o esforÃ§o computacional. Prioriza a legibilidade do cÃ³digo sobre a velocidade ou expressividade. Combina uma&nbsp;sintaxe&nbsp;concisa e clara com os recursos poderosos de sua&nbsp;biblioteca&nbsp;padrÃ£o e por&nbsp;mÃ³dulos&nbsp;e&nbsp;frameworks&nbsp;desenvolvidos por terceiros.Python Ã© uma linguagem de propÃ³sito geral de alto nÃ­vel, multi paradigma, suporta o paradigma orientado a objetos, imperativo, funcional e procedural. Possui tipagem dinÃ¢mica e uma de suas principais caracterÃ­sticas Ã© permitir a fÃ¡cil leitura do cÃ³digo e exigir poucas linhas de cÃ³digo se comparado ao mesmo programa em outras linguagens. Devido as suas caracterÃ­sticas, ela Ã© principalmente utilizada para processamento de textos, dados cientÃ­ficos e criaÃ§Ã£o de CGIs para pÃ¡ginas dinÃ¢micas para a web.'),
(62, 'Ruby Rails', '13/04/2016', '6699.png', 'Sim', 'Ruby&nbsp;Ã© uma&nbsp;linguagem de programaÃ§Ã£o interpretada&nbsp;multiparadigma, de&nbsp;tipagem dinÃ¢mica&nbsp;e&nbsp;forte, com&nbsp;gerenciamento de memÃ³riaautomÃ¡tico, originalmente planejada e desenvolvida no&nbsp;JapÃ£o&nbsp;em&nbsp;1995, por&nbsp;Yukihiro \"Matz\" Matsumoto, para ser usada comolinguagem de script. Matz queria uma linguagem de script que fosse mais poderosa do que&nbsp;Perl, e mais&nbsp;orientada a objetos&nbsp;do quePython.[4]&nbsp;Ruby suporta&nbsp;programaÃ§Ã£o funcional, orientada a objetos,&nbsp;imperativa&nbsp;e&nbsp;reflexiva. Foi inspirada principalmente por Python, Perl,&nbsp;Smalltalk,&nbsp;Eiffel,&nbsp;Ada&nbsp;e&nbsp;Lisp, sendo muito similar em vÃ¡rios aspectos a Python.[5]&nbsp;Atualmente, Ruby Ã© a 10Âª linguagem de programaÃ§Ã£o mais popular do mundo, de acordo com o&nbsp;Ãndice Tiobe.[6]A implementaÃ§Ã£o 1.8.7 padrÃ£o Ã© escrita em&nbsp;C, como uma linguagem de programaÃ§Ã£o de Ãºnico passe.[7]&nbsp;NÃ£o hÃ¡ qualquer especificaÃ§Ã£o da linguagem, assim a implementaÃ§Ã£o original Ã© considerada de fato uma referÃªncia. Atualmente, hÃ¡ vÃ¡rias implementaÃ§Ãµes alternativas da linguagem, incluindo&nbsp;YARV,&nbsp;JRuby,&nbsp;Rubinius,&nbsp;IronRuby,&nbsp;MacRuby&nbsp;e&nbsp;HotRuby, cada qual com uma abordagem diferente, com IronRuby,[8]&nbsp;JRuby[9]&nbsp;e MacRuby[10]&nbsp;fornecendo compilaÃ§Ã£o&nbsp;Just-In-Time&nbsp;e,&nbsp;JRuby[9]&nbsp;e&nbsp;MacRuby[10]&nbsp;tambÃ©m fornecendo compilaÃ§Ã£o&nbsp;Ahead-Of-Time. A partir das sÃ©ries 1.9 em diante Ruby passou a utilizar por padrÃ£o a YARV (Yet Another Ruby VirtualMachine) substituindo a Ruby MRI (Matz\'s Ruby Interpreter).'),
(63, 'Assembly', '13/04/2016', '28296.png', 'Sim', 'Assembly&nbsp;ou&nbsp;linguagem de montagem&nbsp;Ã© uma notaÃ§Ã£o legÃ­vel por humanos para o&nbsp;cÃ³digo de mÃ¡quina&nbsp;que uma&nbsp;arquitetura de computador&nbsp;especÃ­fica usa, utilizada para programar dispositivos computacionais, como&nbsp;microprocessadores&nbsp;e&nbsp;microcontroladores. A linguagem de mÃ¡quina, que Ã© um mero padrÃ£o de&nbsp;bits, torna-se legÃ­vel pela substituiÃ§Ã£o dos valores em bruto por sÃ­mbolos chamados&nbsp;mnemÃ³nicos[1]&nbsp;[2]&nbsp;.Por exemplo, enquanto um computador sabe o que a&nbsp;instruÃ§Ã£o-mÃ¡quina&nbsp;IA-21 (10110000 01100001) faz, para os programadores Ã© mais fÃ¡cil recordar a representaÃ§Ã£o equivalente em instruÃ§Ãµes mnemÃ³nicas&nbsp;MOV AL, 61h. Tal instruÃ§Ã£o ordena que o valor&nbsp;hexadecimal&nbsp;61 (97, em&nbsp;decimal) seja movido para o&nbsp;registrador&nbsp;\'AL\'.A conversÃ£o da linguagem de montagem para o cÃ³digo de mÃ¡quina Ã© feita pelo montador ou&nbsp;assembler, que Ã© basicamente um tradutor de comandos, sendo mais simples que um&nbsp;compilador.'),
(64, 'Embarcadero Delphi', '13/04/2016', '12321.jpg', 'Sim', 'Embarcadero Delphi, anteriormente conhecido como&nbsp;CodeGear Delphi,&nbsp;Inprise Delphi&nbsp;e&nbsp;Borland Delphi, tambÃ©m conhecido como&nbsp;Delphi, Ã© um&nbsp;compilador&nbsp;e uma&nbsp;IDE, produzido anteriormente pela&nbsp;Borland Software Corporation&nbsp;e atualmente pelaEmbarcadero. O Delphi, originalmente direcionado para a plataforma&nbsp;Windows, chegou a ser usado para desenvolvimento de aplicaÃ§Ãµes nativas para&nbsp;Linux&nbsp;atravÃ©s do&nbsp;Kylix&nbsp;(o Kylix Ã© um IDE para as linguagens&nbsp;C++&nbsp;e&nbsp;Object Pascal), e para o&nbsp;frameworkMicrosoft .NET&nbsp;em suas versÃµes mais recentes. O desenvolvimento do Kylix foi descontinuado.O Delphi Ã© muito utilizado no desenvolvimento de aplicaÃ§Ãµes&nbsp;desktop, aplicaÃ§Ãµes multicamadas e cliente/servidor, compatÃ­vel com os&nbsp;bancos de dados&nbsp;mais conhecidos do mercado. O Delphi pode ser utilizado para diversos tipos de desenvolvimento de projeto, abrangendo desde&nbsp;ServiÃ§os&nbsp;a&nbsp;AplicaÃ§Ãµes Web&nbsp;e&nbsp;CTI. O nome&nbsp;Delphi&nbsp;Ã© inspirado na cidade de&nbsp;Delfos, o Ãºnico local na&nbsp;GrÃ©ciaantiga em que era possÃ­vel consultar o&nbsp;OrÃ¡culo de Delfos. O nome deve-se ao facto de que os desenvolvedores do compilador procuravam uma ferramenta capaz de aceder oo&nbsp;banco de dados&nbsp;Oracle&nbsp;- originando a frase: \"a Ãºnica maneira de aceder ao orÃ¡culo Ã© usando&nbsp;Delphi\".'),
(67, 'PL/SQL', '18/04/2016', '10871.png', 'Sim', 'PL/SQL&amp;nbsp;(acrÃƒÂ³nimo&amp;nbsp;para a expressÃƒÂ£o&amp;nbsp;inglesa&amp;nbsp;Procedural Language/Structured Query Language) ÃƒÂ© uma extensÃƒÂ£o da linguagem padrÃƒÂ£o&amp;nbsp;SQL&amp;nbsp;para o&amp;nbsp;SGBD&amp;nbsp;Oracle&amp;nbsp;da&amp;nbsp;Oracle Corporation. Ãƒâ€° uma&amp;nbsp;linguagem procedural&amp;nbsp;da Oracle que estende a linguagem&amp;nbsp;SQL.[1]&amp;nbsp;[2]Permite que a manipulaÃƒÂ§ÃƒÂ£o de dados seja incluÃƒÂ­da em unidades de programas. Blocos de PL/SQL sÃƒÂ£o passados e processados por uma PL/SQL Engine que pode estar dentro de uma ferramenta Oracle ou do Server. A PL/SQL Engine filtra os comandos SQL e manda individualmente o comando SQL para o SQL Statement Executor no Oracle Server, que processa o PL/SQL com os dados retornados do Server.Ãƒâ€° a linguagem bÃƒÂ¡sica para criar programas complexos e poderosos, nÃƒÂ£o sÃƒÂ³ no&amp;nbsp;banco de dados, mas tambÃƒÂ©m em diversas ferramentas Oracle.'),
(68, 'UniFoa', '22/04/2016', '26256.png', 'NÃ£o', '                        Centro universitÃ¡rio de Volta Redonda'),
(69, 'J2SE', '04/02/2017', '18318.png', 'Sim', 'Java 2SE Ã© uma ferramenta de desenvolvimento para a plataforma Java. Ela contÃ©m todo o ambiente necessÃ¡rio para a criaÃ§Ã£o e execuÃ§Ã£o de aplicaÃ§Ãµes Java, incluindo a mÃ¡quina virtual Java (JVM), o compilador Java, as APIs do Java e outras ferramentas utilitÃ¡rias para uma melhor funcionalidade.\n\nA plataforma Java EE (J2EE) inclui toda a funcionalidade existente na plataforma Java SE mais todas as funcionalidades necessÃ¡rias para o desenvolvimento e execuÃ§Ã£o de aplicaÃ§Ãµes em um ambiente corporativo.\n\n'),
(75, 'AM4', '03/02/2017', '15435.jpg', 'Sim', 'AM4 SoluÃ§Ãµes Inteligentes'),
(76, 'Innovus', '16/01/2018', '204978892.png', 'Sim', 'SoluÃ§Ãµes inteligentes com cursos preparatÃ³rios profissionais em:Firewall, Voip Elastix');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tblogin`
--

CREATE TABLE `tblogin` (
  `id` int(11) NOT NULL,
  `nome` varchar(200) CHARACTER SET utf8 NOT NULL,
  `email` varchar(200) CHARACTER SET utf8 NOT NULL,
  `usuario` varchar(200) CHARACTER SET utf8 NOT NULL,
  `senha` varchar(200) CHARACTER SET utf8 NOT NULL,
  `thumb` varchar(200) CHARACTER SET utf8 NOT NULL,
  `nivel` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tblogin`
--

INSERT INTO `tblogin` (`id`, `nome`, `email`, `usuario`, `senha`, `thumb`, `nivel`) VALUES
(1, 'Filipe Souza', 'filipesouza@gmail.com', 'filipesouza', 'q1w2e3r4', '20150917.jpg', 1),
(2, 'Henrique ', 'henri@gmail.com', 'henrique', '123qwe', '', 0),
(3, 'Michelle', 'mi@gmail.com', 'chelle', '301531', '13603.jpg', 0);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_postagem`
--
ALTER TABLE `tb_postagem`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tblogin`
--
ALTER TABLE `tblogin`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_postagem`
--
ALTER TABLE `tb_postagem`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;
--
-- AUTO_INCREMENT for table `tblogin`
--
ALTER TABLE `tblogin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;--
-- Database: `phpmyadmin`
--
CREATE DATABASE IF NOT EXISTS `phpmyadmin` DEFAULT CHARACTER SET utf8 COLLATE utf8_bin;
USE `phpmyadmin`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__bookmark`
--

CREATE TABLE `pma__bookmark` (
  `id` int(11) NOT NULL,
  `dbase` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `user` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `label` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `query` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Bookmarks';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__central_columns`
--

CREATE TABLE `pma__central_columns` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_length` text COLLATE utf8_bin,
  `col_collation` varchar(64) COLLATE utf8_bin NOT NULL,
  `col_isNull` tinyint(1) NOT NULL,
  `col_extra` varchar(255) COLLATE utf8_bin DEFAULT '',
  `col_default` text COLLATE utf8_bin
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Central list of columns';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__column_info`
--

CREATE TABLE `pma__column_info` (
  `id` int(5) UNSIGNED NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `column_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `comment` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `mimetype` varchar(255) CHARACTER SET utf8 NOT NULL DEFAULT '',
  `transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT '',
  `input_transformation_options` varchar(255) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Column information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__designer_settings`
--

CREATE TABLE `pma__designer_settings` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `settings_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Settings related to Designer';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__export_templates`
--

CREATE TABLE `pma__export_templates` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `export_type` varchar(10) COLLATE utf8_bin NOT NULL,
  `template_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `template_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved export templates';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__favorite`
--

CREATE TABLE `pma__favorite` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Favorite tables';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__history`
--

CREATE TABLE `pma__history` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `sqlquery` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='SQL history for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__navigationhiding`
--

CREATE TABLE `pma__navigationhiding` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `item_type` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Hidden items of navigation tree';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__pdf_pages`
--

CREATE TABLE `pma__pdf_pages` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `page_nr` int(10) UNSIGNED NOT NULL,
  `page_descr` varchar(50) CHARACTER SET utf8 NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='PDF relation pages for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__recent`
--

CREATE TABLE `pma__recent` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `tables` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Recently accessed tables';

--
-- Extraindo dados da tabela `pma__recent`
--

INSERT INTO `pma__recent` (`username`, `tables`) VALUES
('root', '[{\"db\":\"bd_classificados\",\"table\":\"tb_anuncio\"},{\"db\":\"bd_classificados\",\"table\":\"tb_categoria\"},{\"db\":\"bd_classificados\",\"table\":\"tb_user\"},{\"db\":\"projeto_comentarios\",\"table\":\"mensagens\"},{\"db\":\"projeto_ordenar\",\"table\":\"usuarios\"},{\"db\":\"usuarios\",\"table\":\"usuarios\"},{\"db\":\"bdwvasystem\",\"table\":\"tblogin\"},{\"db\":\"bdscv\",\"table\":\"tbuser\"},{\"db\":\"bdscv\",\"table\":\"tb_rec_user\"},{\"db\":\"bd_escola\",\"table\":\"tb_alunos\"}]');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__relation`
--

CREATE TABLE `pma__relation` (
  `master_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `master_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_db` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_table` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `foreign_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Relation table';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__savedsearches`
--

CREATE TABLE `pma__savedsearches` (
  `id` int(5) UNSIGNED NOT NULL,
  `username` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `search_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Saved searches';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_coords`
--

CREATE TABLE `pma__table_coords` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `pdf_page_number` int(11) NOT NULL DEFAULT '0',
  `x` float UNSIGNED NOT NULL DEFAULT '0',
  `y` float UNSIGNED NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table coordinates for phpMyAdmin PDF output';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_info`
--

CREATE TABLE `pma__table_info` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT '',
  `display_field` varchar(64) COLLATE utf8_bin NOT NULL DEFAULT ''
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Table information for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__table_uiprefs`
--

CREATE TABLE `pma__table_uiprefs` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `prefs` text COLLATE utf8_bin NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Tables'' UI preferences';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__tracking`
--

CREATE TABLE `pma__tracking` (
  `db_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `table_name` varchar(64) COLLATE utf8_bin NOT NULL,
  `version` int(10) UNSIGNED NOT NULL,
  `date_created` datetime NOT NULL,
  `date_updated` datetime NOT NULL,
  `schema_snapshot` text COLLATE utf8_bin NOT NULL,
  `schema_sql` text COLLATE utf8_bin,
  `data_sql` longtext COLLATE utf8_bin,
  `tracking` set('UPDATE','REPLACE','INSERT','DELETE','TRUNCATE','CREATE DATABASE','ALTER DATABASE','DROP DATABASE','CREATE TABLE','ALTER TABLE','RENAME TABLE','DROP TABLE','CREATE INDEX','DROP INDEX','CREATE VIEW','ALTER VIEW','DROP VIEW') COLLATE utf8_bin DEFAULT NULL,
  `tracking_active` int(1) UNSIGNED NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Database changes tracking for phpMyAdmin';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__userconfig`
--

CREATE TABLE `pma__userconfig` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `timevalue` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `config_data` text COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User preferences storage for phpMyAdmin';

--
-- Extraindo dados da tabela `pma__userconfig`
--

INSERT INTO `pma__userconfig` (`username`, `timevalue`, `config_data`) VALUES
('root', '2017-12-24 14:14:01', '{\"lang\":\"pt\",\"collation_connection\":\"utf8mb4_unicode_ci\"}');

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__usergroups`
--

CREATE TABLE `pma__usergroups` (
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL,
  `tab` varchar(64) COLLATE utf8_bin NOT NULL,
  `allowed` enum('Y','N') COLLATE utf8_bin NOT NULL DEFAULT 'N'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='User groups with configured menu items';

-- --------------------------------------------------------

--
-- Estrutura da tabela `pma__users`
--

CREATE TABLE `pma__users` (
  `username` varchar(64) COLLATE utf8_bin NOT NULL,
  `usergroup` varchar(64) COLLATE utf8_bin NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin COMMENT='Users and their assignments to user groups';

--
-- Indexes for dumped tables
--

--
-- Indexes for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pma__central_columns`
--
ALTER TABLE `pma__central_columns`
  ADD PRIMARY KEY (`db_name`,`col_name`);

--
-- Indexes for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `db_name` (`db_name`,`table_name`,`column_name`);

--
-- Indexes for table `pma__designer_settings`
--
ALTER TABLE `pma__designer_settings`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_user_type_template` (`username`,`export_type`,`template_name`);

--
-- Indexes for table `pma__favorite`
--
ALTER TABLE `pma__favorite`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__history`
--
ALTER TABLE `pma__history`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`,`db`,`table`,`timevalue`);

--
-- Indexes for table `pma__navigationhiding`
--
ALTER TABLE `pma__navigationhiding`
  ADD PRIMARY KEY (`username`,`item_name`,`item_type`,`db_name`,`table_name`);

--
-- Indexes for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  ADD PRIMARY KEY (`page_nr`),
  ADD KEY `db_name` (`db_name`);

--
-- Indexes for table `pma__recent`
--
ALTER TABLE `pma__recent`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__relation`
--
ALTER TABLE `pma__relation`
  ADD PRIMARY KEY (`master_db`,`master_table`,`master_field`),
  ADD KEY `foreign_field` (`foreign_db`,`foreign_table`);

--
-- Indexes for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `u_savedsearches_username_dbname` (`username`,`db_name`,`search_name`);

--
-- Indexes for table `pma__table_coords`
--
ALTER TABLE `pma__table_coords`
  ADD PRIMARY KEY (`db_name`,`table_name`,`pdf_page_number`);

--
-- Indexes for table `pma__table_info`
--
ALTER TABLE `pma__table_info`
  ADD PRIMARY KEY (`db_name`,`table_name`);

--
-- Indexes for table `pma__table_uiprefs`
--
ALTER TABLE `pma__table_uiprefs`
  ADD PRIMARY KEY (`username`,`db_name`,`table_name`);

--
-- Indexes for table `pma__tracking`
--
ALTER TABLE `pma__tracking`
  ADD PRIMARY KEY (`db_name`,`table_name`,`version`);

--
-- Indexes for table `pma__userconfig`
--
ALTER TABLE `pma__userconfig`
  ADD PRIMARY KEY (`username`);

--
-- Indexes for table `pma__usergroups`
--
ALTER TABLE `pma__usergroups`
  ADD PRIMARY KEY (`usergroup`,`tab`,`allowed`);

--
-- Indexes for table `pma__users`
--
ALTER TABLE `pma__users`
  ADD PRIMARY KEY (`username`,`usergroup`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `pma__bookmark`
--
ALTER TABLE `pma__bookmark`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__column_info`
--
ALTER TABLE `pma__column_info`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__export_templates`
--
ALTER TABLE `pma__export_templates`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__history`
--
ALTER TABLE `pma__history`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__pdf_pages`
--
ALTER TABLE `pma__pdf_pages`
  MODIFY `page_nr` int(10) UNSIGNED NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `pma__savedsearches`
--
ALTER TABLE `pma__savedsearches`
  MODIFY `id` int(5) UNSIGNED NOT NULL AUTO_INCREMENT;--
-- Database: `projeto_comentarios`
--
CREATE DATABASE IF NOT EXISTS `projeto_comentarios` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projeto_comentarios`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `mensagens`
--

CREATE TABLE `mensagens` (
  `id` int(11) UNSIGNED NOT NULL,
  `data_msg` datetime DEFAULT NULL,
  `nome` varchar(50) DEFAULT NULL,
  `msg` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `mensagens`
--

INSERT INTO `mensagens` (`id`, `data_msg`, `nome`, `msg`) VALUES
(5, '2018-01-22 22:45:57', 'Filipe', 'My coments'),
(6, '2018-01-22 22:51:22', 'Rafael', 'Boa noite rapaziada!'),
(7, '2018-01-22 22:51:48', 'Cristiano', 'Plena segunda feira estudando, mas isso Ã© muito bom!!'),
(8, '2018-01-22 22:52:27', 'Henrique', 'Ta na hora de dormir zZzZzZ'),
(17, '2018-01-22 23:17:37', 'Piu', 'Porra to aqui ainda, com gatos pulando kkk'),
(18, '2018-01-22 23:57:22', 'Sono', 'Vou fazer curso React Native para App AndrÃ³id e IOs'),
(19, '2018-01-22 23:58:09', 'Zumbi', 'Uhull vamos abraÃ§ar a segunda feira e dar tchau a ela kk'),
(20, '2018-01-23 00:01:34', 'Mano', 'Ã‰ hora de jantar o lanchim da madrugada!\r\n'),
(21, '2018-01-23 00:02:16', '#$&*Q#*&@#(', 'Porra levanta a bunda da cadeira e vai rangar mano!'),
(22, '2018-01-23 00:02:40', 'Mano', 'NÃ£o to na cadeira, to no chÃ£o vÃ©i doido, ta de sacanaj!?');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `mensagens`
--
ALTER TABLE `mensagens`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `mensagens`
--
ALTER TABLE `mensagens`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;--
-- Database: `projeto_ordenar`
--
CREATE DATABASE IF NOT EXISTS `projeto_ordenar` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `projeto_ordenar`;

-- --------------------------------------------------------

--
-- Estrutura da tabela `usuarios`
--

CREATE TABLE `usuarios` (
  `id` int(11) UNSIGNED NOT NULL,
  `nome` varchar(100) DEFAULT NULL,
  `idade` int(3) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Extraindo dados da tabela `usuarios`
--

INSERT INTO `usuarios` (`id`, `nome`, `idade`) VALUES
(1, 'Alfredo', 18),
(2, 'Bonieky', 99),
(3, 'Josinaldo', 34),
(4, 'Camila', 45),
(5, 'Zulu', 21);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;--
-- Database: `test`
--
CREATE DATABASE IF NOT EXISTS `test` DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci;
USE `test`;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
