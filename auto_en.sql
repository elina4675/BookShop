-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 26, 2022 at 03:35 PM
-- Server version: 10.4.22-MariaDB
-- PHP Version: 8.1.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `auto_en`
--

-- --------------------------------------------------------

--
-- Table structure for table `bills`
--

CREATE TABLE `bills` (
  `nr` int(11) NOT NULL,
  `date` date NOT NULL,
  `sum` float NOT NULL,
  `fk_CONTRACTnumber` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `brands`
--

CREATE TABLE `brands` (
  `name` varchar(200) NOT NULL,
  `id_BRAND` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `brands`
--

INSERT INTO `brands` (`name`, `id_BRAND`) VALUES
('Audi', 2),
('Škoda', 3),
('BMW', 4),
('Renault', 5),
('Mercedes', 6),
('Volkswagen', 7),
('Citroën', 8),
('Toyota', 9),
('Peugeot', 10),
('Opel', 11),
('Chrysler', 12),
('Dodge', 13),
('Jeep', 14),
('Chevrolet', 15),
('Ford', 16),
('Nissan', 17),
('Honda', 18),
('Hyundai', 19),
('Mazda', 20),
('Suzuki', 21),
('Mitsubishi', 22),
('Subaru', 23),
('Lexus', 24),
('Fiat', 25),
('Seat', 26),
('Aston Martin', 27),
('Dodge', 28),
('Buick', 29),
('Bentley', 30),
('Kia', 31),
('GMC', 32),
('Cadillac', 33),
('Volvo', 34),
('Tesla', 35),
('Jaguar', 36),
('Saab', 37),
('Scania', 38),
('Porche', 39),
('Land Rover', 40),
('Lada', 41),
('Moskvitch', 42),
('AvtoVAZ', 43),
('Dacia', 44),
('Trabant', 45),
('UAZ', 46);

-- --------------------------------------------------------

--
-- Table structure for table `cars`
--

CREATE TABLE `cars` (
  `state_number` varchar(50) NOT NULL,
  `manufacturing_date` date NOT NULL,
  `milage` int(11) NOT NULL,
  `radio` tinyint(1) DEFAULT NULL,
  `music_player` tinyint(1) DEFAULT NULL,
  `conditioner` tinyint(1) DEFAULT NULL,
  `number_of_seats` int(11) NOT NULL,
  `registration_date` date NOT NULL,
  `value` float DEFAULT NULL,
  `gear_box` int(11) NOT NULL,
  `fuel_type` int(11) NOT NULL,
  `car_body_type` int(11) NOT NULL,
  `luggage_size` int(11) NOT NULL,
  `state` int(11) NOT NULL,
  `id_CAR` int(11) NOT NULL,
  `fk_MODELid_MODEL` int(11) NOT NULL,
  `fk_CAR_GROUPid_CAR_GROUP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cars`
--

INSERT INTO `cars` (`state_number`, `manufacturing_date`, `milage`, `radio`, `music_player`, `conditioner`, `number_of_seats`, `registration_date`, `value`, `gear_box`, `fuel_type`, `car_body_type`, `luggage_size`, `state`, `id_CAR`, `fk_MODELid_MODEL`, `fk_CAR_GROUPid_CAR_GROUP`) VALUES
('ELK456', '2022-08-18', 1321313, 1, 1, 0, 4564, '2022-02-17', 12354700, 1, 2, 2, 4, 1, 0, 2, 0),
('BJD564', '2022-02-23', 4564, 0, 0, 0, 4, '2022-02-17', 215, 1, 2, 1, 2, 3, 1, 2, 0),
('DJM183', '2002-11-04', 10500, 1, 1, 1, 4, '2005-06-26', 1200, 1, 1, 2, 5, 1, 2, 3, 0);

-- --------------------------------------------------------

--
-- Table structure for table `car_body_types`
--

CREATE TABLE `car_body_types` (
  `id_CAR_BODY_TYPES` int(11) NOT NULL,
  `name` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_body_types`
--

INSERT INTO `car_body_types` (`id_CAR_BODY_TYPES`, `name`) VALUES
(1, 'Dedan'),
(2, 'Hatchback'),
(3, 'Wagon'),
(4, 'SUV'),
(5, 'Pickup'),
(6, 'Coupe'),
(7, 'Cabriolet');

-- --------------------------------------------------------

--
-- Table structure for table `car_groups`
--

CREATE TABLE `car_groups` (
  `name` varchar(255) NOT NULL,
  `id_CAR_GROUP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_groups`
--

INSERT INTO `car_groups` (`name`, `id_CAR_GROUP`) VALUES
('BMW', 1);

-- --------------------------------------------------------

--
-- Table structure for table `car_states`
--

CREATE TABLE `car_states` (
  `id_CAR_STATE` int(11) NOT NULL,
  `name` char(14) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `car_states`
--

INSERT INTO `car_states` (`id_CAR_STATE`, `name`) VALUES
(1, 'Availabe'),
(2, 'Rented'),
(3, 'In_maintenance'),
(4, 'In_checkup');

-- --------------------------------------------------------

--
-- Table structure for table `cities`
--

CREATE TABLE `cities` (
  `name` varchar(250) NOT NULL,
  `id_CITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `cities`
--

INSERT INTO `cities` (`name`, `id_CITY`) VALUES
('Kaunas', 1),
('Vilnius', 2);

-- --------------------------------------------------------

--
-- Table structure for table `contracts`
--

CREATE TABLE `contracts` (
  `number` int(11) NOT NULL,
  `contract_date` date NOT NULL,
  `rent_date_time` datetime NOT NULL,
  `return_date_time` datetime NOT NULL,
  `factual_return_date_time` datetime NOT NULL,
  `strating_milage` int(11) NOT NULL,
  `return_milage` int(11) NOT NULL,
  `price` float NOT NULL,
  `gas_amount_before_rent` float NOT NULL,
  `gar_amount_after_return` float NOT NULL,
  `state` int(11) NOT NULL,
  `fk_EMPLOYEEemploee_id` int(11) NOT NULL,
  `fk_CARid_CAR` int(11) NOT NULL,
  `fk_PARKING_LOTid_PARKING_LOT` int(11) NOT NULL,
  `fk_CUSTOMERpasport_id` int(11) NOT NULL,
  `fk_PARKING_LOTid_PARKING_LOT1` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contracts`
--

INSERT INTO `contracts` (`number`, `contract_date`, `rent_date_time`, `return_date_time`, `factual_return_date_time`, `strating_milage`, `return_milage`, `price`, `gas_amount_before_rent`, `gar_amount_after_return`, `state`, `fk_EMPLOYEEemploee_id`, `fk_CARid_CAR`, `fk_PARKING_LOTid_PARKING_LOT`, `fk_CUSTOMERpasport_id`, `fk_PARKING_LOTid_PARKING_LOT1`) VALUES
(11, '2022-02-05', '2022-02-12 17:05:16', '2022-02-05 17:05:20', '2022-01-31 17:05:21', 12, 1213, 12, 123, 454, 1, 554725, 0, 1, 393361456, 2),
(222, '2025-03-25', '2022-02-12 14:21:45', '2022-02-12 14:21:48', '2022-02-05 14:21:50', 123123, 1, 1, 456456, 23, 1, 554725, 0, 1, 372186452, 2),
(12313, '2022-02-04', '2022-03-01 17:06:05', '2022-03-05 17:06:08', '2022-02-12 17:06:09', 1231, 1231, 12, 4645, 4564, 1, 331716, 1, 2, 387548435, 1),
(454564, '2022-03-25', '2022-03-19 14:05:06', '2022-02-19 14:05:08', '2022-02-10 14:05:09', 11, 1, 12, 1, 1, 1, 554726, 0, 1, 345987216, 2),
(1234578, '2022-06-25', '2022-02-05 12:52:57', '2022-02-12 12:53:00', '2022-02-24 12:53:03', 1213, 7897, 211, 456456, 456465, 1, 554726, 1, 1, 381946257, 2),
(5445646, '2022-03-08', '2022-02-12 14:14:47', '2022-02-11 14:14:49', '2022-02-05 14:14:50', 456, 546, 213, 123, 46, 1, 554727, 1, 1, 394562175, 2),
(123131354, '2024-04-05', '2022-02-05 14:17:21', '2022-02-05 14:17:24', '2022-02-12 14:17:26', 213, 67, 5464, 456, 78, 1, 554728, 0, 1, 396158745, 2);

-- --------------------------------------------------------

--
-- Table structure for table `contract_states`
--

CREATE TABLE `contract_states` (
  `id_CONTRACT_STATES` int(11) NOT NULL,
  `name` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `contract_states`
--

INSERT INTO `contract_states` (`id_CONTRACT_STATES`, `name`) VALUES
(1, 'Ordered'),
(2, 'Confirmed'),
(3, 'Terminated'),
(4, 'Finished');

-- --------------------------------------------------------

--
-- Table structure for table `customers`
--

CREATE TABLE `customers` (
  `pasport_id` int(11) NOT NULL,
  `name` varchar(255) NOT NULL,
  `surname` varchar(255) NOT NULL,
  `birth_date` date DEFAULT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `customers`
--

INSERT INTO `customers` (`pasport_id`, `name`, `surname`, `birth_date`, `phone_number`, `email`) VALUES
(345987216, 'Jeremy', 'Miller', '1975-06-13', '873542984', 'jamie975@hotmail.co.uk'),
(372186452, 'George', 'Williams', '2001-03-15', '869761854', 'hrongus@ktu.lt'),
(381946257, 'Josh', 'Davis', '2000-01-02', '864593512', 'j.davis@gmail.com'),
(387548435, 'John', 'Smith', '1977-10-19', '861194536', 'scroingus@ktu.lt'),
(393361456, 'James', 'Brown', '1987-02-24', '8846468468', 'bingus@ktu.lt'),
(394562175, 'Matt', 'Parker', '1983-11-12', '869421444', 'contact@mattparker.com'),
(396158745, 'Tom', 'Jones', '1996-10-04', '869712019', 'tomjones@yahoo.com');

-- --------------------------------------------------------

--
-- Table structure for table `employees`
--

CREATE TABLE `employees` (
  `name` varchar(250) NOT NULL,
  `surname` varchar(250) NOT NULL,
  `employee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `employees`
--

INSERT INTO `employees` (`name`, `surname`, `employee_id`) VALUES
('Henry J.', 'Waternoose', 331716),
('James P.', 'Sullivan', 554725),
('Michael', 'Wazowski', 554726),
('Randall', 'Boggs', 554727),
('George', 'Sanderson', 554728);

-- --------------------------------------------------------

--
-- Table structure for table `extra_fees`
--

CREATE TABLE `extra_fees` (
  `price` float NOT NULL,
  `amount` int(11) NOT NULL,
  `fk_FEEid_FEE` int(11) NOT NULL,
  `fk_CONTRACTnumber` int(11) NOT NULL,
  `Id_EXTRA_FEE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fees`
--

CREATE TABLE `fees` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id_FEE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `fuel_types`
--

CREATE TABLE `fuel_types` (
  `id_FUEL_TYPES` int(11) NOT NULL,
  `name` char(17) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `fuel_types`
--

INSERT INTO `fuel_types` (`id_FUEL_TYPES`, `name`) VALUES
(1, 'Gasoline'),
(2, 'Gasoline_Electirc'),
(3, 'Diesel'),
(4, 'Gas'),
(5, 'Electirc');

-- --------------------------------------------------------

--
-- Table structure for table `gear_box_types`
--

CREATE TABLE `gear_box_types` (
  `id_GEAR_BOX_TYPE` int(11) NOT NULL,
  `name` char(9) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `gear_box_types`
--

INSERT INTO `gear_box_types` (`id_GEAR_BOX_TYPE`, `name`) VALUES
(1, 'Automatic'),
(2, 'Manual');

-- --------------------------------------------------------

--
-- Table structure for table `interval_influences`
--

CREATE TABLE `interval_influences` (
  `minimum_value` int(11) NOT NULL,
  `maximum_value` int(11) NOT NULL,
  `coeficient` float NOT NULL,
  `fk_PARAMETERid_PARAMETER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `luggages`
--

CREATE TABLE `luggages` (
  `id_LUGGAGE` int(11) NOT NULL,
  `name` char(28) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `luggages`
--

INSERT INTO `luggages` (`id_LUGGAGE`, `name`) VALUES
(1, '1_small_suitcases'),
(2, '2_small_suitcases'),
(3, '1_large_suitcases'),
(4, '2_large_suitcases'),
(5, '1_small_and_1_large_suitcase'),
(6, '3_large_suitcases'),
(7, '4_large_suitcases');

-- --------------------------------------------------------

--
-- Table structure for table `models`
--

CREATE TABLE `models` (
  `name` varchar(200) NOT NULL,
  `id_MODEL` int(11) NOT NULL,
  `fk_BRANDid_BRAND` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `models`
--

INSERT INTO `models` (`name`, `id_MODEL`, `fk_BRANDid_BRAND`) VALUES
('A4', 1, 2),
('M5', 2, 4),
('C3', 3, 8),
('C4', 4, 8),
('C5', 5, 8),
('Laguna', 6, 5),
('Duster', 7, 5),
('Triber', 8, 5),
('Kiger', 9, 5),
('KWID', 10, 5),
('A3', 11, 2),
('A5', 12, 2),
('A6', 13, 2),
('A7', 14, 2),
('A8', 15, 2),
('TT', 16, 2),
('R8', 17, 2),
('Octavia', 18, 3),
('Corolla', 19, 9),
('Camry', 20, 9),
('Highlander', 21, 9),
('Yaris', 22, 9),
('Fortuner', 23, 9),
('Astra', 24, 11),
('Challenger', 25, 13),
('Viper', 26, 13),
('Charger', 27, 13),
('Mustang', 28, 16),
('Focus', 29, 16),
('Fiesta', 30, 16),
('Raptor', 31, 16),
('Explorer', 32, 16),
('Ranger', 33, 16),
('Escape', 34, 16),
('Swift', 35, 21),
('Impreza', 36, 23),
('Mirage', 37, 22),
('Lancer', 38, 22),
('Outlander', 39, 22),
('Model 3', 40, 35),
('Model S', 41, 35),
('Model X', 42, 35),
('Roadster', 43, 35),
('Cybertruck', 44, 35);

-- --------------------------------------------------------

--
-- Table structure for table `parameters`
--

CREATE TABLE `parameters` (
  `name` varchar(255) NOT NULL,
  `type` varchar(255) NOT NULL,
  `id_PARAMETER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `parking_lots`
--

CREATE TABLE `parking_lots` (
  `name` varchar(250) NOT NULL,
  `address` varchar(200) NOT NULL,
  `id_PARKING_LOT` int(11) NOT NULL,
  `fk_CITYid_CITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `parking_lots`
--

INSERT INTO `parking_lots` (`name`, `address`, `id_PARKING_LOT`, `fk_CITYid_CITY`) VALUES
('Kauno Akropolio aikstele', 'Kauno g. 1', 1, 1),
('Vilniaus Akropolio aikstele', 'Vilnius 1 g.', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `payments`
--

CREATE TABLE `payments` (
  `date` date NOT NULL,
  `sum` float NOT NULL,
  `id_PAYMENT` int(11) NOT NULL,
  `fk_CUSTOMERpasport_id` int(11) NOT NULL,
  `fk_BILLnr` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rental_offices`
--

CREATE TABLE `rental_offices` (
  `name` varchar(200) NOT NULL,
  `address` varchar(255) NOT NULL,
  `phone_number` varchar(50) DEFAULT NULL,
  `email` varchar(255) NOT NULL,
  `id_RENTAL_OFFICE` int(11) NOT NULL,
  `fk_RENTAL_OFFICEid_RENTAL_OFFICE` int(11) NOT NULL,
  `fk_CITYid_CITY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `rent_fees`
--

CREATE TABLE `rent_fees` (
  `rate` float NOT NULL,
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `fk_CAR_GROUPid_CAR_GROUP` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `rent_fees`
--

INSERT INTO `rent_fees` (`rate`, `valid_from`, `valid_to`, `fk_CAR_GROUPid_CAR_GROUP`) VALUES
(12, '2022-02-24', '2022-02-26', 1);

-- --------------------------------------------------------

--
-- Table structure for table `selected_services`
--

CREATE TABLE `selected_services` (
  `amount` int(11) NOT NULL,
  `price` float NOT NULL,
  `fk_SERVICE_PRICEvalid_from` date NOT NULL,
  `fk_CONTRACTnumber` int(11) NOT NULL,
  `fk_ID_SERVICE` int(11) NOT NULL,
  `Id_SELECTED_SERVICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `selected_services`
--

INSERT INTO `selected_services` (`amount`, `price`, `fk_SERVICE_PRICEvalid_from`, `fk_CONTRACTnumber`, `fk_ID_SERVICE`, `Id_SELECTED_SERVICE`) VALUES
(1, 1, '2012-02-02', 5445646, 1, 1),
(45, 213, '2012-01-01', 11, 2, 3),
(65, 14, '2012-01-04', 11, 2, 4),
(2, 1, '2012-02-02', 222, 1, 15),
(1, 213, '2012-01-01', 222, 2, 16),
(4, 2, '2012-03-02', 5445646, 1, 17),
(1, 1, '2012-02-02', 123131354, 1, 18),
(2, 14, '2012-01-04', 123131354, 2, 19),
(3, 213, '2012-01-01', 123131354, 2, 20),
(4, 213, '2012-01-01', 123131354, 2, 21);

-- --------------------------------------------------------

--
-- Table structure for table `services`
--

CREATE TABLE `services` (
  `name` varchar(255) NOT NULL,
  `description` varchar(255) DEFAULT NULL,
  `id_SERVICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `services`
--

INSERT INTO `services` (`name`, `description`, `id_SERVICE`) VALUES
('GPS', 'A TomTom GPS system will be mounted to the dashboard', 1),
('GO PRO', 'Additional service of renting a GO PRO camera mounted to the dashboard', 2),
('Child seat', 'A child seat will be added to the back of the car', 4),
('Roof rack', 'A roof top luggage carrier will be mounted on top of the car', 5);

-- --------------------------------------------------------

--
-- Table structure for table `service_prices`
--

CREATE TABLE `service_prices` (
  `valid_from` date NOT NULL,
  `valid_to` date NOT NULL,
  `price` float NOT NULL,
  `fk_SERVICEid_SERVICE` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `service_prices`
--

INSERT INTO `service_prices` (`valid_from`, `valid_to`, `price`, `fk_SERVICEid_SERVICE`) VALUES
('1993-06-06', '0000-00-00', 21, 4),
('2012-01-01', '0000-00-00', 213, 2),
('2012-01-04', '0000-00-00', 14, 2),
('2012-02-02', '0000-00-00', 1, 1),
('2012-03-02', '0000-00-00', 2, 1);

-- --------------------------------------------------------

--
-- Table structure for table `supervisors`
--

CREATE TABLE `supervisors` (
  `fk_PARKING_LOTid_PARKING_LOT` int(11) NOT NULL,
  `fk_EMPLOYEEemploee_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Table structure for table `value_influences`
--

CREATE TABLE `value_influences` (
  `value` int(11) NOT NULL,
  `coeficient` float NOT NULL,
  `fk_PARAMETERid_PARAMETER` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bills`
--
ALTER TABLE `bills`
  ADD PRIMARY KEY (`nr`),
  ADD KEY `billed_for` (`fk_CONTRACTnumber`);

--
-- Indexes for table `brands`
--
ALTER TABLE `brands`
  ADD PRIMARY KEY (`id_BRAND`);

--
-- Indexes for table `cars`
--
ALTER TABLE `cars`
  ADD PRIMARY KEY (`id_CAR`),
  ADD KEY `gear_box` (`gear_box`),
  ADD KEY `fuel_type` (`fuel_type`),
  ADD KEY `car_body_type` (`car_body_type`),
  ADD KEY `luggage_size` (`luggage_size`),
  ADD KEY `state` (`state`),
  ADD KEY `are_part_of` (`fk_CAR_GROUPid_CAR_GROUP`),
  ADD KEY `are_of` (`fk_MODELid_MODEL`);

--
-- Indexes for table `car_body_types`
--
ALTER TABLE `car_body_types`
  ADD PRIMARY KEY (`id_CAR_BODY_TYPES`);

--
-- Indexes for table `car_groups`
--
ALTER TABLE `car_groups`
  ADD PRIMARY KEY (`id_CAR_GROUP`);

--
-- Indexes for table `car_states`
--
ALTER TABLE `car_states`
  ADD PRIMARY KEY (`id_CAR_STATE`);

--
-- Indexes for table `cities`
--
ALTER TABLE `cities`
  ADD PRIMARY KEY (`id_CITY`);

--
-- Indexes for table `contracts`
--
ALTER TABLE `contracts`
  ADD PRIMARY KEY (`number`),
  ADD KEY `state` (`state`),
  ADD KEY `contracted_with` (`fk_CARid_CAR`),
  ADD KEY `described_in` (`fk_PARKING_LOTid_PARKING_LOT`),
  ADD KEY `signs` (`fk_CUSTOMERpasport_id`),
  ADD KEY `described` (`fk_PARKING_LOTid_PARKING_LOT1`),
  ADD KEY `confirms` (`fk_EMPLOYEEemploee_id`);

--
-- Indexes for table `contract_states`
--
ALTER TABLE `contract_states`
  ADD PRIMARY KEY (`id_CONTRACT_STATES`);

--
-- Indexes for table `customers`
--
ALTER TABLE `customers`
  ADD PRIMARY KEY (`pasport_id`);

--
-- Indexes for table `employees`
--
ALTER TABLE `employees`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `extra_fees`
--
ALTER TABLE `extra_fees`
  ADD PRIMARY KEY (`Id_EXTRA_FEE`),
  ADD KEY `added_to` (`fk_FEEid_FEE`),
  ADD KEY `applied_to` (`fk_CONTRACTnumber`);

--
-- Indexes for table `fees`
--
ALTER TABLE `fees`
  ADD PRIMARY KEY (`id_FEE`);

--
-- Indexes for table `fuel_types`
--
ALTER TABLE `fuel_types`
  ADD PRIMARY KEY (`id_FUEL_TYPES`);

--
-- Indexes for table `gear_box_types`
--
ALTER TABLE `gear_box_types`
  ADD PRIMARY KEY (`id_GEAR_BOX_TYPE`);

--
-- Indexes for table `interval_influences`
--
ALTER TABLE `interval_influences`
  ADD PRIMARY KEY (`minimum_value`),
  ADD KEY `includes` (`fk_PARAMETERid_PARAMETER`);

--
-- Indexes for table `luggages`
--
ALTER TABLE `luggages`
  ADD PRIMARY KEY (`id_LUGGAGE`);

--
-- Indexes for table `models`
--
ALTER TABLE `models`
  ADD PRIMARY KEY (`id_MODEL`),
  ADD KEY `produces` (`fk_BRANDid_BRAND`);

--
-- Indexes for table `parameters`
--
ALTER TABLE `parameters`
  ADD PRIMARY KEY (`id_PARAMETER`);

--
-- Indexes for table `parking_lots`
--
ALTER TABLE `parking_lots`
  ADD PRIMARY KEY (`id_PARKING_LOT`),
  ADD KEY `has_lots` (`fk_CITYid_CITY`);

--
-- Indexes for table `payments`
--
ALTER TABLE `payments`
  ADD PRIMARY KEY (`id_PAYMENT`),
  ADD KEY `paid` (`fk_CUSTOMERpasport_id`),
  ADD KEY `for_payment_of` (`fk_BILLnr`);

--
-- Indexes for table `rental_offices`
--
ALTER TABLE `rental_offices`
  ADD PRIMARY KEY (`id_RENTAL_OFFICE`),
  ADD KEY `part_of` (`fk_RENTAL_OFFICEid_RENTAL_OFFICE`),
  ADD KEY `exists_in` (`fk_CITYid_CITY`);

--
-- Indexes for table `rent_fees`
--
ALTER TABLE `rent_fees`
  ADD PRIMARY KEY (`valid_from`),
  ADD KEY `rented_for` (`fk_CAR_GROUPid_CAR_GROUP`);

--
-- Indexes for table `selected_services`
--
ALTER TABLE `selected_services`
  ADD PRIMARY KEY (`Id_SELECTED_SERVICE`),
  ADD KEY `applied_for` (`fk_SERVICE_PRICEvalid_from`),
  ADD KEY `Included_in` (`fk_CONTRACTnumber`),
  ADD KEY `selected_in` (`fk_ID_SERVICE`);

--
-- Indexes for table `services`
--
ALTER TABLE `services`
  ADD PRIMARY KEY (`id_SERVICE`);

--
-- Indexes for table `service_prices`
--
ALTER TABLE `service_prices`
  ADD PRIMARY KEY (`valid_from`),
  ADD KEY `provided_for` (`fk_SERVICEid_SERVICE`);

--
-- Indexes for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD PRIMARY KEY (`fk_PARKING_LOTid_PARKING_LOT`,`fk_EMPLOYEEemploee_id`);

--
-- Indexes for table `value_influences`
--
ALTER TABLE `value_influences`
  ADD PRIMARY KEY (`value`),
  ADD KEY `has` (`fk_PARAMETERid_PARAMETER`);

--
-- Constraints for dumped tables
--

--
-- Constraints for table `bills`
--
ALTER TABLE `bills`
  ADD CONSTRAINT `billed_for` FOREIGN KEY (`fk_CONTRACTnumber`) REFERENCES `contracts` (`number`);

--
-- Constraints for table `cars`
--
ALTER TABLE `cars`
  ADD CONSTRAINT `are_of` FOREIGN KEY (`fk_MODELid_MODEL`) REFERENCES `models` (`id_MODEL`),
  ADD CONSTRAINT `cars_ibfk_1` FOREIGN KEY (`gear_box`) REFERENCES `gear_box_types` (`id_GEAR_BOX_TYPE`),
  ADD CONSTRAINT `cars_ibfk_2` FOREIGN KEY (`fuel_type`) REFERENCES `fuel_types` (`id_FUEL_TYPES`),
  ADD CONSTRAINT `cars_ibfk_3` FOREIGN KEY (`car_body_type`) REFERENCES `car_body_types` (`id_CAR_BODY_TYPES`),
  ADD CONSTRAINT `cars_ibfk_4` FOREIGN KEY (`luggage_size`) REFERENCES `luggages` (`id_LUGGAGE`),
  ADD CONSTRAINT `cars_ibfk_5` FOREIGN KEY (`state`) REFERENCES `car_states` (`id_CAR_STATE`);

--
-- Constraints for table `contracts`
--
ALTER TABLE `contracts`
  ADD CONSTRAINT `confirms` FOREIGN KEY (`fk_EMPLOYEEemploee_id`) REFERENCES `employees` (`employee_id`),
  ADD CONSTRAINT `contracted_with` FOREIGN KEY (`fk_CARid_CAR`) REFERENCES `cars` (`id_CAR`),
  ADD CONSTRAINT `contracts_ibfk_1` FOREIGN KEY (`state`) REFERENCES `contract_states` (`id_CONTRACT_STATES`),
  ADD CONSTRAINT `described` FOREIGN KEY (`fk_PARKING_LOTid_PARKING_LOT1`) REFERENCES `parking_lots` (`id_PARKING_LOT`),
  ADD CONSTRAINT `described_in` FOREIGN KEY (`fk_PARKING_LOTid_PARKING_LOT`) REFERENCES `parking_lots` (`id_PARKING_LOT`),
  ADD CONSTRAINT `signs` FOREIGN KEY (`fk_CUSTOMERpasport_id`) REFERENCES `customers` (`pasport_id`);

--
-- Constraints for table `extra_fees`
--
ALTER TABLE `extra_fees`
  ADD CONSTRAINT `added_to` FOREIGN KEY (`fk_FEEid_FEE`) REFERENCES `fees` (`id_FEE`),
  ADD CONSTRAINT `applied_to` FOREIGN KEY (`fk_CONTRACTnumber`) REFERENCES `contracts` (`number`);

--
-- Constraints for table `interval_influences`
--
ALTER TABLE `interval_influences`
  ADD CONSTRAINT `includes` FOREIGN KEY (`fk_PARAMETERid_PARAMETER`) REFERENCES `parameters` (`id_PARAMETER`);

--
-- Constraints for table `models`
--
ALTER TABLE `models`
  ADD CONSTRAINT `produces` FOREIGN KEY (`fk_BRANDid_BRAND`) REFERENCES `brands` (`id_BRAND`);

--
-- Constraints for table `parking_lots`
--
ALTER TABLE `parking_lots`
  ADD CONSTRAINT `has_lots` FOREIGN KEY (`fk_CITYid_CITY`) REFERENCES `cities` (`id_CITY`);

--
-- Constraints for table `payments`
--
ALTER TABLE `payments`
  ADD CONSTRAINT `for_payment_of` FOREIGN KEY (`fk_BILLnr`) REFERENCES `bills` (`nr`),
  ADD CONSTRAINT `paid` FOREIGN KEY (`fk_CUSTOMERpasport_id`) REFERENCES `customers` (`pasport_id`);

--
-- Constraints for table `rental_offices`
--
ALTER TABLE `rental_offices`
  ADD CONSTRAINT `exists_in` FOREIGN KEY (`fk_CITYid_CITY`) REFERENCES `cities` (`id_CITY`),
  ADD CONSTRAINT `part_of` FOREIGN KEY (`fk_RENTAL_OFFICEid_RENTAL_OFFICE`) REFERENCES `rental_offices` (`id_RENTAL_OFFICE`);

--
-- Constraints for table `rent_fees`
--
ALTER TABLE `rent_fees`
  ADD CONSTRAINT `rented_for` FOREIGN KEY (`fk_CAR_GROUPid_CAR_GROUP`) REFERENCES `car_groups` (`id_CAR_GROUP`);

--
-- Constraints for table `selected_services`
--
ALTER TABLE `selected_services`
  ADD CONSTRAINT `Included_in` FOREIGN KEY (`fk_CONTRACTnumber`) REFERENCES `contracts` (`number`),
  ADD CONSTRAINT `applied_for` FOREIGN KEY (`fk_SERVICE_PRICEvalid_from`) REFERENCES `service_prices` (`valid_from`),
  ADD CONSTRAINT `selected_in` FOREIGN KEY (`fk_ID_SERVICE`) REFERENCES `services` (`id_SERVICE`);

--
-- Constraints for table `service_prices`
--
ALTER TABLE `service_prices`
  ADD CONSTRAINT `provided_for` FOREIGN KEY (`fk_SERVICEid_SERVICE`) REFERENCES `services` (`id_SERVICE`);

--
-- Constraints for table `supervisors`
--
ALTER TABLE `supervisors`
  ADD CONSTRAINT `supervises` FOREIGN KEY (`fk_PARKING_LOTid_PARKING_LOT`) REFERENCES `parking_lots` (`id_PARKING_LOT`);

--
-- Constraints for table `value_influences`
--
ALTER TABLE `value_influences`
  ADD CONSTRAINT `has` FOREIGN KEY (`fk_PARAMETERid_PARAMETER`) REFERENCES `parameters` (`id_PARAMETER`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
