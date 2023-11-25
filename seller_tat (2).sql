-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 20-09-2023 a las 01:55:50
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `seller_tat`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `bodegas`
--

CREATE TABLE `bodegas` (
  `Id_bodega` varchar(10) NOT NULL,
  `Bodega` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `bodegas`
--

INSERT INTO `bodegas` (`Id_bodega`, `Bodega`) VALUES
('B001', 'COMALI'),
('B002', 'FRIS'),
('B003', 'CALYPSO'),
('B004', 'SIBERIA');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Nit_cliente` varchar(15) NOT NULL,
  `Nombre` varchar(30) DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  `Zona` varchar(10) DEFAULT NULL,
  `Contacto` varchar(30) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  `descuento` varchar(5) DEFAULT NULL,
  `Fecha_ingreso` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `clientes`
--

INSERT INTO `clientes` (`Nit_cliente`, `Nombre`, `Direccion`, `Zona`, `Contacto`, `Celular`, `descuento`, `Fecha_ingreso`) VALUES
('101', 'MELAZA BURGUER', 'DG 16F BIS 105B 14', 'B01', 'CARMEN RIA?O', '3145843899', 'T01', '2022-07-28'),
('102', 'WILMAR SUPERMERCADO', 'DG 16F BIS 105 18', 'B02', 'CARLOS', '3176683607', 'T02', '2016-01-01'),
('103', 'RICO BROASTED YEFER\'S', 'CR 111 A 16 H 39', 'B02', 'YESID SEGURA LEON', '3132135794', 'T01', '2016-01-01'),
('104', 'PIZZAS MAFE', 'CR 111 A 16 H 53', 'B02', 'CESAR LOPEZ', '3124424663', 'T01', '2012-12-06'),
('105', 'J.N ALIMENTOS Y VARIEDADES', 'CR 112 16 J 20', 'B02', 'JORGE SEPULVEDA', '3229451910', 'T03', '2019-02-04'),
('106', 'VERDURAS CONSUMO DIRECTO', 'CR 112 16 J 05', 'B02', 'VICTOR BELTRAN', '3123569209', 'T04', '2016-01-01');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `descuentos`
--

CREATE TABLE `descuentos` (
  `Id_desc` varchar(5) NOT NULL,
  `categoria` varchar(15) DEFAULT NULL,
  `valor` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `descuentos`
--

INSERT INTO `descuentos` (`Id_desc`, `categoria`, `valor`) VALUES
('T01', 'JUNIOR', 0),
('T02', 'ESPECIAL', 0),
('T03', 'PREMIUM', 0),
('T04', 'PLATINO', 0),
('T05', 'ORO', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `factura`
--

CREATE TABLE `factura` (
  `Id_factura` varchar(10) NOT NULL,
  `fecha` date DEFAULT NULL,
  `Nit_cliente` varchar(15) DEFAULT NULL,
  `tarifa` varchar(5) DEFAULT NULL,
  `Id_producto` varchar(10) DEFAULT NULL,
  `Cant` int(5) DEFAULT NULL,
  `valor_unt` int(15) DEFAULT NULL,
  `total` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `factura`
--

INSERT INTO `factura` (`Id_factura`, `fecha`, `Nit_cliente`, `tarifa`, `Id_producto`, `Cant`, `valor_unt`, `total`) VALUES
('FV001', '0000-00-00', '101', 'T01', 'PACAC', 10, 5500, 55000),
('FV002', '0000-00-00', '105', 'T01', 'MAKC', 12, 12000, 144000),
('FV003', '0000-00-00', '101', 'T01', 'PACAC', 5, 5500, 27500),
('FV004', '0000-00-00', '103', 'T02', 'MALS', 8, 18200, 145600),
('FV005', '0000-00-00', '102', 'T02', 'PACAKR', 10, 25000, 250000),
('FV006', '0000-00-00', '104', 'T02', 'MALS', 14, 18200, 254800),
('FV007', '0000-00-00', '101', 'T02', 'PACAC', 8, 5500, 44000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `Id_producto` varchar(10) NOT NULL,
  `Descripcion` varchar(30) DEFAULT NULL,
  `Bodega` varchar(10) DEFAULT NULL,
  `stock` int(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `inventario`
--

INSERT INTO `inventario` (`Id_producto`, `Descripcion`, `Bodega`, `stock`) VALUES
('CRI150', 'PAPA CRIOLLA PORCIONADA 20 X 1', 'B001', 5),
('CRI200', 'PAPA CRIOLLA PORCIONADA 20 X 2', 'B001', 5),
('CRIK', 'PAPA CRIOLLA 1000 GR COMALI', 'B001', 5),
('CRIL', 'PAPA CRIOLLA 500 GR COMALI', 'B001', 5),
('MAKC', 'MAIZ TIERNO DULCE X 1000 GR CO', 'B001', 10),
('MALC', 'MAIZ TIERNO DULCE X 500 GR COM', 'B001', 10),
('MALS', 'MAIZ TIERNO DULCE X 500 GR SIB', 'B004', 10),
('PACA16', 'PAPA CABELLO DE ANGEL TRADICIO', 'B003', 20),
('PACAC', 'PAPA CASQUITOS X 2500 GR FARM ', 'B001', 20),
('PACAF', 'PAPA CASQUITOS X 1000 GR FROZE', 'B002', 20),
('PACAK', 'PAPA CABELLO DE ANGEL X 1000 G', 'B001', 20),
('PACAKR', 'PAPA CABELLO DE ANGEL X 1000 G', 'B001', 20),
('PACAL', 'PAPA CABELLO DE ANGEL X 500 GR', 'B001', 20),
('PAPORCAL15', 'PAPA FRANCESA X 150 GR 20 PAQ ', 'B003', 30),
('PAPORFAR15', 'PAPA FRANCESA X 150 GR 20 PAQ ', 'B001', 30),
('PAPORFAR20', 'PAPA FRANCESA X 200 GR 20 PAQ ', 'B001', 30),
('PAPORFIN12', 'PAPA FRANCESA X 125 GR 20 PAQ ', 'B001', 30),
('PAPORFRO15', 'PAPA FRANCESA X 150 GR 20 PAQ ', 'B002', 30),
('PFAR', 'PAPA FRANCESA X 2500 GR FARM F', 'B001', 20),
('PFIN', 'PAPA FRANCESA X 2500 GR FINEST', 'B001', 20),
('PRIZC', 'PAPA FRANCESA X 2500 GR RIZADA', 'B001', 20);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `orden_de_compra`
--

CREATE TABLE `orden_de_compra` (
  `Id_compra` varchar(10) NOT NULL,
  `Fecha` date DEFAULT NULL,
  `nit_proveedor` varchar(15) DEFAULT NULL,
  `Id_producto` varchar(10) DEFAULT NULL,
  `Cant` int(5) DEFAULT NULL,
  `Valor_unt` int(15) DEFAULT NULL,
  `Total` int(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `proveedores`
--

CREATE TABLE `proveedores` (
  `Nit_proveedor` varchar(15) NOT NULL,
  `Razon_social` varchar(30) DEFAULT NULL,
  `Contacto` varchar(50) DEFAULT NULL,
  `Telefono` varchar(15) DEFAULT NULL,
  `Celular` varchar(15) DEFAULT NULL,
  `Direccion` varchar(30) DEFAULT NULL,
  `Email` varchar(30) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `proveedores`
--

INSERT INTO `proveedores` (`Nit_proveedor`, `Razon_social`, `Contacto`, `Telefono`, `Celular`, `Direccion`, `Email`) VALUES
('P01', 'FRIES FACTORY COLOMBIA', 'GLORIA PRIETO', '2101599', '3214268582', 'CR 55 78 36', 'VENTAS@FRIESFACTORY.CO'),
('P02', 'COMERCIALIZADORA DE ALIMENTOS', 'ADRIANA RENDONDO', '3863679', '3103250201', 'CR 69 P 64 D 45', 'COMALISAS@OUTLOOK.ES'),
('P03', 'ANTONIO CAICEDO', 'RUBI', '3124355970', '3158342125', 'FONTIBON', 'ANTONI@GMAIL.COM');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tipo_usuario`
--

CREATE TABLE `tipo_usuario` (
  `Id_tipo` varchar(5) NOT NULL,
  `Nivel` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `tipo_usuario`
--

INSERT INTO `tipo_usuario` (`Id_tipo`, `Nivel`) VALUES
('TU01', 'ADMINISTRADOR'),
('TU02', 'COMERCIAL'),
('TU03', 'MOTORIZADO');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` varchar(15) NOT NULL,
  `Nombre` varchar(20) DEFAULT NULL,
  `Cargo` varchar(15) DEFAULT NULL,
  `Tipo` varchar(5) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `zona`
--

CREATE TABLE `zona` (
  `Id_zona` varchar(5) NOT NULL,
  `zona` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `zona`
--

INSERT INTO `zona` (`Id_zona`, `zona`) VALUES
('B01', 'CENTENARIO'),
('B02', 'BAHIA SOLANO'),
('B03', 'FLANDES'),
('B04', 'EL PEDREGAL'),
('B05', 'GIRALDA');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `bodegas`
--
ALTER TABLE `bodegas`
  ADD PRIMARY KEY (`Id_bodega`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Nit_cliente`),
  ADD KEY `Zona` (`Zona`),
  ADD KEY `descuento` (`descuento`);

--
-- Indices de la tabla `descuentos`
--
ALTER TABLE `descuentos`
  ADD PRIMARY KEY (`Id_desc`);

--
-- Indices de la tabla `factura`
--
ALTER TABLE `factura`
  ADD PRIMARY KEY (`Id_factura`),
  ADD KEY `Nit_cliente` (`Nit_cliente`),
  ADD KEY `tarifa` (`tarifa`),
  ADD KEY `Id_producto` (`Id_producto`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`Id_producto`),
  ADD KEY `Bodega` (`Bodega`);

--
-- Indices de la tabla `orden_de_compra`
--
ALTER TABLE `orden_de_compra`
  ADD PRIMARY KEY (`Id_compra`),
  ADD KEY `nit_proveedor` (`nit_proveedor`),
  ADD KEY `Id_producto` (`Id_producto`);

--
-- Indices de la tabla `proveedores`
--
ALTER TABLE `proveedores`
  ADD PRIMARY KEY (`Nit_proveedor`);

--
-- Indices de la tabla `tipo_usuario`
--
ALTER TABLE `tipo_usuario`
  ADD PRIMARY KEY (`Id_tipo`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`),
  ADD KEY `Tipo` (`Tipo`);

--
-- Indices de la tabla `zona`
--
ALTER TABLE `zona`
  ADD PRIMARY KEY (`Id_zona`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_1` FOREIGN KEY (`Zona`) REFERENCES `zona` (`Id_zona`),
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`descuento`) REFERENCES `descuentos` (`Id_desc`);

--
-- Filtros para la tabla `factura`
--
ALTER TABLE `factura`
  ADD CONSTRAINT `factura_ibfk_1` FOREIGN KEY (`Nit_cliente`) REFERENCES `clientes` (`Nit_cliente`),
  ADD CONSTRAINT `factura_ibfk_2` FOREIGN KEY (`tarifa`) REFERENCES `descuentos` (`Id_desc`),
  ADD CONSTRAINT `factura_ibfk_3` FOREIGN KEY (`Id_producto`) REFERENCES `inventario` (`Id_producto`);

--
-- Filtros para la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD CONSTRAINT `inventario_ibfk_1` FOREIGN KEY (`Bodega`) REFERENCES `bodegas` (`Id_bodega`);

--
-- Filtros para la tabla `orden_de_compra`
--
ALTER TABLE `orden_de_compra`
  ADD CONSTRAINT `orden_de_compra_ibfk_1` FOREIGN KEY (`nit_proveedor`) REFERENCES `proveedores` (`Nit_proveedor`),
  ADD CONSTRAINT `orden_de_compra_ibfk_2` FOREIGN KEY (`Id_producto`) REFERENCES `inventario` (`Id_producto`);

--
-- Filtros para la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD CONSTRAINT `usuarios_ibfk_1` FOREIGN KEY (`Tipo`) REFERENCES `tipo_usuario` (`Id_tipo`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
