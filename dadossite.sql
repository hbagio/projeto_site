-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Tempo de geração: 19-Mar-2023 às 20:55
-- Versão do servidor: 10.4.27-MariaDB
-- versão do PHP: 8.0.25

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Banco de dados: `dadossite`
--

-- --------------------------------------------------------

--
-- Estrutura da tabela `categorias`
--

CREATE TABLE `categorias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `descricao` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `categorias`
--

INSERT INTO `categorias` (`id`, `created_at`, `updated_at`, `descricao`) VALUES
(1, '2023-01-01 14:03:16', '2023-01-01 14:03:16', 'Balões'),
(2, '2023-01-01 14:03:18', '2023-01-01 14:03:18', 'Comida'),
(3, '2023-01-01 14:03:21', '2023-01-01 14:03:21', 'Convites'),
(4, '2023-02-13 02:15:53', '2023-02-13 02:15:53', 'Caixinhas');

-- --------------------------------------------------------

--
-- Estrutura da tabela `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `informacoes`
--

CREATE TABLE `informacoes` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cnpj` varchar(255) NOT NULL,
  `instagram` varchar(255) NOT NULL,
  `facebook` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `whatsapp` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `informacoes`
--

INSERT INTO `informacoes` (`id`, `created_at`, `updated_at`, `cnpj`, `instagram`, `facebook`, `telefone`, `whatsapp`, `email`, `endereco`) VALUES
(1, '2022-10-05 04:56:29', '2022-11-22 05:11:48', '47.877.859/0001-47', 'https://www.instagram.com/fazendofestavp/', 'https://www.facebook.com/profile.php?id=100085423276607', '(47) 9 9180-6919', '(47) 9 9180-6919', 'contato.fazendofesta@outlook.com.br', 'Estrada Geral Margem Esquerda, SN, Bairro Centro, Aurora - SC, Cep 89.186-000');

-- --------------------------------------------------------

--
-- Estrutura da tabela `informacoesprestacaoservicos`
--

CREATE TABLE `informacoesprestacaoservicos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `cnae` int(11) NOT NULL,
  `listaservico` int(11) NOT NULL,
  `aliquota` double(8,2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `informacoesprestacaoservicos`
--

INSERT INTO `informacoesprestacaoservicos` (`id`, `cnae`, `listaservico`, `aliquota`) VALUES
(1, 10, 102, 2.00);

-- --------------------------------------------------------

--
-- Estrutura da tabela `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(5, '2022_09_10_172435_create_produtos_table', 1),
(6, '2022_09_10_223313_create_categorias_table', 1),
(7, '2022_09_11_215029_add_idcategoria_to_produtos_table', 1),
(8, '2022_09_22_001333_create_informacoes_table', 1),
(9, '2023_01_08_205237_add_destaque_to_produtos_table', 2),
(10, '2023_01_21_161033_create_pessoas_table', 3),
(11, '2023_01_21_161739_add_tipo_to_pessoas_table', 4),
(12, '2023_01_21_172755_add_cep_to_pessoas_table', 5),
(13, '2023_03_19_182839_create_informacoesprestacaoservicos_table', 6);

-- --------------------------------------------------------

--
-- Estrutura da tabela `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `token` varchar(64) NOT NULL,
  `abilities` text DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Estrutura da tabela `pessoas`
--

CREATE TABLE `pessoas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `cpfcnpj` varchar(255) NOT NULL,
  `nome` varchar(255) NOT NULL,
  `endereco` varchar(255) NOT NULL,
  `bairro` varchar(255) NOT NULL,
  `cidade` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `telefone` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `tipo` smallint(6) NOT NULL,
  `cep` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `pessoas`
--

INSERT INTO `pessoas` (`id`, `created_at`, `updated_at`, `cpfcnpj`, `nome`, `endereco`, `bairro`, `cidade`, `estado`, `telefone`, `email`, `tipo`, `cep`) VALUES
(1, '2023-01-21 20:48:12', '2023-01-21 20:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(2, '2023-01-21 21:04:20', '2023-01-21 21:04:20', '070.093.549-52', 'HUELITON LUIS BAGIO', 'Estrada Geral Margem Esquerda', 'Centro', 'Aurora', 'SC', '47991857049', 'hbagio@outlook.com', 0, 89186000),
(3, '2023-01-21 21:05:55', '2023-01-21 21:05:55', '070.093.549-52', 'HUELITON LUIS BAGIO 1233', 'Estrada Geral Margem Esquerda', 'Centro', 'Aurora', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(4, '2023-02-06 02:04:54', '2023-02-06 02:04:54', '070.093.549-52', 'HUELITON LUIS BAGIO', 'Estrada Geral Margem Esquerda', 'Centro', 'Aurora', 'SC', '47991857049', 'hbagio@outlook.com', 0, 89186000),
(5, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(6, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(7, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(8, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(9, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(10, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(11, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(12, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(13, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(14, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(15, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(16, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(17, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(18, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(19, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(20, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(21, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(22, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(23, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(24, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000),
(25, '2023-01-21 23:48:12', '2023-01-21 23:48:12', '070.093.549-52', 'Hueliton Luis Bagio Hueliton', 'Aurora', 'Centro', 'Centro', 'SC', '47991857049', 'bagiohn@gmail.com', 0, 89186000);

-- --------------------------------------------------------

--
-- Estrutura da tabela `produtos`
--

CREATE TABLE `produtos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `nome` varchar(255) NOT NULL,
  `descricao` text NOT NULL,
  `valor` double(8,2) NOT NULL,
  `imagem` varchar(255) NOT NULL,
  `idcategoria` bigint(20) UNSIGNED NOT NULL DEFAULT 1,
  `destaque` tinyint(1) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `produtos`
--

INSERT INTO `produtos` (`id`, `created_at`, `updated_at`, `nome`, `descricao`, `valor`, `imagem`, `idcategoria`, `destaque`) VALUES
(1, '2023-01-01 14:03:57', '2023-02-12 23:04:34', 'Balão Azul Aniversário', 'Balão Azul Aniversário', 50.00, 'c3a43ca9b0ed32df42fcb069cc1d5bc2.jpg', 1, 1),
(2, '2023-01-01 14:04:06', '2023-01-01 15:02:08', 'Balão Azul Aniversário', 'Balão Azul Aniversário', 75.00, 'b27fe3473433af818676b842e7af31e1.jpg', 1, 0),
(3, '2023-01-01 14:04:18', '2023-01-10 00:19:24', 'Balão pequeno', 'Balão pequeno', 55.00, '897083139d28de2730f634d62a38ceb7.jpg', 1, 0),
(5, '2023-01-09 00:00:46', '2023-01-10 00:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(6, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(7, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(8, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(9, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(10, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(11, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(12, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(13, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(14, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(15, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(16, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(17, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(18, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(19, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(20, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(21, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(22, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(23, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(24, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(25, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(26, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(27, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(28, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(29, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(30, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(31, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(32, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(33, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(34, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(35, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(36, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(37, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(38, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(39, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(40, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(41, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(42, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(43, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(44, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(45, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(46, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(47, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(48, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(49, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(50, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(51, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(52, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(53, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(54, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(55, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(56, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(57, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(58, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(59, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(60, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(61, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(62, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(63, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(64, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(65, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(66, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(67, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(68, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(69, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(70, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(71, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(72, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(73, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(74, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(75, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(76, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(77, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(78, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(79, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(80, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(81, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(82, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(83, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(84, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(85, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(86, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(87, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(88, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(89, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(90, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(91, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(92, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(93, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(94, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(95, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(96, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(97, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(98, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(99, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(100, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(101, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(102, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(103, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(104, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(105, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(106, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(107, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(108, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(109, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(110, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(111, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(112, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(113, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(114, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(115, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(116, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(117, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(118, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(119, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(120, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(121, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(122, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(123, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(124, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(125, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(126, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(127, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(128, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(129, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(130, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(131, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(132, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(133, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(134, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(135, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(136, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(137, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(138, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(139, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(140, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(141, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(142, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(143, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(144, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(145, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(146, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(147, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(148, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(149, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(150, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(151, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(152, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(153, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(154, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(155, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(156, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(157, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(158, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(159, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(160, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(161, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(162, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(163, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(164, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(165, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(166, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(167, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(168, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(169, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(170, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(171, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(172, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(173, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(174, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(175, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(176, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(177, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(178, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(179, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(180, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(181, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(182, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(183, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(184, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(185, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(186, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(187, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(188, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(189, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(190, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(191, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(192, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(193, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(194, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(195, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(196, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(197, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(198, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(199, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(200, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(201, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(202, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(203, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(204, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(205, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(206, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(207, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(208, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(209, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(210, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(211, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(212, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(213, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(214, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(215, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(216, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(217, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(218, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(219, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(220, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(221, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(222, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(223, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(224, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(225, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(226, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(227, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(228, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(229, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(230, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(231, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(232, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(233, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(234, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(235, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(236, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1);
INSERT INTO `produtos` (`id`, `created_at`, `updated_at`, `nome`, `descricao`, `valor`, `imagem`, `idcategoria`, `destaque`) VALUES
(237, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(238, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(239, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(240, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(241, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(242, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(243, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(244, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(245, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(246, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(247, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(248, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(249, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(250, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(251, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(252, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(253, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(254, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(255, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(256, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(257, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(258, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(259, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(260, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(261, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(262, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(263, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(264, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(265, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(266, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(267, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(268, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(269, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(270, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(271, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(272, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(273, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(274, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(275, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(276, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(277, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(278, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(279, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(280, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(281, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(282, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(283, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(284, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(285, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(286, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(287, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(288, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(289, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(290, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(291, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(343, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(344, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(345, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(346, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(347, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(348, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(349, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(350, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(351, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(352, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(353, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(354, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(355, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(356, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(357, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(358, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(359, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(360, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(361, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(362, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(363, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(364, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(365, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(366, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(367, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(368, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(369, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(370, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(371, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(372, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(373, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(374, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(375, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(376, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(377, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(378, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(379, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(380, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(381, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(382, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(383, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(384, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(385, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(386, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(387, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(388, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(389, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(390, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(391, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(392, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(393, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(394, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(395, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(396, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(397, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(398, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(399, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(400, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(401, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(402, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(403, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(404, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(405, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 4, 1),
(406, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(407, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(408, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(409, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(410, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(411, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(412, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(413, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(414, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(415, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(416, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(417, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(418, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(419, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(420, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(421, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(422, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(423, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(424, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(425, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(426, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(427, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(428, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(429, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(430, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(431, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(432, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(433, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(434, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(435, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(436, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(437, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(438, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(439, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(440, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(441, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(442, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(443, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(444, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(445, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(446, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(447, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(448, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(449, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(450, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(451, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(452, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(453, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(454, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(455, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(456, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(457, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(458, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(459, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(460, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(461, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(462, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(463, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(464, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(465, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(466, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(467, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(468, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(469, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(470, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(471, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(472, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(473, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(474, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(475, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(476, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(477, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(478, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(479, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(480, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(481, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 3, 1),
(482, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(483, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(484, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(485, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(486, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(487, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(488, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(489, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(490, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(491, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(492, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(493, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(494, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(495, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(496, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(497, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(498, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(499, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(500, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(501, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(502, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(503, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(504, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(505, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(506, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(507, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(508, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(509, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(510, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(511, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(512, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(513, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(514, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(515, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(516, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(517, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(518, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(519, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(520, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(521, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1);
INSERT INTO `produtos` (`id`, `created_at`, `updated_at`, `nome`, `descricao`, `valor`, `imagem`, `idcategoria`, `destaque`) VALUES
(522, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(523, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(524, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(525, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(526, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(527, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(528, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(529, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(530, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(531, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(532, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(533, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(534, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(535, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(536, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(537, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(538, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(539, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(540, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(541, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(542, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(543, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(544, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(545, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(546, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(547, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(548, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(549, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(550, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(551, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(552, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(553, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(554, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(555, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(556, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(557, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(558, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(559, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(560, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(561, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(562, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(563, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(564, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(565, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(566, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 2, 1),
(567, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(568, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(569, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(570, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(571, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(572, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(573, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(574, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(575, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(576, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(577, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(578, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(579, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(580, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(581, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(582, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(583, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(584, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(585, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(586, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(587, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(588, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(589, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(590, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(591, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(592, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(593, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(594, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(595, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(596, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(597, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(598, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(599, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(600, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(601, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(602, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(603, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(604, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(605, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(606, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(607, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(608, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(609, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(610, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(611, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(612, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(613, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(614, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(615, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(616, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(617, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(618, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(619, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(620, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(621, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(622, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(623, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(624, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(625, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(626, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(627, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(628, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(629, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(630, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(631, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(632, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(633, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(634, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1),
(635, '2023-01-09 03:00:46', '2023-01-10 03:27:18', 'Caixinhas Personalizadas', 'Caixinhas Personalizadas.\r\nR$ 30,00 a centena.\r\nCor do papel a escolha ok', 30.00, '9ddc789b6aca4258bafdf1a88b895fe8.jpg', 1, 1);

-- --------------------------------------------------------

--
-- Estrutura da tabela `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Extraindo dados da tabela `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, 'Nome', 'email@gmail.com', '2023-01-01 13:57:29', '$2y$10$ZtPTznFYP4BhAwjXZgLdWOZAufRTm9tXeLP2ocdSToejSzJd25RzO', '6fX0WYiFXm', '2023-01-01 13:57:29', '2023-01-01 13:57:29'),
(2, 'Hueliton Bagio', 'bagiohn@gmail.com', '2023-01-01 14:03:00', '$2y$10$yqGGqcKK2LxuQuqQ9UbG3O2qYUFZTQMEUhcxRFcqStv4DddOncznq', 'yWyZUmK7FJaYjgW0CI3IU5AuBcITFc6WfWyYMSgaUQTcIODHKjAUQgpEl28z', '2023-01-01 14:03:00', '2023-01-01 14:03:00'),
(3, 'Vanusa Petry', 'vanusapetry@hotmail.com', '2023-01-01 14:03:00', '$2y$10$ENgXiNY507D.PsVFHxqf0OzTQvGXpG0f1LXX6HkOyLSq/NGQt4VGO', '8QqETGamlE', '2023-01-01 14:03:00', '2023-01-01 14:03:00'),
(4, 'Usuario', 'usuario@email.com', '2023-01-01 15:47:54', '$2y$10$fMEq8ftdKF/bf/aAjDTOUOM1ql4mfkY.yLfXrs3v5exxwemuVTSPu', 'woaAm2wuWz', '2023-01-01 15:47:54', '2023-01-01 15:47:54');

--
-- Índices para tabelas despejadas
--

--
-- Índices para tabela `categorias`
--
ALTER TABLE `categorias`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Índices para tabela `informacoes`
--
ALTER TABLE `informacoes`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `informacoesprestacaoservicos`
--
ALTER TABLE `informacoesprestacaoservicos`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Índices para tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Índices para tabela `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`id`);

--
-- Índices para tabela `produtos`
--
ALTER TABLE `produtos`
  ADD PRIMARY KEY (`id`),
  ADD KEY `produtos_idcategoria_foreign` (`idcategoria`);

--
-- Índices para tabela `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de tabelas despejadas
--

--
-- AUTO_INCREMENT de tabela `categorias`
--
ALTER TABLE `categorias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de tabela `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `informacoes`
--
ALTER TABLE `informacoes`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `informacoesprestacaoservicos`
--
ALTER TABLE `informacoesprestacaoservicos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT de tabela `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de tabela `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de tabela `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;

--
-- AUTO_INCREMENT de tabela `produtos`
--
ALTER TABLE `produtos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=636;

--
-- AUTO_INCREMENT de tabela `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- Restrições para despejos de tabelas
--

--
-- Limitadores para a tabela `informacoesprestacaoservicos`
--
ALTER TABLE `informacoesprestacaoservicos`
  ADD CONSTRAINT `informacoesprestacaoservicos_id_foreign` FOREIGN KEY (`id`) REFERENCES `informacoes` (`id`);

--
-- Limitadores para a tabela `produtos`
--
ALTER TABLE `produtos`
  ADD CONSTRAINT `produtos_idcategoria_foreign` FOREIGN KEY (`idcategoria`) REFERENCES `categorias` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
