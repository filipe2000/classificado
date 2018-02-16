-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 16-Fev-2018 às 20:58
-- Versão do servidor: 10.1.16-MariaDB
-- PHP Version: 5.6.24

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
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
  `titulo` varchar(50) CHARACTER SET utf8 NOT NULL,
  `descr` text CHARACTER SET utf8 NOT NULL,
  `valor` float NOT NULL,
  `status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_anuncio`
--

INSERT INTO `tb_anuncio` (`id_anuncio`, `id_user`, `id_cat`, `titulo`, `descr`, `valor`, `status`) VALUES
(3, 1, 27, 'Arduino', '						placa arduino para sistemas automatizac£o eletronica.com porta usb, nivelador de potencia, tela de digital e leds.				', 150.5, 3),
(4, 1, 29, 'Dragon Ball', '			game inovador da serie japonesa de 10 anos		', 120, 2),
(5, 1, 27, 'Kit Placa Mae', '			kit placa mae e placa de vide		', 320, 3),
(7, 1, 32, 'Suporte tecnico Informativa', '						materiais para manutencao de pc				', 100, 1),
(8, 1, 35, 'senhores dos dinossauros', '			livro epico medieval com batalhas entre poderes e dinossauros a dominar o mundo		', 80, 2),
(9, 1, 34, 'Minions', '			a historia desde o surgimento dos pequenos minions e ate encontrarem o futuro patraoo para meu Malvado Favorito		', 75, 2),
(10, 1, 32, 'Ubuntu', '			distribuicao Linux derivado do Debiam		', 0, 2),
(11, 1, 32, 'DotNet', '						conjunto linguagens que dominam os ambientes dos sistemas empresariais				', 55, 3),
(12, 1, 32, 'Java Enterprise Ediction', '			linguagem orientada a objetos para sistema desktop e web		', 65, 2),
(13, 1, 32, 'Visual Studio', '			IDE para desenvolvimento DotNet		', 120, 2),
(14, 1, 32, 'Eclipse IDE', '									IDE de programacao para linguagens desde Java e PHP						', 100, 3),
(15, 1, 32, 'Oracle', '									SGDB mais seguro e escalavel , profissional.						', 300, 2),
(16, 2, 31, 'Helloween- Keeper 1', '			grande classico da banda com inicio de Michael Kiske		', 40, 2),
(17, 2, 31, 'Helloween- Keeper 2', '			Maior classico da banda e seu auge		', 55, 2),
(18, 2, 31, 'Helloween-Master of the rings', '			retorno da banda com novos participantes, Andy Deris, Ully Cush		', 45, 2),
(19, 2, 32, 'Helloween - Time of the oath', '			Disco do auge do Power metal, formando o maior clÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â¡ssico da formaÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â§ÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â£o		', 56, 3),
(20, 2, 31, 'Helloween- Dark Ride', '			album excelente tratando a situacao negra da banda 		', 66, 2),
(21, 2, 31, 'Helloween- Better tham raw', '			excelente algum com maior hit dos anos 90 e melhor capa		', 54, 2),
(22, 2, 31, 'Helloween- Punpkins Unite', '			DVD reunindo shows da turne reunindo todos participantes das eras classicas da banda		', 90, 3),
(23, 2, 31, 'Helloween- 7 Sinners', '			ambum inovador da essencia do grupo, elevando mais o auge do power metal		', 75, 2),
(24, 2, 31, 'Hammerfall- Legacy of kings', '			grande album do power metal 		', 77, 2),
(25, 2, 31, 'Hammerfall - Crinson Thunder', '			otimo album elevando a banda ao apice do publico.		', 88, 2),
(26, 2, 31, 'Hammerfall - Chapter V', '			album com homenagens inspiracao com covers classicos.		', 77, 2),
(27, 2, 31, 'Hammerfall - Renegade', '			otimo album com temas classicos medievais do power metal		', 85, 3),
(28, 1, 31, 'Iced Earth- Crusify the king', '			algum revelador com criticas religiosas vikings		', 55, 2),
(29, 1, 31, 'iced Earth- Flaming armagedom', '			disco descreve o armagedom politico e religioso no mundo		', 45, 3),
(30, 1, 31, 'Iced Earth- Dark Saga', '			disco descreve a vida das dinastias religiosas e suas mentiras		', 76, 2),
(31, 1, 31, 'Iced Earth- Burning offerings', '			disco com temas do fim dos tempo pela sociedade		', 65, 2),
(32, 1, 31, 'Children of Bodom- Follow the reaper', '			melhor album da banda que dominou os continentes		', 65, 2),
(33, 1, 31, 'Children of Bodom- Hatebreeder', '			album do odio das vitimas		', 78, 2),
(34, 1, 31, 'Children of Bodom- Something wild', '			disco mostra que todos tem algo selvagem		', 78, 2),
(35, 1, 35, 'Historias dos Sete Reinos', '									George Martin, Tres historias do mundo da Guerra dos tronos						', 78, 2),
(36, 1, 35, 'Mar de Ferro', '			George Martin - O oitavo volume de As CrÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â³nicas de Gelo e Fogo, a melhor sÃƒÂƒÃ‚ÂƒÃƒÂ‚Ã‚Â©rie de fantasia da actualidade \r\n		', 98, 2),
(37, 1, 35, 'Game of thrones- Cronicas do gelo e fogo', '			colecao de livros da saga de Game of thrones		', 500, 3);

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
(31, 'Musica'),
(32, 'Tecnologia'),
(34, 'Filme'),
(35, 'Livro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_imagens`
--

CREATE TABLE `tb_imagens` (
  `id_imagem` int(11) NOT NULL,
  `id_anuncio` int(11) NOT NULL,
  `url` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Extraindo dados da tabela `tb_imagens`
--

INSERT INTO `tb_imagens` (`id_imagem`, `id_anuncio`, `url`) VALUES
(3, 3, 'cd42393b1de838f2aacb57e7fa1a3b09.jpg'),
(4, 3, 'de23a0fa21d5a02a935f48a8c3c57890.jpg'),
(5, 4, 'b0a7ee5993133eea466460a61d315746.jpg'),
(6, 5, 'd1ac3390185cb22e3959cf9bc45f1f21.jpg'),
(7, 5, '0813c15a27a169766d201c347e71d577.jpg'),
(9, 15, '6f19dbb7fb143a9c52ef88b2ea0162aa.jpg'),
(10, 15, '25700d590032f4dd4215ac57e1290c4b.jpg'),
(12, 14, '8d56ad7498cb910443049b417cf62d12.jpg'),
(13, 13, 'cbe54ccd2b4d326bc1874c0a0a4a17b3.jpg'),
(14, 13, 'bfbc75ef7de678c88916b761896ceea8.jpg'),
(15, 13, 'e510c36cce4769f602526d74b5667e0e.jpg'),
(16, 12, 'c942bb9afb522d525497f9c325ecf0b1.jpg'),
(18, 10, '979972a24fa70dd74e158f97c6d77336.jpg'),
(19, 10, 'b0ee4cc9a15a6accbf42e083159d4431.jpg'),
(20, 11, 'e56477c69e60b13ca85fa6c8e87ea6a6.jpg'),
(21, 9, '667d6b2559b24442257a1e16743eeb7d.jpg'),
(22, 8, '40ba9fd71f7146312a4d4351c5e08199.jpg'),
(23, 7, '12e0ed7d31958d8b396d56321e969b6f.jpg'),
(24, 7, '37e9a140771c2e9f5b18225721b78adb.jpg'),
(26, 27, '6438c87ed2321668d9564c3e956e6e07.jpg'),
(27, 26, '83f8c27d98c38fa27241616461853de8.jpg'),
(28, 25, '6eb9068c4ed4b43eb0794c435f3fcc0c.jpg'),
(29, 24, '594163e075a94fa3462f322b2e837657.jpg'),
(30, 23, '1391f5dedbe2c49195817506c66b8561.jpg'),
(31, 22, 'fd896afb27b7642b27d1d272ef5f9888.jpg'),
(32, 21, '432fa11afaccc5684ac78f4961c1bd88.jpg'),
(33, 20, '9fd22137fe5deb7cfce54fd470638297.jpg'),
(34, 19, '8149827c3a17cb193e13400a2a9a7bd0.jpg'),
(35, 18, '829372ddfdb2bef95ccb11ff36a40ad2.jpg'),
(36, 17, 'ddff696ad5b651312672fc7ef739677b.jpg'),
(37, 16, '76c7f0150e945e59ee78aaf5664da08b.jpg'),
(38, 28, '99e2e4e9126e18435baecf86fe5b55a0.jpg'),
(39, 34, '423978a3c7785df62e24d40b30208609.jpg'),
(40, 33, 'f8ef88b44dabb727e84507987ffad8bf.jpg'),
(41, 32, 'f0613e4cc97967eac34b11211d754190.jpg'),
(42, 31, 'f0ba9161a1a1460c3a7e5b7652a54097.jpg'),
(43, 30, '6561f17295c862fba6aec143da172c7a.jpg'),
(44, 29, '924353633c086c1510c748657d17ff2f.jpg'),
(45, 37, '7c08a37319297ca740149b2bf072ccd7.jpg'),
(46, 36, '7b689bf65a09ea7b374b61f31392290f.jpg'),
(47, 35, 'a33e1250d80fa19c3798c0571482586b.jpg'),
(48, 7, '0e6147f517c1a63e0c3b2248def2e459.jpg');

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
  MODIFY `id_anuncio` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `tb_categoria`
--
ALTER TABLE `tb_categoria`
  MODIFY `id_cat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;
--
-- AUTO_INCREMENT for table `tb_imagens`
--
ALTER TABLE `tb_imagens`
  MODIFY `id_imagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;
--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
