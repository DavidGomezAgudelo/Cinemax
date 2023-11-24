-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         10.4.28-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.5.0.6677
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para cinemaxvandolero
CREATE DATABASE IF NOT EXISTS `cinemaxvandolero` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci */;
USE `cinemaxvandolero`;

-- Volcando estructura para tabla cinemaxvandolero.calificaciones
CREATE TABLE IF NOT EXISTS `calificaciones` (
  `id_calificacion` int(11) NOT NULL AUTO_INCREMENT,
  `id_pelicula` int(11) NOT NULL,
  `calificacion` int(11) NOT NULL,
  PRIMARY KEY (`id_calificacion`),
  KEY `FK_id_pelicula` (`id_pelicula`),
  CONSTRAINT `FK_id_pelicula` FOREIGN KEY (`id_pelicula`) REFERENCES `peliculas` (`id_pelicula`) ON DELETE CASCADE ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla cinemaxvandolero.calificaciones: ~17 rows (aproximadamente)
INSERT INTO `calificaciones` (`id_calificacion`, `id_pelicula`, `calificacion`) VALUES
	(2, 5, 8),
	(3, 5, 10),
	(4, 5, 6),
	(6, 1, 7),
	(8, 3, 8),
	(9, 4, 9),
	(10, 4, 10),
	(11, 1, 10),
	(12, 3, 1),
	(14, 5, 1),
	(15, 4, 10),
	(16, 6, 9),
	(18, 5, 9),
	(19, 5, 10),
	(20, 1, 10),
	(21, 3, 10),
	(23, 6, 10);

-- Volcando estructura para tabla cinemaxvandolero.peliculas
CREATE TABLE IF NOT EXISTS `peliculas` (
  `id_pelicula` int(11) NOT NULL AUTO_INCREMENT,
  `nombre` varchar(100) NOT NULL,
  `sinopsis` varchar(500) NOT NULL,
  `foto` varchar(500) NOT NULL,
  `autor` varchar(50) NOT NULL,
  PRIMARY KEY (`id_pelicula`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- Volcando datos para la tabla cinemaxvandolero.peliculas: ~5 rows (aproximadamente)
INSERT INTO `peliculas` (`id_pelicula`, `nombre`, `sinopsis`, `foto`, `autor`) VALUES
	(1, 'Harry Potter Y la Piedra Filosofal', 'Harry Potter es una serie de novelas fantÃ¡sticas escrita por la autora britÃ¡nica J. K. Rowling, en la que se describen las aventuras del joven aprendiz de magia y hechicerÃ­a Harry Potter y sus amigos Hermione Granger y Ron Weasley, durante los aÃ±os que pasan en el Colegio Hogwarts de Magia y Hechice', 'https://th.bing.com/th/id/OIP.TgPBCr-5pi6gxp938_ENDAHaEK?rs=1&pid=ImgDetMain', '9'),
	(3, 'avatar', 'personas azules contra usa', 'https://th.bing.com/th/id/R.63900acbf4e17469274452eea8999db7?rik=yvAfsAq60yC6Tw&pid=ImgRaw&r=0', 'james cameron'),
	(4, 'interestelar', 'Emc2', 'https://th.bing.com/th/id/R.94d28c7edd1234a698ff78087dfbdb3a?rik=5Iakq1YKDBKGhw&pid=ImgRaw&r=0', 'modric'),
	(5, 'Titanic', 'un barco se choca con in icebear y se unde', 'https://th.bing.com/th/id/OIP.8L2EZ84yw-Dxij_eGQ9AvgHaEo?rs=1&pid=ImgDetMain', 'DiCaprio'),
	(6, 'el club de la pelea', 'un loco terrorista con esquizofrenia', 'https://th.bing.com/th/id/OIP.d20y_yB_PfH_p5RjC4YqMwHaEK?w=699&h=393&rs=1&pid=ImgDetMain', 'steven');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
