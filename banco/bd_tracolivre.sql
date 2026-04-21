-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: sql112.infinityfree.com
-- Tempo de geração: 14-Out-2025 às 14:52
-- Versão do servidor: 11.4.7-MariaDB
-- versão do PHP: 7.2.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `if0_40124757_tracolivre`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_colaboracao`
--

CREATE TABLE `tb_colaboracao` (
  `id_colaboracao` int(11) NOT NULL,
  `nm_titulo_colaboracao` varchar(45) NOT NULL,
  `ds_colaboracao` varchar(100) DEFAULT NULL,
  `nm_tag` varchar(20) DEFAULT NULL,
  `dt_hora_colaboracao` timestamp NOT NULL DEFAULT current_timestamp(),
  `fk_id_tipo_colaboracao` int(11) DEFAULT NULL,
  `fk_id_usuario_criador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_colaboracao`
--

INSERT INTO `tb_colaboracao` (`id_colaboracao`, `nm_titulo_colaboracao`, `ds_colaboracao`, `nm_tag`, `dt_hora_colaboracao`, `fk_id_tipo_colaboracao`, `fk_id_usuario_criador`) VALUES
(1, 'Artista para desenhar personagem', 'Tenho uma historia sobre patos piratas e estou procurando alguem que desenhe patos.', NULL, '2025-10-11 00:26:45', 1, 1),
(2, 'ajuda no manga', 'tenho ideias de personagens na minha cabeÃ§a, porÃ©m nÃ£o sei desenhar direito, entÃ£o eu gostaria q', NULL, '2025-10-13 16:17:49', 2, 17),
(3, 'Ajuda no livro', 'Preciso de ajuda pra fazer a capa de um livro meu, estou disposto a pagar.', NULL, '2025-10-13 21:13:03', 1, 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_colaboracao_tag`
--

