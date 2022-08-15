-- phpMyAdmin SQL Dump
-- version 4.9.10
-- https://www.phpmyadmin.net/
--
-- Servidor: db5009043527.hosting-data.io
-- Tiempo de generación: 15-08-2022 a las 13:09:53
-- Versión del servidor: 10.5.15-MariaDB-1:10.5.15+maria~buster-log
-- Versión de PHP: 7.0.33-0+deb9u12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dbs7638102`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bebida`
--

CREATE TABLE `bebida` (
  `idBebida` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `bebida`
--

INSERT INTO `bebida` (`idBebida`, `nombre`, `precio`, `imagen`) VALUES
(1, 'Coca Cola 600 ml', 18, 'https://cdn.shopify.com/s/files/1/0279/8151/2798/products/RE0015_761x.jpg?v=1600970250'),
(2, 'Pepsi 600 ml', 16, 'https://las.comercialtrevino.com/wp-content/uploads/2021/07/3653.jpg'),
(3, 'Fanta 600 ml', 20, 'https://res.cloudinary.com/walmart-labs/image/upload/w_960,dpr_auto,f_auto,q_auto:best/gr/images/product-images/img_large/00750105530382L.jpg'),
(4, 'Sidral Mundet 600 ml', 20, 'https://media.justo.mx/products/10068_Refresco-Sidral-Mundet-Manzana-600ml_1.jpg'),
(5, 'Coca Cola 2 L', 31, 'http://cdn.shopify.com/s/files/1/0621/2953/7254/products/Refresco-Coca-Cola-1.5-Lt.jpg?v=1645555725\r\n'),
(6, 'Fanta 2 l', 30, 'https://ask4deliveryloscabos.com/es/wp-content/uploads/2021/08/7501055303878-00-CH1200Wx1200H.jpg');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `botana`
--

CREATE TABLE `botana` (
  `idBotana` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `descripcion` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `botana`
--

INSERT INTO `botana` (`idBotana`, `nombre`, `precio`, `imagen`, `descripcion`) VALUES
(1, 'Papas fritas', 25, 'https://www.recetas360.com/wp-content/uploads/2019/07/como-hacer-papas-fritas-de-mcdonals.jpg', 'Deliciosa orden de papas para acompañar tus alimentos'),
(2, 'Tartaletas', 20, 'https://dulcesdiabeticos.com/wp-content/uploads/2015/09/tartaletas-de-crema-y-fresas-sin-azucar.jpg', 'Ricas tartaletas para saborear algo dulce y delicioso.'),
(3, 'Rebanada de pastel', 20, 'https://s.cornershopapp.com/product-images/4452929.jpg?versionId=yG8fFH_PftLBWbhA3gggkVD373SAwncG', 'Disfruta de una rebanada de pastel de diferentes sabores.'),
(4, 'Gelatinas', 15, 'https://images.aws.nestle.recipes/original/bebad5cab525099b966c866e5e82ab47_b7ec56785e455cad0c214fc254775de9_GELATINA_MOSAICO.jpg', 'Disfruta de un toque mágico de gelatinas de mosaicos.');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `comida`
--

CREATE TABLE `comida` (
  `idComida` int(11) NOT NULL,
  `nombre` varchar(100) NOT NULL,
  `precio` int(11) NOT NULL,
  `imagen` varchar(255) NOT NULL,
  `descripcion` varchar(500) NOT NULL,
  `ingredientes` varchar(500) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `comida`
--

INSERT INTO `comida` (`idComida`, `nombre`, `precio`, `imagen`, `descripcion`, `ingredientes`) VALUES
(1, 'Torta de Pastor', 35, 'https://cdn2.cocinadelirante.com/sites/default/files/styles/gallerie/public/images/2019/09/receta-carne-al-pastor-para-tortas.jpg', 'Deliciosa torta de pastor con carne 100% de pastor ', 'Pan para torta, Piña fileteada, Queso manchego, Cebolla, Cilantro y Carne al Pastor.'),
(2, 'Torta de Milanesa', 25, 'https://cdn7.kiwilimon.com/brightcove/6624/6624.jpg', 'Deliciosa torta de milanesa preparada con nuestra receta.', ''),
(3, 'Torta de Chorizo', 25, 'https://www.pueblosmexico.com.mx/IMG/arton31774.jpg', 'Rica torta al estilo mexicano preparado al calor de las brazas', ''),
(4, 'Hamburguesa Hawaiana', 55, 'https://bakeitwithlove.com/wp-content/uploads/2016/05/Teriyaki-Cheeseburger-lg-sq.jpg', 'Para los amantes de lo saludable deliciosa torta hawaiana.', ''),
(5, 'Pizza Hawaiana', 120, 'https://images.hola.com/imagenes/cocina/recetas/20200120158504/pizza-hawaiana-o-pizza-tropical/0-770-827/pizza-hawaiana-m.jpg\r\n', 'Para compartir con los amigos y vivir el momento', ''),
(6, 'Enfrijoladas', 55, 'https://images.aws.nestle.recipes/resized/C26B7076-811C-6377-B9D8-FF0000673B69-500x346-b-principal_708_600.png\r\n', 'Nada mejor que una enfrijlodas para empezar el día', ''),
(7, 'Tacos dorados', 35, 'https://assets.unileversolutions.com/recipes-v2/235924.png', 'Deliciosos y crujientes tacos dorados para degustar con amigos.', ''),
(8, 'Tlayuda ', 50, 'https://eadn-wc04-6974588.nxedge.io/wp-content/uploads/2022/05/Tlayuda-Marcos-Castillo-e1652445509465.png', 'El mero sabor de Oaxaca deliciosa tlayuda con la carne que tu quieras', '');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE `roles` (
  `id_rol` int(11) NOT NULL,
  `rol` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id_rol`, `rol`) VALUES
(1, 'usuario'),
(2, 'administrador');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id_user` int(1) NOT NULL,
  `username` varchar(50) DEFAULT NULL,
  `password` varchar(100) DEFAULT NULL,
  `estado` int(1) DEFAULT NULL,
  `edad` int(3) NOT NULL,
  `apellidos` varchar(50) NOT NULL,
  `nombres` varchar(50) NOT NULL,
  `telefono` varchar(10) NOT NULL,
  `codigo` varchar(6) NOT NULL,
  `id_rol` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id_user`, `username`, `password`, `estado`, `edad`, `apellidos`, `nombres`, `telefono`, `codigo`, `id_rol`) VALUES
(1, 'diego@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 1, 25, 'Braquetes López', 'Edgar Rodolfo', '9516147039', 'IZVC05', 2),
(19, 'pollo@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 1, 20, 'Hernandez Lopez', 'Diego Alejandro', '9511976397', 'web123', 1),
(20, 'killer@gmail.com', 'e807f1fcf82d132f9bb018ca6738a19f', 1, 20, 'Killer', 'Killer', '9516147039', 'web123', 1),
(21, 'alexisrios859', 'e807f1fcf82d132f9bb018ca6738a19f', 1, 20, 'Rios', 'Alexis', '9511750690', 'web123', 1),
(22, 'alfredo859', '25f9e794323b453885f5181f1b624d0b', 1, 25, 'Vicente', 'Alfredo', '258258', 'web123', 1),
(23, 'josevicente', 'e807f1fcf82d132f9bb018ca6738a19f', 1, 28, 'Vicente ', 'Jose', '951147147', 'web123', 1),
(24, 'josevicent@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 19, 'Vicente ', 'Jose ', '9512622549', 'web123', 1),
(25, 'eltiojasi31@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 21, 'Martinez', 'Jasiel', '9512622549', 'web123', 1),
(26, 'eltiojasi31@gmail.com', 'e10adc3949ba59abbe56e057f20f883e', 1, 21, 'Martinez', 'Jasiel', '9512622549', 'web123', 1),
(28, 'rene', '287d310bfd0a7b6fcaf9908e6fde2b05', 1, 21, 'García ', 'Rene', '9512164607', 'web123', 1),
(29, 'eltiojasi30@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 21, 'Martinez', 'Jasiel', '9512622549', 'web123', 1),
(30, 'eltiojasi32@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 21, 'Martinez ', '', '9512622549', 'web123', 1),
(31, 'eltiojasi33@gmail.com', '25f9e794323b453885f5181f1b624d0b', 1, 21, 'Martinez ', 'Jasiel', '9512622549', 'web123', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `venta`
--

CREATE TABLE `venta` (
  `idVenta` int(11) NOT NULL,
  `productos` text NOT NULL,
  `estado` int(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Volcado de datos para la tabla `venta`
--

INSERT INTO `venta` (`idVenta`, `productos`, `estado`) VALUES
(6, '1 Torta de Pastor, 2 Pepsi - 600 Mililitros, 1 Papas fritas, Detalles: dasdadasdadsdawd, Total a pagar: $302', 1),
(8, '2 Torta de Pastor, 2 Pepsi - 600 Mililitros, 1 Papas fritas, Detalles: dasdadasdadsdawd, Total a pagar: $302', 1),
(9, '3 Torta de Pastor, 2 Pepsi - 600 Mililitros, 1 Papas fritas, Detalles: dasdadasdadsdawd, Total a pagar: $302', 1),
(10, '7 Torta de Pastor, 2 Pepsi - 600 Mililitros, 1 Papas fritas, Detalles: dasdadasdadsdawd, Total a pagar: $302', 1),
(11, '7 Torta de Pastor, 2 Pepsi - 600 Mililitros, 1 Papas fritas, Detalles: dasdadasdadsdawd, Total a pagar: $302', 1),
(12, '7 Torta de Pastor, 2 Pepsi - 600 Mililitros, 1 Papas fritas, Detalles: dasdadasdadsdawd, Total a pagar: $302', 1),
(13, '7 Torta de Pastor, 2 Pepsi - 600 Mililitros, 1 Papas fritas, Detalles: dasdadasdadsdawd, Total a pagar: $302', 1),
(14, '7 Torta de Pastor, 2 Pepsi - 600 Mililitros, 1 Papas fritas, Detalles: dasdadasdadsdawd, Total a pagar: $302', 1),
(15, 'c4ca4238a0b923820dcc509a6f75849b, 1679091c5a880faf6fb5e6087eb1b2dc', 1),
(16, 'c4ca4238a0b923820dcc509a6f75849b, 1679091c5a880faf6fb5e6087eb1b2dc', 1),
(17, '1 Torta de Pastor, Detalles: La torta será sin mayonesa., Total a pagar: $35', 1),
(18, '6 Torta de Pastor, 3 Pepsi - 600 Mililitros, 6 Papas fritas, Detalles: Rodolfo Braquetes, Total a pagar: $408', 1),
(19, '5 Torta de Pastor, 4 Coca Cola 600 ml, 4 Tartaletas, Detalles: 1 torta sin cebolla1 torta sin tomate, Total a pagar: $327', 1),
(20, '1 Torta de Pastor, 1 Torta de Milanesa, 1 Coca Cola - 600 Mililitros, 1 Papas fritas, Detalles: , Total a pagar: $103', 1),
(21, '1 Torta de Pastor, 1 Torta de Milanesa, 1 Coca Cola - 600 Mililitros, 1 Papas fritas, Detalles: , Total a pagar: $103', 0),
(22, '1 Torta de Pastor, 1 Torta de Milanesa, 1 Coca Cola - 600 Mililitros, 1 Papas fritas, Detalles: , Total a pagar: $103', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bebida`
--
ALTER TABLE `bebida`
  ADD PRIMARY KEY (`idBebida`);

--
-- Indices de la tabla `botana`
--
ALTER TABLE `botana`
  ADD PRIMARY KEY (`idBotana`);

--
-- Indices de la tabla `comida`
--
ALTER TABLE `comida`
  ADD PRIMARY KEY (`idComida`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
  ADD PRIMARY KEY (`id_rol`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `idrol` (`id_rol`);

--
-- Indices de la tabla `venta`
--
ALTER TABLE `venta`
  ADD PRIMARY KEY (`idVenta`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `bebida`
--
ALTER TABLE `bebida`
  MODIFY `idBebida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT de la tabla `botana`
--
ALTER TABLE `botana`
  MODIFY `idBotana` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `comida`
--
ALTER TABLE `comida`
  MODIFY `idComida` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
  MODIFY `id_rol` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id_user` int(1) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;

--
-- AUTO_INCREMENT de la tabla `venta`
--
ALTER TABLE `venta`
  MODIFY `idVenta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=23;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `users`
--
ALTER TABLE `users`
  ADD CONSTRAINT `users_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `roles` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
