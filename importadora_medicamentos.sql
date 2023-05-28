-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 28, 2023 at 07:49 PM
-- Server version: 10.4.25-MariaDB
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `importadora_medicamentos`
--

-- --------------------------------------------------------

--
-- Table structure for table `im_lineas`
--

CREATE TABLE `im_lineas` (
  `id_linea` int(11) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `descripción` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `im_lineas`
--

INSERT INTO `im_lineas` (`id_linea`, `empresa`, `descripción`) VALUES
(1, 'Aisa', 'AISA Somos una empresa jovial, dinámica y responsable especializada en la importación de productos de farmacia producto de muchos años de experiencia en este rubro . Nuestro personal de visita médica y comercialización se encuentra apto para atender todas sus consultas basados en la experiencia y capacitación permanente que hacemos de nuestra gente.'),
(2, 'Zambon', 'ZAMBON siempre ha destacado en el ámbito científico y de la investigación farmacéutica, desarrollando importantes moléculas nuevas que se han convertido en un elemento esencial para el tratamiento de varias enfermedades comunes: bronquitis aguda y crónica, fibrosis idiopática pulmonar, infecciones del tracto urinario no complicadas, dolores leves a moderados y otitis.'),
(3, 'Aisa', 'AISA Somos una empresa jovial, dinámica y responsable especializada en la importación de productos de farmacia producto de muchos años de experiencia en este rubro . Nuestro personal de visita médica y comercialización se encuentra apto para atender todas sus consultas basados en la experiencia y capacitación permanente que hacemos de nuestra gente.'),
(4, 'Zambon', 'ZAMBON siempre ha destacado en el ámbito científico y de la investigación farmacéutica, desarrollando importantes moléculas nuevas que se han convertido en un elemento esencial para el tratamiento de varias enfermedades comunes: bronquitis aguda y crónica, fibrosis idiopática pulmonar, infecciones del tracto urinario no complicadas, dolores leves a moderados y otitis.');

-- --------------------------------------------------------

--
-- Table structure for table `im_lineas1`
--

CREATE TABLE `im_lineas1` (
  `id_linea` int(11) NOT NULL,
  `empresa` varchar(50) NOT NULL,
  `descripción` varchar(2000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `im_lineas1`
--

INSERT INTO `im_lineas1` (`id_linea`, `empresa`, `descripción`) VALUES
(1, 'Aisa', 'AISA Somos una empresa jovial, dinámica y responsable especializada en la importación de productos de farmacia producto de muchos años de experiencia en este rubro . Nuestro personal de visita médica y comercialización se encuentra apto para atender todas sus consultas basados en la experiencia y capacitación permanente que hacemos de nuestra gente.'),
(2, 'Zambon', 'ZAMBON siempre ha destacado en el ámbito científico y de la investigación farmacéutica, desarrollando importantes moléculas nuevas que se han convertido en un elemento esencial para el tratamiento de varias enfermedades comunes: bronquitis aguda y crónica, fibrosis idiopática pulmonar, infecciones del tracto urinario no complicadas, dolores leves a moderados y otitis.'),
(3, 'Aisa', 'AISA Somos una empresa jovial, dinámica y responsable especializada en la importación de productos de farmacia producto de muchos años de experiencia en este rubro . Nuestro personal de visita médica y comercialización se encuentra apto para atender todas sus consultas basados en la experiencia y capacitación permanente que hacemos de nuestra gente.'),
(4, 'Zambon', 'ZAMBON siempre ha destacado en el ámbito científico y de la investigación farmacéutica, desarrollando importantes moléculas nuevas que se han convertido en un elemento esencial para el tratamiento de varias enfermedades comunes: bronquitis aguda y crónica, fibrosis idiopática pulmonar, infecciones del tracto urinario no complicadas, dolores leves a moderados y otitis.');

-- --------------------------------------------------------

--
-- Table structure for table `im_productos`
--

CREATE TABLE `im_productos` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `accion_terapeutica` varchar(200) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `id_linea` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `precio` float NOT NULL,
  `precio_rebajado` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `im_productos`
--

INSERT INTO `im_productos` (`id`, `nombre`, `accion_terapeutica`, `ubicacion`, `id_linea`, `estado`, `imagen`, `precio`, `precio_rebajado`) VALUES
(1, 'Ibunastizol', 'Analgésicos - Antiinflamatorios - Antiartrósicos', 'img/productos/ibunastizol.png', 1, 1, 'img/productos/ibunastizol.png', 17.5, 16.5),
(2, 'Actual', 'Venta Libre - Antiácidos', 'img/productos/actual.png', 1, 1, 'img/productos/actual.png', 15, 13),
(3, 'Actual Panto 24', 'Venta Libre - Antiácidos', 'img/productos/actual_panto.png', 1, 1, 'img/productos/actual_panto.png', 18, 16.5),
(4, 'Afebril Forte', 'Analgésicos - Antiinflamatorios - Antiartrósicos', 'img/productos/afebril_forte.png', 2, 1, 'img/productos/afebril_forte.png', 12, 11.5),
(5, 'Actinerval', 'Actinerval', 'img/productos/actinerval.png', 2, 1, 'img/productos/actinerval.png', 12.5, 12),
(6, 'Amitax', 'Neurología', 'img/productos/amitax.jpg', 3, 1, 'img/productos/amitax.jpg', 8, 7.5),
(7, 'Bacticel comprimidos', 'Antibióticos', 'img/productos/bacticel_comprimidos.png', 3, 1, 'img/productos/bacticel_comprimidos.png', 12, 11.5),
(8, 'Bacticel suspensión', 'Antibióticos', 'img/productos/bacticel_suspension.jpg', 3, 1, 'img/productos/bacticel_suspension.jpg', 13, 12.5),
(9, 'Bagó B1 B6 B12 5.000 comprimidos', 'Complementos Vitamínicos', 'img/productos/bago_b1b6b12.png', 1, 1, 'img/productos/bago_b1b6b12.png', 3, 2.75),
(10, 'Cardiorex', 'Cardiología', 'img/productos/cardiorex.png', 2, 1, 'img/productos/cardiorex.png', 13, 12.7),
(11, 'Carvedil D', 'Cardiología', 'img/productos/carvedil_d.png', 3, 1, 'img/productos/carvedil_d.png', 14, 13.5),
(12, 'Dioxaflex Gesic', 'Analgésicos - Antiinflamatorios - Antiartrósicos', 'img/productos/dioxaflex_gesic.jpg', 3, 1, 'img/productos/dioxaflex_gesic.jpg', 18, 17.5);

-- --------------------------------------------------------

--
-- Table structure for table `im_productos1`
--

CREATE TABLE `im_productos1` (
  `id` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `accion_terapeutica` varchar(200) NOT NULL,
  `ubicacion` varchar(50) NOT NULL,
  `id_linea` int(11) NOT NULL,
  `estado` tinyint(1) NOT NULL,
  `imagen` varchar(50) NOT NULL,
  `precio` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `im_productos1`
--

INSERT INTO `im_productos1` (`id`, `nombre`, `accion_terapeutica`, `ubicacion`, `id_linea`, `estado`, `imagen`, `precio`) VALUES
(1, 'Ibunastizol', 'Analgésicos - Antiinflamatorios - Antiartrósicos', 'img/productos/ibunastizol.png', 1, 1, 'img/productos/ibunastizol.png', 17.5),
(2, 'Actual', 'Venta Libre - Antiácidos', 'img/productos/actual.png', 1, 1, 'img/productos/actual.png', 15),
(3, 'Actual Panto 24', 'Venta Libre - Antiácidos', 'img/productos/actual_panto.png', 1, 1, 'img/productos/actual_panto.png', 18),
(4, 'Afebril Forte', 'Analgésicos - Antiinflamatorios - Antiartrósicos', 'img/productos/afebril_forte.png', 2, 1, 'img/productos/afebril_forte.png', 12),
(5, 'Actinerval', 'Actinerval', 'img/productos/actinerval.png', 2, 1, 'img/productos/actinerval.png', 12.5),
(6, 'Amitax', 'Neurología', 'img/productos/amitax.jpg', 3, 1, 'img/productos/amitax.jpg', 8),
(7, 'Bacticel comprimidos', 'Antibióticos', 'img/productos/bacticel_comprimidos.png', 3, 1, 'img/productos/bacticel_comprimidos.png', 12),
(8, 'Bacticel suspensión', 'Antibióticos', 'img/productos/bacticel_suspension.jpg', 3, 1, 'img/productos/bacticel_suspension.jpg', 13),
(9, 'Bagó B1 B6 B12 5.000 comprimidos', 'Complementos Vitamínicos', 'img/productos/bago_b1b6b12.png', 1, 1, 'img/productos/bago_b1b6b12.png', 3),
(10, 'Cardiorex', 'Cardiología', 'img/productos/cardiorex.png', 2, 1, 'img/productos/cardiorex.png', 13),
(11, 'Carvedil D', 'Cardiología', 'img/productos/carvedil_d.png', 3, 1, 'img/productos/carvedil_d.png', 14),
(12, 'Dioxaflex Gesic', 'Analgésicos - Antiinflamatorios - Antiartrósicos', 'img/productos/dioxaflex_gesic.jpg', 3, 1, 'img/productos/dioxaflex_gesic.jpg', 18);

-- --------------------------------------------------------

--
-- Table structure for table `usuario`
--

CREATE TABLE `usuario` (
  `id` int(11) NOT NULL,
  `nombre` varchar(35) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `correo` varchar(100) NOT NULL,
  `contrasena` varchar(100) NOT NULL,
  `categoria` enum('1','2','3','4') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `usuario`
--

INSERT INTO `usuario` (`id`, `nombre`, `apellidos`, `correo`, `contrasena`, `categoria`) VALUES
(1, 'Hamlet', 'Salinsa', 'ksdfuyqweh@gmail.com', '1234', '4');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `im_lineas`
--
ALTER TABLE `im_lineas`
  ADD PRIMARY KEY (`id_linea`);

--
-- Indexes for table `im_lineas1`
--
ALTER TABLE `im_lineas1`
  ADD PRIMARY KEY (`id_linea`);

--
-- Indexes for table `im_productos`
--
ALTER TABLE `im_productos`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `im_productos1`
--
ALTER TABLE `im_productos1`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `im_lineas`
--
ALTER TABLE `im_lineas`
  MODIFY `id_linea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `im_lineas1`
--
ALTER TABLE `im_lineas1`
  MODIFY `id_linea` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `im_productos`
--
ALTER TABLE `im_productos`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT for table `im_productos1`
--
ALTER TABLE `im_productos1`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