CREATE TABLE `tb_colaboracao_tag` (
  `id_colaboracao_tag` int(11) NOT NULL,
  `fk_id_colaboracao` int(11) DEFAULT NULL,
  `fk_id_tag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_colaboracao_tag`
--

INSERT INTO `tb_colaboracao_tag` (`id_colaboracao_tag`, `fk_id_colaboracao`, `fk_id_tag`) VALUES
(1, 1, 19),
(2, 1, 20),
(3, 1, 5),
(4, 1, 4),
(5, 1, 21),
(6, 1, NULL),
(7, 2, 27),
(8, 2, 5),
(9, 3, 50),
(10, 3, 51),
(11, 3, 21);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_comentario`
--

CREATE TABLE `tb_comentario` (
  `id_comentario` int(11) NOT NULL,
  `ds_comentario` text NOT NULL,
  `dt_comentario` timestamp NOT NULL DEFAULT current_timestamp(),
  `fk_id_colaboracao` int(11) DEFAULT NULL,
  `fk_id_publicacao` int(11) DEFAULT NULL,
  `fk_id_relato` int(11) DEFAULT NULL,
  `fk_id_usuario_criador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_comentario`
--

INSERT INTO `tb_comentario` (`id_comentario`, `ds_comentario`, `dt_comentario`, `fk_id_colaboracao`, `fk_id_publicacao`, `fk_id_relato`, `fk_id_usuario_criador`) VALUES
(1, 'Adorei o desenho, ficou incrivel!!!', '2025-10-12 21:38:59', NULL, 4, NULL, 1),
(2, 'bom desenho', '2025-10-13 15:03:10', NULL, 4, NULL, 11),
(3, 'Muito Zika manÃ©', '2025-10-13 15:58:49', NULL, 4, NULL, 15),
(4, 'Desenhar melhor que eu no paint :0', '2025-10-13 16:38:51', NULL, 8, NULL, 19),
(5, 'Lindo desenho de gato', '2025-10-13 17:12:08', NULL, 10, NULL, 11),
(6, 'Gostei do desenho, eu sou pÃ©ssima no Paint.', '2025-10-13 17:12:52', NULL, 8, NULL, 20),
(7, 'Praia bem paradisÃ­aca. Bem MongaguÃ¡', '2025-10-13 17:12:53', NULL, 8, NULL, 11),
(8, 'Eu achei um desenho lindo â¤ï¸', '2025-10-13 17:45:47', NULL, 4, NULL, 17),
(9, 'Lindo o seu desenho â™¡', '2025-10-13 17:58:03', NULL, 13, NULL, 21),
(10, 'que adorÃ¡vel!', '2025-10-13 18:21:40', NULL, 15, NULL, 15),
(11, 'Muito bacana', '2025-10-13 21:06:43', NULL, 17, NULL, 28),
(12, 'Praieiro, legal', '2025-10-13 21:07:00', NULL, 8, NULL, 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_conteudo_pasta`
--

CREATE TABLE `tb_conteudo_pasta` (
  `id_conteudo_pasta` int(11) NOT NULL,
  `fk_id_pasta` int(11) DEFAULT NULL,
  `fk_id_publicacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_conteudo_pasta`
--

INSERT INTO `tb_conteudo_pasta` (`id_conteudo_pasta`, `fk_id_pasta`, `fk_id_publicacao`) VALUES
(11, 2, 2),
(13, 6, 9),
(14, 7, 10),
(15, 5, 8),
(17, 12, 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_conversa`
--

CREATE TABLE `tb_conversa` (
  `id_conversa` int(11) NOT NULL,
  `nm_conversa` varchar(45) NOT NULL,
  `dt_criacao` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_denuncia`
--

CREATE TABLE `tb_denuncia` (
  `id_denuncia` int(11) NOT NULL,
  `nm_motivo` varchar(45) NOT NULL,
  `dt_denuncia` timestamp NOT NULL DEFAULT current_timestamp(),
  `fk_id_penalidade` int(11) DEFAULT NULL,
  `fk_id_usuario_criador` int(11) DEFAULT NULL,
  `fk_id_usuario_denunciado` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_estilo`
--

CREATE TABLE `tb_estilo` (
  `id_estilo` int(11) NOT NULL,
  `nm_estilo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_estilo`
--

INSERT INTO `tb_estilo` (`id_estilo`, `nm_estilo`) VALUES
(1, 'Abstrato'),
(2, 'Anime'),
(3, 'Caricatura'),
(4, 'Cartoon'),
(5, 'Comic/HQ'),
(6, 'Chibi'),
(7, 'Furry'),
(8, 'Minimalista'),
(9, 'Paisagem'),
(10, 'Pixel Art'),
(11, 'Realismo'),
(12, 'Semi - Realismo'),
(13, 'Tradicional (No Papel)'),
(14, 'Original'),
(15, 'Outro');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_estilo_publicacao`
--

CREATE TABLE `tb_estilo_publicacao` (
  `id_estilo_publicacao` int(11) NOT NULL,
  `fk_id_publicacao` int(11) DEFAULT NULL,
  `fk_id_estilo` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_estilo_publicacao`
--

INSERT INTO `tb_estilo_publicacao` (`id_estilo_publicacao`, `fk_id_publicacao`, `fk_id_estilo`) VALUES
(1, 1, 9),
(2, 2, 10),
(3, 3, 2),
(4, 4, 11),
(8, 8, 9),
(9, 9, 8),
(10, 10, 10),
(13, 13, 2),
(14, 14, 2),
(15, 15, 13),
(16, 16, 2),
(17, 17, 10),
(18, 18, 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_imagens_publicacao`
--

CREATE TABLE `tb_imagens_publicacao` (
  `id_imagem` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  `fk_id_publicacao` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_imagens_publicacao`
--

INSERT INTO `tb_imagens_publicacao` (`id_imagem`, `url`, `fk_id_publicacao`) VALUES
(1, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759784087/cl11gtafljhtdwm5fipb.avif', 1),
(3, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759890713/rbbdmih5tmzmy6rjjvle.jpg', 3),
(4, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759891044/ithtu0lqyvgcrllkl5nv.jpg', 4),
(6, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760288884/totdhyiduve3dwfhhzhi.jpg', 2),
(10, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760372567/m2jieabpg9kbqrm2pqnt.png', 8),
(11, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760375080/vm9yvcnyjifqlylpuwm2.jpg', 9),
(12, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760375081/amqdn8uwbrdeacx6qb11.jpg', 10),
(15, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760377881/bh7ag7pstvsazdarofug.png', 13),
(16, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760377970/qhwyxzwo2mlc963wgizu.jpg', 14),
(17, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760378836/qou8yagjng5dgozv5ma4.jpg', 15),
(18, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760381481/bwx4jbxr6nhficlcohcc.png', 16),
(19, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760382273/mumriofmtry7ihlkmag5.png', 17),
(20, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760389749/bx01xcs8uv9q6u5yh3ew.jpg', 18);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_imagens_relato`
--

CREATE TABLE `tb_imagens_relato` (
  `id_imagem` int(11) NOT NULL,
  `url` varchar(500) NOT NULL,
  `fk_id_relato` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_imagens_relato`
--

INSERT INTO `tb_imagens_relato` (`id_imagem`, `url`, `fk_id_relato`) VALUES
(1, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760105971/ive17dx9sua5jcbm8iqr.jpg', 1),
(2, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760119085/mkmqd2jorrqoza4vjzms.jpg', 2),
(3, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760119482/hgudvk1tihajg4x0xoky.webp', 3),
(4, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760327388/t4ktrlgq8er9vn0vc3yc.jpg', 4),
(5, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760372064/gazmjeyrpvw0feyra0y5.jpg', 5),
(6, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760378637/sjire8xidvexf3zwpeum.jpg', 6),
(7, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760389875/w6mykv0qva3swclonqge.jpg', 7);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_interacao`
--

CREATE TABLE `tb_interacao` (
  `id_interacao` int(11) NOT NULL,
  `fk_id_conversa` int(11) DEFAULT NULL,
  `fk_id_usuario` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_mensagem`
--

CREATE TABLE `tb_mensagem` (
  `id_mensagem` int(11) NOT NULL,
  `fk_id_conversa` int(11) DEFAULT NULL,
  `ds_mensagem` text NOT NULL,
  `dt_mensagem` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_pasta`
--

CREATE TABLE `tb_pasta` (
  `id_pasta` int(11) NOT NULL,
  `nm_titulo_pasta` varchar(45) NOT NULL,
  `ds_pasta` varchar(100) DEFAULT NULL,
  `corFonte` varchar(10) DEFAULT NULL,
  `corCapa` varchar(10) DEFAULT NULL,
  `img_capa` varchar(100) DEFAULT NULL,
  `fk_id_usuario_criador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_pasta`
--

INSERT INTO `tb_pasta` (`id_pasta`, `nm_titulo_pasta`, `ds_pasta`, `corFonte`, `corCapa`, `img_capa`, `fk_id_usuario_criador`) VALUES
(2, 'Releituras de Artes', 'Aqui eu coloquei todas as releituras de algum desenho/arte que eu já fiz.', '#FFFFFF', '#cc1e1e', '', 1),
(3, 'Paisagens', 'Uma pasta feita apenas de paisagem.', 'undefined', '#000000', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760224500/xpx66sg1bw1kcz4gigf0.avif', 3),
(4, 'Pasta muito zika', 'Zika', 'undefined', '#675fb0', '', 15),
(5, 'pasta muito zika', 'pasta pra desenho0s', 'undefined', '#e36868', '', 17),
(6, 'Animais', 'Animais.Todos os animais.', 'undefined', '#ff00ff', '', 11),
(7, 'Meus melhores desenhos', 'Aqui estÃ£o meus melhores desenhos', 'undefined', '#000000', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760375701/lpyekk9zuwedw56rkups.jpg', 20),
(8, 'Personagens autorais', 'Aqui serÃ¡ a pasta onde estarÃ¡ todos os personagens que eu mesmo criei!', 'undefined', '#786dad', '', 17),
(9, 'Desenhos de Teste', 'Coloquei aqui desenhos que fiz como um teste.', 'undefined', '#00ffff', '', 17),
(10, 'Paisagem', 'Muitas paisagens ', 'undefined', '#7c8da3', '', 11),
(11, 'Desenhos feitos no tempo livre', 'Desenhos aleatÃ³rios para animar a vida de vocÃªs.', 'undefined', '#000000', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760380551/amr3mvtqcmihboysle5g.jpg', 25),
(12, 'Desenhos relacionado a one piece', 'Aqui serÃ¡ todos os de OP', 'undefined', '#000000', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760389822/dyghugxleluxpk6kl1ef.jpg', 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_penalidade`
--

CREATE TABLE `tb_penalidade` (
  `id_penalidade` int(11) NOT NULL,
  `nm_penalidade` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_publicacao`
--

CREATE TABLE `tb_publicacao` (
  `id_publicacao` int(11) NOT NULL,
  `ds_publicacao` varchar(200) DEFAULT NULL,
  `dt_hora_publicacao` timestamp NOT NULL DEFAULT current_timestamp(),
  `fk_id_usuario_criador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_publicacao`
--

INSERT INTO `tb_publicacao` (`id_publicacao`, `ds_publicacao`, `dt_hora_publicacao`, `fk_id_usuario_criador`) VALUES
(1, 'Uma linda paisagem com um rio do tipo que os peixes brilham no escuro.', '2025-10-06 20:54:48', 3),
(2, 'Uma arte bem Van Gogh. Apesar de ultimamente as noites nao estarem muito estreladas.', '2025-10-06 22:49:11', 1),
(3, 'Apenas algo que fiz quando estava inspirada.', '2025-10-08 02:31:54', 1),
(4, 'Abelha realista feita em papel com grafite.', '2025-10-08 02:37:25', 8),
(8, 'desenho de uma praia feito no paint em 8 minutos', '2025-10-13 16:22:48', 17),
(9, 'Cachorro bem minimalista', '2025-10-13 17:04:41', 11),
(10, 'Desenho inspirado no da IzaPixels e em Van Gogh', '2025-10-13 17:04:42', 20),
(13, 'Aiko e Pearl versÃ£o crianÃ§a!!', '2025-10-13 17:51:23', 17),
(14, 'EsboÃ§o da famÃ­lia Lysander! \r\nKinsho (pai), Pearl (a que tÃ¡ apontando) e Aiko (a que tÃ¡ presa na parede)', '2025-10-13 17:52:52', 17),
(15, 'Lobo que fiz direto na caneta quando estava entediado! NÃ£o sou acostumado a desenhar animais, mas saiu melhor do que eu esperava!', '2025-10-13 18:07:17', 17),
(16, 'Desenho da minha amiga e a minha! (Matsui e Pearl)\r\nFiz esse desenho com nossas personagens como um presente! Fiz baseado em uma imagem real, usando como referencia :]', '2025-10-13 18:51:23', 17),
(17, 'Treino de pixel art', '2025-10-13 19:04:34', 26),
(18, 'Desenho do Chopper de one piece porÃ©m punk!!!!!', '2025-10-13 21:09:11', 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_publicacao_tag`
--

CREATE TABLE `tb_publicacao_tag` (
  `id_publicacao_tag` int(11) NOT NULL,
  `fk_id_publicacao` int(11) DEFAULT NULL,
  `fk_id_tag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_publicacao_tag`
--

INSERT INTO `tb_publicacao_tag` (`id_publicacao_tag`, `fk_id_publicacao`, `fk_id_tag`) VALUES
(1, 1, 1),
(2, 1, 2),
(3, 1, 3),
(4, 1, 4),
(5, 1, 5),
(6, 2, 6),
(8, 2, 8),
(10, 3, 9),
(11, 3, 4),
(12, 3, 5),
(13, 4, 10),
(14, 4, 11),
(15, 4, 12),
(16, 4, 13),
(18, 2, 22),
(19, 2, 7),
(20, 2, 4),
(26, 8, 29),
(27, 9, 30),
(28, 9, 31),
(29, 9, 5),
(30, 10, 4),
(31, 10, 32),
(32, 10, 5),
(33, 10, 33),
(34, 10, 34),
(41, 15, 41),
(42, 15, 42),
(43, 15, 43),
(44, 16, 38),
(45, 16, 36),
(46, 16, 44),
(47, 16, 45),
(48, 17, 46),
(49, 17, 47),
(50, 18, 48),
(51, 18, 49);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_relato`
--

CREATE TABLE `tb_relato` (
  `id_relato` int(11) NOT NULL,
  `nm_titulo_relato` varchar(45) NOT NULL,
  `ds_relato` varchar(800) DEFAULT NULL,
  `nm_anexo` varchar(100) DEFAULT NULL,
  `nm_tag` varchar(20) DEFAULT NULL,
  `dt_hora_relato` timestamp NOT NULL DEFAULT current_timestamp(),
  `fk_id_tipo_relato` int(11) DEFAULT NULL,
  `fk_id_usuario_criador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_relato`
--

INSERT INTO `tb_relato` (`id_relato`, `nm_titulo_relato`, `ds_relato`, `nm_anexo`, `nm_tag`, `dt_hora_relato`, `fk_id_tipo_relato`, `fk_id_usuario_criador`) VALUES
(4, 'Como eu desenho olho', 'Desenhe uma amÃªndoa: FaÃ§a o contorno bÃ¡sico do olho.\r\nAdicione a Ã­ris e a pupila: Dentro da amÃªndoa, desenhe um cÃ­rculo para a Ã­ris e um cÃ­rculo menor e mais escuro dentro dela para a pupila.\r\nCrie a pÃ¡lpebra: FaÃ§a uma linha curva acima do olho para a pÃ¡lpebra superior e adicione a dobra da pÃ¡lpebra.\r\nAdicione reflexos: Deixe uma pequena Ã¡rea branca na pupila e na Ã­ris para o reflexo da luz. Isso darÃ¡ vida ao desenho.\r\nDesenhe os cÃ­lios: Adicione os cÃ­lios nas pÃ¡lpebras superior e inferior. Os cÃ­lios superiores geralmente sÃ£o mais densos.\r\nSombreie: Adicione sombras nos cantos do olho, na pÃ¡lpebra e ao redor da pupila para dar profundidade.', NULL, NULL, '2025-10-13 03:49:49', 3, 1),
(5, 'pintura tese', 'ao desenhar, nÃ£o esqueÃ§a de prestar atenÃ§Ã£o aos detalhes dele!!', NULL, NULL, '2025-10-13 16:14:25', 2, 17),
(6, 'Caixas na anatomia', 'Descobri recentemente como usar \"caixas\" ajuda bastante na hora de esboÃ§ar o corpo. Usando formas diferentes dessas caixas ajudam MUITO, como na imagem acima.', NULL, NULL, '2025-10-13 18:03:59', 1, 17),
(7, 'Dica de mÃ£os ', 'Tenho muita dificuldade em desenhar mÃ£os, assim como muitos artistas. Achei uma maneira de conseguir referÃªncias pra posiÃ§Ãµes de mÃ£os, usando a minha prÃ³pria mÃ£o, fazendo desenhos e traÃ§os nela, posicionando e tirando foto. Ajuda muito pra posiÃ§Ãµes especÃ­ficas de mÃ£os!', NULL, NULL, '2025-10-13 21:11:15', 1, 28);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_relato_tag`
--

CREATE TABLE `tb_relato_tag` (
  `id_relato_tag` int(11) NOT NULL,
  `fk_id_relato` int(11) DEFAULT NULL,
  `fk_id_tag` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_relato_tag`
--

INSERT INTO `tb_relato_tag` (`id_relato_tag`, `fk_id_relato`, `fk_id_tag`) VALUES
(1, 1, 14),
(2, 1, 15),
(3, 1, 16),
(4, 1, 5),
(5, 2, 17),
(6, 2, 18),
(7, 2, 15),
(8, 2, 16),
(9, 4, 16),
(10, 4, 5),
(11, 4, 15),
(12, 4, 14),
(13, 5, 25),
(14, 5, 26),
(15, 6, 39),
(16, 6, 40);

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tag`
--

CREATE TABLE `tb_tag` (
  `id_tag` int(11) NOT NULL,
  `nm_tag` varchar(38) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_tag`
--

INSERT INTO `tb_tag` (`id_tag`, `nm_tag`) VALUES
(1, 'Paisagem'),
(2, 'Rio'),
(3, 'Colorido'),
(4, 'Arte'),
(5, 'Desenho'),
(6, 'VanGogh'),
(7, 'PixelArt'),
(8, 'ReleituraNoiteEstrelada'),
(9, 'inspiração'),
(10, 'abelha'),
(11, 'realismo'),
(12, 'ArtRealista'),
(13, 'Grafite'),
(14, 'Olho'),
(15, 'ComoFazer'),
(16, 'Tecnica'),
(17, 'Rosto'),
(18, 'Aprender'),
(19, 'Procura-seArtista'),
(20, 'Patos'),
(21, 'Remunerado'),
(22, 'Releitura'),
(25, 'anijme'),
(26, 'dica'),
(27, 'manga'),
(28, 'abstrato'),
(29, 'praia'),
(30, 'Minimalista'),
(31, 'Cachorro'),
(32, 'Pixels'),
(33, 'InspiraÃ§Ã£o'),
(34, 'gato'),
(35, 'Chibi'),
(36, 'Oc'),
(37, 'Original character'),
(38, 'Personagem autoral'),
(39, 'Anatomia dica'),
(40, 'Desenho dica'),
(41, 'Lobo'),
(42, 'Animal'),
(43, 'Tradicional'),
(44, 'Amigos'),
(45, 'Desenho digital'),
(46, 'Pixel art'),
(47, 'Futuro jogo'),
(48, 'One piece'),
(49, 'Anime'),
(50, 'Livros'),
(51, 'Capa');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipo_colaboracao`
--

CREATE TABLE `tb_tipo_colaboracao` (
  `id_tipo_colaboracao` int(11) NOT NULL,
  `nm_tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_tipo_colaboracao`
--

INSERT INTO `tb_tipo_colaboracao` (`id_tipo_colaboracao`, `nm_tipo`) VALUES
(1, 'Remunerado'),
(2, 'Voluntario');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_tipo_relato`
--

CREATE TABLE `tb_tipo_relato` (
  `id_tipo_relato` int(11) NOT NULL,
  `nm_tipo` varchar(45) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_tipo_relato`
--

INSERT INTO `tb_tipo_relato` (`id_tipo_relato`, `nm_tipo`) VALUES
(1, 'dicas'),
(2, 'Erro/falha'),
(3, 'tecnica');

-- --------------------------------------------------------

--
-- Estrutura da tabela `tb_usuario`
--

CREATE TABLE `tb_usuario` (
  `id_usuario` int(11) NOT NULL,
  `nm_usuario` varchar(45) NOT NULL,
  `nm_nome_usuario` varchar(45) NOT NULL,
  `dt_nascimento` date NOT NULL,
  `nr_telefonte` varchar(11) DEFAULT NULL,
  `nm_email` varchar(45) NOT NULL,
  `nm_senha` varchar(45) NOT NULL,
  `bio` varchar(200) DEFAULT NULL,
  `img_perfil` varchar(500) DEFAULT 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png',
  `id_tipo` bit(1) DEFAULT b'1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Extraindo dados da tabela `tb_usuario`
--

INSERT INTO `tb_usuario` (`id_usuario`, `nm_usuario`, `nm_nome_usuario`, `dt_nascimento`, `nr_telefonte`, `nm_email`, `nm_senha`, `bio`, `img_perfil`, `id_tipo`) VALUES
(1, 'Izadora ', 'IzaPixels', '2002-12-20', NULL, 'izapixels012@gmail.com', '1234Iza@Pizels', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759880169/t1zquksyl3msf148zrep.jpg', b'1'),
(2, 'Arthur Almeida Santos', 'ArtWithMe', '2000-03-11', NULL, 'arthur@gmail.com', 'art878976#', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(3, 'Daniel Silva Gomes', 'DanArt', '1999-09-23', '11945387634', 'daniel@gmail.com', 'danArt0976&', 'Criando mundos com cores e traÃ§os | InspiraÃ§Ã£o diaria \nIlustraÃ§Ã£o | Arte digital | ExperimentaÃ§Ã£o\nCompartilhando ideias e projetos criativos', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759877138/mq82foiulvmiatrbmlvq.avif', b'1'),
(4, 'Paula Gomes Santos', 'Perry', '1987-09-27', NULL, 'perry096@gmail.com', 'perry76453%', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(5, 'Alice Paiva Soares', 'StarAmullet', '2003-10-03', NULL, 'alicesoares@gmail.com', '12587sA_Paiva', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(6, 'Mattheus Alves Pereira', 'MattDraw', '1990-08-19', '', 'mattpereira@gmail.com', '5682Matt_DrAw', 'Eu sou um fofo, assim como minhas artes.', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760119277/hd4a8h6xe0rboxzhreq7.jpg', b'1'),
(7, 'Maria Alves Souza', 'MaryGlitter', '2003-05-17', NULL, 'marysouza@gmail.com', '6295MrRy&', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(8, 'Teo Alencar fagundes', 'Teodor', '2004-05-07', NULL, 'teodor@gmail.com', '75820Teos@', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(9, 'CristovÃ£o da S. M. Dos Santos', 'Chris', '2007-08-01', '', 'cristovaosms2007@gmail.com', '10Traco', '', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760361806/eaohvv4nfkeiwegzb2kc.jpg', b'1'),
(10, 'CristovÃ£o da S. M. Dos Santos', 'Chris', '2007-08-01', '13974198334', 'cristovaosms2007@gmail.com', '10Traco', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(11, 'Sophia Raquely', 'sophia', '2008-05-21', '', 'sophia.carneiro@etec.sp.gov.br', 'sophia@S', 'Cavalo de corrida', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760363220/tbsgktzvqwxhjt3ysjs2.jpg', b'1'),
(12, 'Davi Felix', 'DaviZao', '1999-04-11', '13997678566', 'davi@gmail.com', 'Davi1234!', '30y\nEstudante da Etec Adolpho Berezin\n\n', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760370535/j5kuwmjwno6sgwc4jqaf.png', b'1'),
(13, 'Davi Felix De Oliveira', 'DaviZao', '1999-04-11', '13997678566', 'davi@gmail.com', 'Davi1234!', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(14, 'Teste', 'teste', '2025-10-01', '', 'teste@teste', 'teste', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(15, 'Maricota', 'Saskeobixa', '2007-06-08', '', 'saskeobixa@gmail.com', 'Kanjsandertal3.', 'Sou uma pessoa legal', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760396246/xbmxjfkakbathyzmsuw5.jpg', b'1'),
(16, 'skb', 'saskedrawings', '2007-06-08', '', 'saskedrawing@gmail.com', 'Mizuppaik0.', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(17, 'Maria Pires', 'saskedrawings', '2007-08-07', '', 'saske@gmail.com', 'Mizuppaik0.', 'Opa! Sou desenhista a um bom tempinho, e vou postar desenhos relacionados aos meus personagens aqui!', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760377166/j43wgmxxtgsjzpzl1maf.jpg', b'1'),
(19, 'Lysandre Augusto', 'Leelpip', '2000-10-13', '', 'lee@gmail.com', 'leelegal21.', 'Gosto de desenhar', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760373707/sywnli9bcqlz1jevcyb3.jpg', b'1'),
(20, 'eduarda', 'eduda', '2003-02-13', '', 'ewduarda@gmail.com', '1234duda', '', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760375139/qxj45ejshfyrpu71d6ia.jpg', b'1'),
(21, 'Sofia kruzynski Valentim de Melo ', 'Sofia Melo ', '2007-01-02', '11 97329348', 'kruzynskisofia@gmail.com', 'sofia123', 'Eu amo desenhar ', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760378364/bo9xfetcm06cbsgv2smd.jpg', b'1'),
(22, 'joÃ£o lima', 'joaozinhopoggers', '2016-06-13', '', 'joÃ£olima@gmail.com', 'Lolevida.', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(23, 'teste1', 'teste1', '2025-10-15', '', 'teste@teste', 'teste1', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(24, 'teste1', 'teste1', '2025-10-15', '', 'teste@teste', 'teste1', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(25, 'Leticia Melo', 'nadhy', '2007-10-13', '', 'nadhirray@gmail.com', '23082007Lm', '', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760380435/mwnbnbnm5b2bohs7gem2.jpg', b'1'),
(26, 'Yasmin Torres', 'Yapix', '2006-10-13', '', 'yapix@gmail.com', 'Yapix1.', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(27, 'Yasmin Torres', 'Yapix', '2006-10-13', '', 'yapix@gmail.com', 'Yapix1.', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1'),
(28, 'Joana pereira Pires', 'Leblanc', '2007-08-08', '', 'leblanc@gmail.com', 'Kanjsandertal3.', 'Sou legal :)', 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1760389703/xrx1yxtjnvypjythpauo.png', b'1'),
(29, 'Teste', 'Teste', '0000-00-00', '', 'teste@gmail.com', 'teste', NULL, 'https://res.cloudinary.com/ddmcxyujg/image/upload/v1759777281/ufqjmepiczfdm56axodo.png', b'1');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `tb_colaboracao`
--
ALTER TABLE `tb_colaboracao`
  ADD PRIMARY KEY (`id_colaboracao`),
  ADD KEY `fk_id_tipo_colaboracao` (`fk_id_tipo_colaboracao`),
  ADD KEY `fk_id_usuario_criador` (`fk_id_usuario_criador`);

--
-- Índices para tabela `tb_colaboracao_tag`
--
ALTER TABLE `tb_colaboracao_tag`
  ADD PRIMARY KEY (`id_colaboracao_tag`),
  ADD KEY `fk_id_colaboracao` (`fk_id_colaboracao`),
  ADD KEY `fk_id_tag` (`fk_id_tag`);

--
-- Índices para tabela `tb_comentario`
--
ALTER TABLE `tb_comentario`
  ADD PRIMARY KEY (`id_comentario`),
  ADD KEY `fk_id_colaboracao` (`fk_id_colaboracao`),
  ADD KEY `fk_id_publicacao` (`fk_id_publicacao`),
  ADD KEY `fk_id_relato` (`fk_id_relato`),
  ADD KEY `fk_id_usuario_criador` (`fk_id_usuario_criador`);

--
-- Índices para tabela `tb_conteudo_pasta`
--
ALTER TABLE `tb_conteudo_pasta`
  ADD PRIMARY KEY (`id_conteudo_pasta`),
  ADD KEY `fk_id_pasta` (`fk_id_pasta`),
  ADD KEY `fk_id_publicacao` (`fk_id_publicacao`);

--
-- Índices para tabela `tb_conversa`
--
ALTER TABLE `tb_conversa`
  ADD PRIMARY KEY (`id_conversa`);

--
-- Índices para tabela `tb_denuncia`
--
ALTER TABLE `tb_denuncia`
  ADD PRIMARY KEY (`id_denuncia`),
  ADD KEY `fk_id_penalidade` (`fk_id_penalidade`),
  ADD KEY `fk_id_usuario_criador` (`fk_id_usuario_criador`),
  ADD KEY `fk_id_usuario_denunciado` (`fk_id_usuario_denunciado`);

--
-- Índices para tabela `tb_estilo`
--
ALTER TABLE `tb_estilo`
  ADD PRIMARY KEY (`id_estilo`);

--
-- Índices para tabela `tb_estilo_publicacao`
--
ALTER TABLE `tb_estilo_publicacao`
  ADD PRIMARY KEY (`id_estilo_publicacao`),
  ADD KEY `fk_id_publicacao` (`fk_id_publicacao`),
  ADD KEY `fk_id_estilo` (`fk_id_estilo`);

--
-- Índices para tabela `tb_imagens_publicacao`
--
ALTER TABLE `tb_imagens_publicacao`
  ADD PRIMARY KEY (`id_imagem`),
  ADD KEY `fk_id_publicacao` (`fk_id_publicacao`);

--
-- Índices para tabela `tb_imagens_relato`
--
ALTER TABLE `tb_imagens_relato`
  ADD PRIMARY KEY (`id_imagem`),
  ADD KEY `fk_id_relato` (`fk_id_relato`);

--
-- Índices para tabela `tb_interacao`
--
ALTER TABLE `tb_interacao`
  ADD PRIMARY KEY (`id_interacao`),
  ADD KEY `fk_id_conversa` (`fk_id_conversa`),
  ADD KEY `fk_id_usuario` (`fk_id_usuario`);

--
-- Índices para tabela `tb_mensagem`
--
ALTER TABLE `tb_mensagem`
  ADD PRIMARY KEY (`id_mensagem`),
  ADD KEY `fk_id_conversa` (`fk_id_conversa`);

--
-- Índices para tabela `tb_pasta`
--
ALTER TABLE `tb_pasta`
  ADD PRIMARY KEY (`id_pasta`),
  ADD KEY `fk_id_usuario_criador` (`fk_id_usuario_criador`);

--
-- Índices para tabela `tb_penalidade`
--
ALTER TABLE `tb_penalidade`
  ADD PRIMARY KEY (`id_penalidade`);

--
-- Índices para tabela `tb_publicacao`
--
ALTER TABLE `tb_publicacao`
  ADD PRIMARY KEY (`id_publicacao`),
  ADD KEY `fk_id_usuario_criador` (`fk_id_usuario_criador`);

--
-- Índices para tabela `tb_publicacao_tag`
--
ALTER TABLE `tb_publicacao_tag`
  ADD PRIMARY KEY (`id_publicacao_tag`),
  ADD KEY `fk_id_publicacao` (`fk_id_publicacao`),
  ADD KEY `fk_id_tag` (`fk_id_tag`);

--
-- Índices para tabela `tb_relato`
--
ALTER TABLE `tb_relato`
  ADD PRIMARY KEY (`id_relato`),
  ADD KEY `fk_id_tipo_relato` (`fk_id_tipo_relato`),
  ADD KEY `fk_id_usuario_criador` (`fk_id_usuario_criador`);

--
-- Índices para tabela `tb_relato_tag`
--
ALTER TABLE `tb_relato_tag`
  ADD PRIMARY KEY (`id_relato_tag`),
  ADD KEY `fk_id_relato` (`fk_id_relato`),
  ADD KEY `fk_id_tag` (`fk_id_tag`);

--
-- Índices para tabela `tb_tag`
--
ALTER TABLE `tb_tag`
  ADD PRIMARY KEY (`id_tag`);

--
-- Índices para tabela `tb_tipo_colaboracao`
--
ALTER TABLE `tb_tipo_colaboracao`
  ADD PRIMARY KEY (`id_tipo_colaboracao`);

--
-- Índices para tabela `tb_tipo_relato`
--
ALTER TABLE `tb_tipo_relato`
  ADD PRIMARY KEY (`id_tipo_relato`);

--
-- Índices para tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  ADD PRIMARY KEY (`id_usuario`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `tb_colaboracao`
--
ALTER TABLE `tb_colaboracao`
  MODIFY `id_colaboracao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_colaboracao_tag`
--
ALTER TABLE `tb_colaboracao_tag`
  MODIFY `id_colaboracao_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT de tabela `tb_comentario`
--
ALTER TABLE `tb_comentario`
  MODIFY `id_comentario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_conteudo_pasta`
--
ALTER TABLE `tb_conteudo_pasta`
  MODIFY `id_conteudo_pasta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;

--
-- AUTO_INCREMENT de tabela `tb_conversa`
--
ALTER TABLE `tb_conversa`
  MODIFY `id_conversa` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_denuncia`
--
ALTER TABLE `tb_denuncia`
  MODIFY `id_denuncia` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_estilo`
--
ALTER TABLE `tb_estilo`
  MODIFY `id_estilo` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de tabela `tb_estilo_publicacao`
--
ALTER TABLE `tb_estilo_publicacao`
  MODIFY `id_estilo_publicacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `tb_imagens_publicacao`
--
ALTER TABLE `tb_imagens_publicacao`
  MODIFY `id_imagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT de tabela `tb_imagens_relato`
--
ALTER TABLE `tb_imagens_relato`
  MODIFY `id_imagem` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_interacao`
--
ALTER TABLE `tb_interacao`
  MODIFY `id_interacao` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_mensagem`
--
ALTER TABLE `tb_mensagem`
  MODIFY `id_mensagem` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_pasta`
--
ALTER TABLE `tb_pasta`
  MODIFY `id_pasta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de tabela `tb_penalidade`
--
ALTER TABLE `tb_penalidade`
  MODIFY `id_penalidade` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `tb_publicacao`
--
ALTER TABLE `tb_publicacao`
  MODIFY `id_publicacao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT de tabela `tb_publicacao_tag`
--
ALTER TABLE `tb_publicacao_tag`
  MODIFY `id_publicacao_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `tb_relato`
--
ALTER TABLE `tb_relato`
  MODIFY `id_relato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de tabela `tb_relato_tag`
--
ALTER TABLE `tb_relato_tag`
  MODIFY `id_relato_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT de tabela `tb_tag`
--
ALTER TABLE `tb_tag`
  MODIFY `id_tag` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=52;

--
-- AUTO_INCREMENT de tabela `tb_tipo_colaboracao`
--
ALTER TABLE `tb_tipo_colaboracao`
  MODIFY `id_tipo_colaboracao` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de tabela `tb_tipo_relato`
--
ALTER TABLE `tb_tipo_relato`
  MODIFY `id_tipo_relato` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de tabela `tb_usuario`
--
ALTER TABLE `tb_usuario`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `tb_colaboracao`
--
ALTER TABLE `tb_colaboracao`
  ADD CONSTRAINT `tb_colaboracao_ibfk_1` FOREIGN KEY (`fk_id_tipo_colaboracao`) REFERENCES `tb_tipo_colaboracao` (`id_tipo_colaboracao`),
  ADD CONSTRAINT `tb_colaboracao_ibfk_2` FOREIGN KEY (`fk_id_usuario_criador`) REFERENCES `tb_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `tb_colaboracao_tag`
--
ALTER TABLE `tb_colaboracao_tag`
  ADD CONSTRAINT `tb_colaboracao_tag_ibfk_1` FOREIGN KEY (`fk_id_colaboracao`) REFERENCES `tb_colaboracao` (`id_colaboracao`),
  ADD CONSTRAINT `tb_colaboracao_tag_ibfk_2` FOREIGN KEY (`fk_id_tag`) REFERENCES `tb_tag` (`id_tag`);

--
-- Limitadores para a tabela `tb_comentario`
--
ALTER TABLE `tb_comentario`
  ADD CONSTRAINT `tb_comentario_ibfk_1` FOREIGN KEY (`fk_id_colaboracao`) REFERENCES `tb_colaboracao` (`id_colaboracao`),
  ADD CONSTRAINT `tb_comentario_ibfk_2` FOREIGN KEY (`fk_id_publicacao`) REFERENCES `tb_publicacao` (`id_publicacao`),
  ADD CONSTRAINT `tb_comentario_ibfk_3` FOREIGN KEY (`fk_id_relato`) REFERENCES `tb_relato` (`id_relato`),
  ADD CONSTRAINT `tb_comentario_ibfk_4` FOREIGN KEY (`fk_id_usuario_criador`) REFERENCES `tb_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `tb_conteudo_pasta`
--
ALTER TABLE `tb_conteudo_pasta`
  ADD CONSTRAINT `tb_conteudo_pasta_ibfk_1` FOREIGN KEY (`fk_id_pasta`) REFERENCES `tb_pasta` (`id_pasta`),
  ADD CONSTRAINT `tb_conteudo_pasta_ibfk_2` FOREIGN KEY (`fk_id_publicacao`) REFERENCES `tb_publicacao` (`id_publicacao`);

--
-- Limitadores para a tabela `tb_denuncia`
--
ALTER TABLE `tb_denuncia`
  ADD CONSTRAINT `tb_denuncia_ibfk_1` FOREIGN KEY (`fk_id_penalidade`) REFERENCES `tb_penalidade` (`id_penalidade`),
  ADD CONSTRAINT `tb_denuncia_ibfk_2` FOREIGN KEY (`fk_id_usuario_criador`) REFERENCES `tb_usuario` (`id_usuario`),
  ADD CONSTRAINT `tb_denuncia_ibfk_3` FOREIGN KEY (`fk_id_usuario_denunciado`) REFERENCES `tb_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `tb_estilo_publicacao`
--
ALTER TABLE `tb_estilo_publicacao`
  ADD CONSTRAINT `tb_estilo_publicacao_ibfk_1` FOREIGN KEY (`fk_id_publicacao`) REFERENCES `tb_publicacao` (`id_publicacao`),
  ADD CONSTRAINT `tb_estilo_publicacao_ibfk_2` FOREIGN KEY (`fk_id_estilo`) REFERENCES `tb_estilo` (`id_estilo`);

--
-- Limitadores para a tabela `tb_imagens_publicacao`
--
ALTER TABLE `tb_imagens_publicacao`
  ADD CONSTRAINT `tb_imagens_publicacao_ibfk_1` FOREIGN KEY (`fk_id_publicacao`) REFERENCES `tb_publicacao` (`id_publicacao`);

--
-- Limitadores para a tabela `tb_imagens_relato`
--
ALTER TABLE `tb_imagens_relato`
  ADD CONSTRAINT `tb_imagens_relato_ibfk_1` FOREIGN KEY (`fk_id_relato`) REFERENCES `tb_relato` (`id_relato`);

--
-- Limitadores para a tabela `tb_interacao`
--
ALTER TABLE `tb_interacao`
  ADD CONSTRAINT `tb_interacao_ibfk_1` FOREIGN KEY (`fk_id_conversa`) REFERENCES `tb_conversa` (`id_conversa`),
  ADD CONSTRAINT `tb_interacao_ibfk_2` FOREIGN KEY (`fk_id_usuario`) REFERENCES `tb_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `tb_mensagem`
--
ALTER TABLE `tb_mensagem`
  ADD CONSTRAINT `tb_mensagem_ibfk_1` FOREIGN KEY (`fk_id_conversa`) REFERENCES `tb_conversa` (`id_conversa`);

--
-- Limitadores para a tabela `tb_pasta`
--
ALTER TABLE `tb_pasta`
  ADD CONSTRAINT `tb_pasta_ibfk_1` FOREIGN KEY (`fk_id_usuario_criador`) REFERENCES `tb_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `tb_publicacao`
--
ALTER TABLE `tb_publicacao`
  ADD CONSTRAINT `tb_publicacao_ibfk_1` FOREIGN KEY (`fk_id_usuario_criador`) REFERENCES `tb_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `tb_publicacao_tag`
--
ALTER TABLE `tb_publicacao_tag`
  ADD CONSTRAINT `tb_publicacao_tag_ibfk_1` FOREIGN KEY (`fk_id_publicacao`) REFERENCES `tb_publicacao` (`id_publicacao`),
  ADD CONSTRAINT `tb_publicacao_tag_ibfk_2` FOREIGN KEY (`fk_id_tag`) REFERENCES `tb_tag` (`id_tag`);

--
-- Limitadores para a tabela `tb_relato`
--
ALTER TABLE `tb_relato`
  ADD CONSTRAINT `tb_relato_ibfk_1` FOREIGN KEY (`fk_id_tipo_relato`) REFERENCES `tb_tipo_relato` (`id_tipo_relato`),
  ADD CONSTRAINT `tb_relato_ibfk_2` FOREIGN KEY (`fk_id_usuario_criador`) REFERENCES `tb_usuario` (`id_usuario`);

--
-- Limitadores para a tabela `tb_relato_tag`
--
ALTER TABLE `tb_relato_tag`
  ADD CONSTRAINT `tb_relato_tag_ibfk_1` FOREIGN KEY (`fk_id_relato`) REFERENCES `tb_relato` (`id_relato`),
  ADD CONSTRAINT `tb_relato_tag_ibfk_2` FOREIGN KEY (`fk_id_tag`) REFERENCES `tb_tag` (`id_tag`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
