-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Versión del servidor:         11.5.2-MariaDB - mariadb.org binary distribution
-- SO del servidor:              Win64
-- HeidiSQL Versión:             12.6.0.6765
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;


-- Volcando estructura de base de datos para primaria
CREATE DATABASE IF NOT EXISTS `primaria` /*!40100 DEFAULT CHARACTER SET latin1 COLLATE latin1_swedish_ci */;
USE `primaria`;

-- Volcando estructura para tabla primaria.asignaturas
CREATE TABLE IF NOT EXISTS `asignaturas` (
  `id` int(3) unsigned zerofill NOT NULL,
  `cal_esp` int(3) NOT NULL DEFAULT 0,
  `cal_mat` int(3) NOT NULL DEFAULT 0,
  `cal_form` int(3) NOT NULL DEFAULT 0,
  `cal_art` int(3) NOT NULL DEFAULT 0,
  `cal_nat` int(3) NOT NULL DEFAULT 0,
  `cal_med` int(3) NOT NULL DEFAULT 0,
  `cal_fis` int(3) NOT NULL DEFAULT 0,
  `promedio` int(3) NOT NULL DEFAULT 0,
  `bimestre` varchar(10) NOT NULL DEFAULT '0',
  `nom_al` varchar(20) NOT NULL,
  `status` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci COMMENT='materias del bimestre';

-- Volcando datos para la tabla primaria.asignaturas: ~0 rows (aproximadamente)

-- Volcando estructura para tabla primaria.usuarios
CREATE TABLE IF NOT EXISTS `usuarios` (
  `Columna 1` int(2) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(8) NOT NULL DEFAULT '0',
  `clave` varchar(8) NOT NULL DEFAULT '0',
  PRIMARY KEY (`Columna 1`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

-- Volcando datos para la tabla primaria.usuarios: ~2 rows (aproximadamente)
INSERT INTO `usuarios` (`Columna 1`, `usuario`, `clave`) VALUES
	(1, 'miguel', '1253'),
	(2, 'axel', '4569');

/*!40103 SET TIME_ZONE=IFNULL(@OLD_TIME_ZONE, 'system') */;
/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IFNULL(@OLD_FOREIGN_KEY_CHECKS, 1) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40111 SET SQL_NOTES=IFNULL(@OLD_SQL_NOTES, 1) */;
