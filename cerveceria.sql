-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 14-12-2022 a las 20:42:53
-- Versión del servidor: 5.7.36
-- Versión de PHP: 7.4.26

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `cerveceria`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `novedades`
--

DROP TABLE IF EXISTS `novedades`;
CREATE TABLE IF NOT EXISTS `novedades` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `titulo` varchar(250) NOT NULL,
  `subtitulo` text NOT NULL,
  `cuerpo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `novedades`
--

INSERT INTO `novedades` (`id`, `titulo`, `subtitulo`, `cuerpo`) VALUES
(1, 'Países Bajos vs Estados Unidos, EN VIVO: todo lo que hay que saber del duelo que abre los octavos de final del Mundial Qatar 2022', 'El elenco europeo dirigido por Louis van Gaal se mide ante el combinado norteamericano que tiene a Christian Pulisic como una de sus grandes figuras', '¿Cómo es el Estadio Khalifa Internacional, sede del partido?\r\n\r\nLleva casi medio siglo siendo el hogar del fútbol y el deporte qatarí. Tras varias remodelaciones y ampliaciones, se transformó en uno de los ocho estadios del Mundial, pero con la diferencia de que es el único que no fue construido exclusivamente para la ocasión. Fue edificado en 1976 en la ciudad de Al Rayyan y, desde entonces, ha albergado varias competiciones deportivas, como un amistoso Argentina-Brasil en 2010 o el Mundial de Atletismo de 2019, por nombrar algunas.\r\n\r\nEl estadio, que está ubicado en el centro de todas las sedes, fue reinaugurado en 2017 con capacidad para más de 40.000 personas sentadas. En su actual diseño, son característicos los dos arcos que sostienen sus techos y coronan su estructura simbolizando la unión de los fanáticos de todo el mundo. En este estadio ya se han jugado seis partidos de la fase de grupos –incluidas las victorias de Japón ante Alemania y España– y también será el escenario donde se juegue el partido por el tercer puesto el próximo 17 de diciembre.'),
(3, 'James Rodríguez estaría listo para jugar el próximo partido de Olympiacos', 'El colombiano estuvo presente en la última práctica del club griego y podría estar en el equipo titular para enfrentar al Standard Lieja', 'Todo parece indicar que James Rodríguez está listo para volver al campo de juego. El volante de la selección Colombia estuvo de baja en el equipo por algunos días tras haber tenido un resfriado, esto le impidió estar presente en el pasado encuentro de Olympiacos ante Huddersfield Town en España. El colombiano apunta a estar listo para el próximo duelo amistoso ante el Standard Lieja.'),
(6, 'MODIFICADO', '1', '2');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
CREATE TABLE IF NOT EXISTS `usuarios` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `usuario` varchar(250) NOT NULL,
  `password` varchar(250) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `usuario`, `password`) VALUES
(1, 'lucas', '81dc9bdb52d04dc20036dbd8313ed055'),
(2, 'verdino', '81dc9bdb52d04dc20036dbd8313ed055');
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
