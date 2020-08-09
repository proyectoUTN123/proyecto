-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Aug 09, 2020 at 10:19 PM
-- Server version: 10.4.11-MariaDB
-- PHP Version: 7.4.6

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `taller`
--

-- --------------------------------------------------------

--
-- Table structure for table `comentarios`
--

CREATE TABLE `comentarios` (
  `id` int(11) NOT NULL,
  `of_image` int(11) NOT NULL,
  `comment_text` text COLLATE utf16_spanish2_ci NOT NULL,
  `of_user` int(11) NOT NULL DEFAULT 4,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Dumping data for table `comentarios`
--

INSERT INTO `comentarios` (`id`, `of_image`, `comment_text`, `of_user`, `ts_create`) VALUES
(17, 6, 'Comentario1', 4, '2020-08-09 17:04:35'),
(18, 6, 'Comentario2', 4, '2020-08-09 17:04:56');

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `short_desc` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `long_desc` text COLLATE utf16_spanish2_ci NOT NULL,
  `price` int(11) NOT NULL,
  `image` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Dumping data for table `cursos`
--

INSERT INTO `cursos` (`id`, `name`, `short_desc`, `long_desc`, `price`, `image`, `status`, `ts_create`) VALUES
(1, 'Curso 1 ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 250, '', 1, '2020-07-12 17:31:31'),
(2, 'Curso 2 ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. ', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 300, '', 1, '2020-07-12 17:31:31'),
(3, 'Curso 3', 'It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 150, '', 1, '2020-07-12 17:31:31'),
(4, 'Curso 4', 'Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetti', 'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.', 500, '', 1, '2020-07-12 17:31:31');

-- --------------------------------------------------------

--
-- Table structure for table `imagenes`
--

CREATE TABLE `imagenes` (
  `id` int(11) NOT NULL,
  `name` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `route` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Dumping data for table `imagenes`
--

INSERT INTO `imagenes` (`id`, `name`, `route`, `status`, `ts_create`) VALUES
(2, '123111', 'images/ba7adfae-b765-4720-b574-a0dd39323b61.jpeg', 1, '2020-08-08 17:11:02'),
(6, '', 'images/04a377bd-3d10-45f0-b0dd-822113fb73f4.jpeg', 1, '2020-08-09 17:03:14'),
(7, '', 'images/89c37c3b-2b05-4058-85b4-35f0e257f34f.jpeg', 1, '2020-08-09 17:03:21'),
(8, 'Foto3', 'images/81c039ed-1285-4fb0-b332-0c174c1bfdb2.jpeg', 1, '2020-08-09 17:03:48'),
(9, 'Foto34', 'images/5688f76e-b0d1-471d-a5e8-46f563d0cb73.jpeg', 1, '2020-08-09 17:03:53'),
(10, 'Foto34', 'images/c4e2d7a4-0963-4ad0-bf89-594e9b0eb5f8.jpeg', 1, '2020-08-09 17:03:55'),
(11, 'Foto34', 'images/0b67c0f4-888e-4fc2-b977-1a64cea624b6.jpeg', 1, '2020-08-09 17:03:59'),
(12, 'Foto346', 'images/ac405a03-f52a-498c-bead-b4ff7232f98b.jpeg', 1, '2020-08-09 17:04:04'),
(13, '123', 'images/0e8b3515-787c-4d0d-8335-c9521993be80.jpeg', 1, '2020-08-09 17:04:09');

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` int(11) NOT NULL,
  `username` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `password` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `name` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `lastname` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `mail` varchar(255) COLLATE utf16_spanish2_ci NOT NULL,
  `isadmin` tinyint(1) NOT NULL DEFAULT 0,
  `status` tinyint(1) NOT NULL DEFAULT 1,
  `ts_create` datetime NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf16 COLLATE=utf16_spanish2_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`id`, `username`, `password`, `name`, `lastname`, `mail`, `isadmin`, `status`, `ts_create`) VALUES
(1, 'Username1', 'asd123', 'Nombre1', 'Apellido1', 'notiene@notiene.com', 0, 1, '2020-07-12 00:00:00'),
(2, 'Usuario2', 'Contraseña2', 'Nombre2', 'Apellido2', 'asd@asd.com', 0, 1, '2020-07-12 00:00:00'),
(4, 'Anonimo', 'asdasd123123', 'Anonimo', 'Anonimo', 'nada@nada.com', 0, 1, '2020-08-08 23:17:13'),
(6, 'sebastian', 'asd123', 'Sebastian', 'Baron', 'silent.cs@live.com', 1, 1, '2020-08-08 20:31:51');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD PRIMARY KEY (`id`),
  ADD KEY `of_image` (`of_image`),
  ADD KEY `of_user` (`of_user`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id`),
  ADD KEY `name` (`name`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`),
  ADD UNIQUE KEY `mail` (`mail`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `comentarios`
--
ALTER TABLE `comentarios`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `comentarios`
--
ALTER TABLE `comentarios`
  ADD CONSTRAINT `comentarios_ibfk_1` FOREIGN KEY (`of_image`) REFERENCES `imagenes` (`id`),
  ADD CONSTRAINT `comentarios_ibfk_2` FOREIGN KEY (`of_user`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
