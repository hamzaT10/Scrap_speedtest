-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Hôte : 127.0.0.1
-- Généré le : sam. 27 juil. 2024 à 23:09
-- Version du serveur : 10.4.22-MariaDB
-- Version de PHP : 8.0.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de données : `scrap_speedtest`
--

-- --------------------------------------------------------

--
-- Structure de la table `broadband`
--

CREATE TABLE `broadband` (
  `id` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `download` decimal(10,2) DEFAULT NULL,
  `upload` decimal(10,2) DEFAULT NULL,
  `latency` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `broadband`
--

INSERT INTO `broadband` (`id`, `country`, `rank`, `download`, `upload`, `latency`) VALUES
(1, 'Singapore', 1, '385.29', '357.86', 8),
(2, 'United Arab Emirates', 2, '342.88', '172.63', 10),
(3, 'Hong Kong (SAR)', 3, '358.30', '275.58', 11),
(4, 'Chile', 4, '335.53', '273.83', 12),
(5, 'United States', 5, '309.24', '133.92', 21),
(6, 'Iceland', 6, '368.21', '358.50', 10),
(7, 'France', 7, '366.20', '266.68', 19),
(8, 'Thailand', 8, '302.94', '242.63', 10),
(9, 'Denmark', 9, '313.93', '242.17', 11),
(10, 'China', 10, '302.71', '53.99', 28),
(11, 'Spain', 11, '298.78', '262.63', 18),
(12, 'Romania', 12, '303.25', '252.89', 10),
(13, 'Switzerland', 13, '339.30', '232.50', 12),
(14, 'Israel', 14, '302.74', '82.23', 12),
(15, 'Japan', 15, '306.58', '191.39', 21),
(16, 'Canada', 16, '294.29', '160.94', 18),
(17, 'Taiwan', 17, '225.31', '167.03', 8),
(18, 'Netherlands', 18, '282.92', '180.67', 13),
(19, 'Liechtenstein', 19, '287.21', '245.88', 6),
(20, 'Hungary', 20, '301.36', '150.22', 14),
(21, 'New Zealand', 21, '254.33', '150.71', 15),
(22, 'Portugal', 22, '258.25', '114.34', 13),
(23, 'Kuwait', 23, '212.29', '43.77', 25),
(24, 'Brazil', 24, '228.72', '140.25', 13),
(25, 'Macau (SAR)', 25, '237.02', '207.73', 6),
(26, 'Uruguay', 26, '229.17', '46.28', 15),
(27, 'Qatar', 27, '278.28', '172.42', 9),
(28, 'Poland', 28, '244.37', '86.78', 16),
(29, 'Peru', 29, '217.13', '173.95', 14),
(30, 'Panama', 30, '214.73', '74.24', 14),
(31, 'South Korea', 31, '253.14', '201.76', 26),
(32, 'Sweden', 32, '233.52', '196.41', 13),
(33, 'Luxembourg', 33, '250.88', '150.22', 12),
(34, 'Jordan', 34, '198.45', '166.34', 10),
(35, 'Colombia', 35, '202.77', '144.18', 18),
(36, 'Norway', 36, '217.52', '186.84', 14),
(37, 'Vietnam', 37, '221.35', '195.09', 6),
(38, 'Malaysia', 38, '199.04', '98.95', 12),
(39, 'Moldova', 39, '249.54', '228.09', 10),
(40, 'Ireland', 40, '219.73', '57.52', 17),
(41, 'Lithuania', 41, '232.20', '198.11', 12),
(42, 'Trinidad and Tobago', 42, '150.05', '83.21', 17),
(43, 'Finland', 43, '209.52', '108.73', 16),
(44, 'Malta', 44, '221.01', '40.54', 12),
(45, 'Saudi Arabia', 45, '161.76', '70.36', 19),
(46, 'United Kingdom', 46, '200.82', '81.31', 19),
(47, 'Austria', 47, '168.60', '41.54', 16),
(48, 'Belgium', 48, '202.03', '55.83', 18),
(49, 'San Marino', 49, '210.24', '90.18', 13),
(50, 'Philippines', 50, '172.20', '163.44', 14),
(51, 'Costa Rica', 51, '133.78', '101.78', 16),
(52, 'Barbados', 52, '164.80', '137.63', 10),
(53, 'Latvia', 53, '219.43', '194.82', 17),
(54, 'Slovenia', 54, '200.26', '68.09', 14),
(55, 'Ecuador', 55, '149.12', '135.53', 12),
(56, 'Paraguay', 56, '124.16', '42.55', 16),
(57, 'Germany', 57, '167.30', '46.31', 19),
(58, 'Grenada', 58, '134.51', '57.16', 16),
(59, 'Dominica', 59, '132.79', '68.22', 46),
(60, 'Russia', 60, '143.04', '138.69', 11),
(61, 'Cyprus', 61, '139.73', '65.51', 16),
(62, 'Argentina', 62, '145.53', '81.73', 22),
(63, 'Bahrain', 63, '110.53', '62.91', 9),
(64, 'Estonia', 64, '123.57', '101.34', 13),
(65, 'Slovakia', 65, '196.70', '85.48', 16),
(66, 'Guyana', 66, '141.55', '65.40', 19),
(67, 'Serbia', 67, '149.46', '62.07', 15),
(68, 'Italy', 68, '206.82', '117.58', 21),
(69, 'Bulgaria', 69, '148.92', '108.19', 12),
(70, 'Ukraine', 70, '142.22', '139.71', 11),
(71, 'Egypt', 71, '78.29', '23.67', 15),
(72, 'Brunei', 72, '117.03', '80.23', 10),
(73, 'Jamaica', 73, '104.09', '70.57', 20),
(74, 'Montenegro', 74, '132.15', '30.84', 14),
(75, 'Mexico', 75, '116.02', '64.53', 17),
(76, 'Kosovo', 76, '99.85', '45.51', 11),
(77, 'Nepal', 77, '97.42', '75.18', 9),
(78, 'Mongolia', 78, '82.61', '66.92', 18),
(79, 'Oman', 79, '118.45', '52.90', 23),
(80, 'Czechia', 80, '149.81', '86.84', 17),
(81, 'Palestine', 81, '91.48', '85.99', 10),
(82, 'Australia', 82, '131.65', '31.78', 21),
(83, 'Uzbekistan', 83, '92.90', '109.86', 17),
(84, 'Côte d\'Ivoire', 84, '106.73', '31.44', 19),
(85, 'India', 85, '93.98', '87.46', 15),
(86, 'Saint Kitts and Nevis', 86, '85.71', '59.46', 14),
(87, 'Albania', 87, '110.44', '49.71', 17),
(88, 'Kyrgyzstan', 88, '77.40', '77.93', 9),
(89, 'Croatia', 89, '153.97', '85.11', 19),
(90, 'Belarus', 90, '107.99', '71.51', 15),
(91, 'The Bahamas', 91, '108.03', '60.29', 21),
(92, 'Armenia', 92, '103.31', '96.51', 9),
(93, 'Nicaragua', 93, '76.62', '26.81', 17),
(94, 'Kazakhstan', 94, '95.53', '88.83', 22),
(95, 'Venezuela', 95, '98.21', '92.21', 26),
(96, 'El Salvador', 96, '72.16', '26.80', 23),
(97, 'Mauritius', 97, '87.81', '27.81', 11),
(98, 'Guatemala', 98, '71.79', '22.65', 27),
(99, 'Greece', 99, '84.96', '24.03', 26),
(100, 'Bangladesh', 100, '71.63', '66.79', 10),
(101, 'South Africa', 101, '81.92', '63.54', 22),
(102, 'Honduras', 102, '58.15', '27.84', 40),
(103, 'Belize', 103, '83.17', '62.65', 14),
(104, 'Seychelles', 104, '83.53', '53.98', 14),
(105, 'Cambodia', 105, '60.43', '60.45', 11),
(106, 'North Macedonia', 106, '75.07', '56.90', 18),
(107, 'Burkina Faso', 107, '63.27', '27.72', 24),
(108, 'Turkey', 108, '100.08', '39.18', 18),
(109, 'Congo', 109, '54.03', '33.36', 21),
(110, 'Gabon', 110, '58.51', '17.05', 17),
(111, 'DR Congo', 111, '56.83', '15.83', 94),
(112, 'Antigua and Barbuda', 112, '47.23', '28.36', 25),
(113, 'Azerbaijan', 113, '60.23', '55.61', 11),
(114, 'Ghana', 114, '76.93', '43.75', 27),
(115, 'Laos', 115, '58.90', '51.63', 15),
(116, 'Haiti', 116, '55.51', '29.30', 44),
(117, 'Madagascar', 117, '46.73', '48.11', 33),
(118, 'Dominican Republic', 118, '58.65', '26.80', 19),
(119, 'Iraq', 119, '47.68', '42.15', 35),
(120, 'Rwanda', 120, '47.82', '19.44', 85),
(121, 'Bolivia', 121, '46.48', '23.83', 18),
(122, 'Bosnia and Herzegovina', 122, '71.63', '18.06', 25),
(123, 'Tajikistan', 123, '59.40', '69.33', 18),
(124, 'Morocco', 124, '44.51', '40.65', 31),
(125, 'Indonesia', 125, '48.54', '37.40', 16),
(126, 'Togo', 126, '42.94', '11.42', 23),
(127, 'Georgia', 127, '34.41', '36.08', 17),
(128, 'Mauritania', 128, '35.19', '24.23', 32),
(129, 'Benin', 129, '34.70', '17.99', 18),
(130, 'Senegal', 130, '47.00', '15.41', 21),
(131, 'Sri Lanka', 131, '56.93', '36.54', 23),
(132, 'Nigeria', 132, '42.93', '26.36', 43),
(133, 'Myanmar (Burma)', 133, '32.99', '31.01', 16),
(134, 'Fiji', 134, '42.31', '24.59', 43),
(135, 'Angola', 135, '36.52', '15.77', 28),
(136, 'Zambia', 136, '35.55', '10.61', 246),
(137, 'Tanzania', 137, '34.14', '29.99', 31),
(138, 'Lebanon', 138, '63.60', '33.30', 27),
(139, 'Zimbabwe', 139, '42.40', '42.38', 63),
(140, 'Somalia', 140, '35.56', '38.60', 58),
(141, 'Mozambique', 141, '30.64', '11.91', 116),
(142, 'Pakistan', 142, '24.07', '23.98', 21),
(143, 'Uganda', 143, '30.54', '27.83', 23),
(144, 'Iran', 144, '35.71', '23.16', 40),
(145, 'Algeria', 145, '53.44', '24.11', 34),
(146, 'Namibia', 146, '26.61', '21.74', 42),
(147, 'Maldives', 147, '35.75', '21.72', 21),
(148, 'Suriname', 148, '28.76', '22.44', 28),
(149, 'Kenya', 149, '24.56', '22.82', 34),
(150, 'Libya', 150, '24.66', '17.50', 40),
(151, 'Tunisia', 151, '16.73', '10.29', 43),
(152, 'Cameroon', 152, '27.13', '9.55', 125),
(153, 'Ethiopia', 153, '40.78', '45.14', 24),
(154, 'Guinea', 154, '24.40', '14.08', 61),
(155, 'Botswana', 155, '21.15', '19.65', 52),
(156, 'Yemen', 156, '17.19', '6.94', 75),
(157, 'Syria', 157, '19.09', '25.01', 29),
(158, 'Afghanistan', 158, '10.42', '11.40', 43),
(159, 'Cuba', 159, '9.18', '5.85', 142);

-- --------------------------------------------------------

--
-- Structure de la table `mobile`
--

CREATE TABLE `mobile` (
  `id` int(11) NOT NULL,
  `country` varchar(255) DEFAULT NULL,
  `rank` int(11) DEFAULT NULL,
  `download` decimal(10,2) DEFAULT NULL,
  `upload` decimal(10,2) DEFAULT NULL,
  `latency` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Déchargement des données de la table `mobile`
--

INSERT INTO `mobile` (`id`, `country`, `rank`, `download`, `upload`, `latency`) VALUES
(1, 'Qatar', 1, '473.58', '35.36', 23),
(2, 'United Arab Emirates', 2, '462.61', '37.75', 23),
(3, 'Kuwait', 3, '277.67', '29.28', 21),
(4, 'Norway', 4, '211.30', '31.34', 29),
(5, 'Denmark', 5, '232.84', '29.03', 23),
(6, 'South Korea', 6, '285.04', '28.10', 52),
(7, 'China', 7, '186.28', '32.51', 40),
(8, 'Saudi Arabia', 8, '222.37', '22.50', 33),
(9, 'Netherlands', 9, '140.99', '27.98', 25),
(10, 'Bahrain', 10, '204.80', '22.26', 21),
(11, 'United States', 11, '215.03', '16.75', 37),
(12, 'India', 12, '173.42', '16.39', 39),
(13, 'Singapore', 13, '199.64', '23.70', 22),
(14, 'France', 14, '174.80', '16.23', 34),
(15, 'Finland', 15, '150.69', '21.53', 24),
(16, 'Bulgaria', 16, '195.13', '26.76', 25),
(17, 'Lithuania', 17, '161.28', '21.98', 24),
(18, 'Sweden', 18, '168.56', '24.99', 27),
(19, 'Malaysia', 19, '187.86', '28.58', 28),
(20, 'Croatia', 20, '165.85', '24.30', 26),
(21, 'Estonia', 21, '157.40', '20.53', 23),
(22, 'Australia', 22, '153.12', '15.96', 27),
(23, 'Switzerland', 23, '161.40', '28.49', 23),
(24, 'North Macedonia', 24, '169.73', '32.17', 22),
(25, 'Czechia', 25, '123.03', '29.74', 25),
(26, 'Latvia', 26, '141.97', '17.23', 22),
(27, 'Canada', 27, '134.15', '18.32', 31),
(28, 'Portugal', 28, '178.16', '22.28', 25),
(29, 'Taiwan', 29, '145.15', '23.37', 23),
(30, 'Austria', 30, '109.77', '21.03', 26),
(31, 'Greece', 31, '150.72', '21.69', 28),
(32, 'Oman', 32, '136.33', '19.77', 28),
(33, 'Belgium', 33, '138.68', '20.02', 29),
(34, 'Slovenia', 34, '124.97', '17.66', 22),
(35, 'New Zealand', 35, '154.46', '19.74', 36),
(36, 'Cyprus', 36, '164.68', '25.25', 21),
(37, 'Brazil', 37, '185.61', '21.63', 32),
(38, 'Romania', 38, '99.24', '21.06', 26),
(39, 'Hong Kong (SAR)', 39, '119.31', '22.65', 24),
(40, 'Germany', 40, '119.80', '20.16', 31),
(41, 'Montenegro', 41, '97.22', '23.23', 21),
(42, 'Poland', 42, '113.72', '17.34', 30),
(43, 'Slovakia', 43, '91.89', '19.53', 24),
(44, 'United Kingdom', 44, '108.18', '13.65', 39),
(45, 'Hungary', 45, '99.25', '22.80', 26),
(46, 'Serbia', 46, '68.57', '20.11', 23),
(47, 'Italy', 47, '101.35', '15.51', 38),
(48, 'Vietnam', 48, '64.19', '22.25', 26),
(49, 'Azerbaijan', 49, '67.46', '19.17', 23),
(50, 'South Africa', 50, '100.30', '14.15', 29),
(51, 'Thailand', 51, '92.99', '20.26', 29),
(52, 'Albania', 52, '73.48', '17.75', 24),
(53, 'Spain', 53, '130.19', '19.42', 38),
(54, 'Kazakhstan', 54, '104.76', '20.63', 30),
(55, 'Japan', 55, '84.06', '13.41', 43),
(56, 'Morocco', 56, '62.56', '16.24', 30),
(57, 'Israel', 57, '99.20', '14.39', 29),
(58, 'Turkey', 58, '67.13', '20.02', 30),
(59, 'Ireland', 59, '93.95', '15.38', 30),
(60, 'Georgia', 60, '57.85', '18.46', 28),
(61, 'Chile', 61, '78.36', '18.33', 33),
(62, 'Kosovo', 62, '94.27', '20.07', 23),
(63, 'Moldova', 63, '81.48', '19.23', 22),
(64, 'Guatemala', 64, '102.07', '24.44', 30),
(65, 'Iran', 65, '58.10', '12.90', 36),
(66, 'Kyrgyzstan', 66, '51.65', '16.42', 26),
(67, 'Lebanon', 67, '45.68', '13.46', 27),
(68, 'Costa Rica', 68, '51.86', '14.14', 29),
(69, 'Philippines', 69, '71.19', '11.01', 26),
(70, 'Argentina', 70, '63.20', '12.01', 36),
(71, 'Honduras', 71, '52.41', '16.33', 65),
(72, 'Iraq', 72, '41.29', '18.47', 27),
(73, 'Mexico', 73, '67.04', '16.94', 50),
(74, 'Myanmar (Burma)', 74, '40.00', '16.74', 35),
(75, 'Armenia', 75, '43.60', '16.54', 23),
(76, 'Dominican Republic', 76, '110.60', '16.86', 27),
(77, 'Uzbekistan', 77, '63.62', '15.74', 28),
(78, 'El Salvador', 78, '38.71', '14.75', 25),
(79, 'Laos', 79, '49.30', '16.79', 32),
(80, 'Indonesia', 80, '39.26', '16.18', 31),
(81, 'Tanzania', 81, '54.81', '15.07', 33),
(82, 'Kenya', 82, '58.30', '14.97', 36),
(83, 'Cambodia', 83, '38.93', '14.22', 29),
(84, 'Jordan', 84, '53.07', '18.76', 20),
(85, 'Tunisia', 85, '40.95', '18.05', 25),
(86, 'Russia', 86, '39.73', '11.52', 42),
(87, 'Egypt', 87, '36.17', '9.42', 37),
(88, 'Algeria', 88, '36.08', '14.26', 33),
(89, 'Ecuador', 89, '36.32', '13.28', 36),
(90, 'Bangladesh', 90, '34.22', '14.22', 31),
(91, 'Bosnia and Herzegovina', 91, '32.65', '13.51', 27),
(92, 'Nigeria', 92, '68.41', '15.81', 47),
(93, 'Ukraine', 93, '32.09', '13.73', 36),
(94, 'Peru', 94, '31.58', '16.12', 30),
(95, 'Panama', 95, '29.56', '16.31', 25),
(96, 'Paraguay', 96, '26.66', '10.07', 39),
(97, 'Pakistan', 97, '25.51', '11.81', 34),
(98, 'Sri Lanka', 98, '42.85', '10.06', 25),
(99, 'Nicaragua', 99, '31.48', '13.57', 31),
(100, 'Colombia', 100, '54.06', '14.96', 38),
(101, 'Libya', 101, '21.23', '8.15', 33),
(102, 'Mongolia', 102, '20.39', '9.98', 30),
(103, 'Syria', 103, '21.35', '7.25', 47),
(104, 'Venezuela', 104, '21.49', '9.08', 49),
(105, 'Belarus', 105, '26.92', '11.29', 34),
(106, 'Bolivia', 106, '19.23', '12.28', 33),
(107, 'Yemen', 107, '10.63', '8.13', 54),
(108, 'Cuba', 108, '8.29', '5.24', 135);

--
-- Index pour les tables déchargées
--

--
-- Index pour la table `broadband`
--
ALTER TABLE `broadband`
  ADD PRIMARY KEY (`id`);

--
-- Index pour la table `mobile`
--
ALTER TABLE `mobile`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT pour les tables déchargées
--

--
-- AUTO_INCREMENT pour la table `broadband`
--
ALTER TABLE `broadband`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=160;

--
-- AUTO_INCREMENT pour la table `mobile`
--
ALTER TABLE `mobile`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
