-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Gép: 127.0.0.1
-- Létrehozás ideje: 2024. Okt 01. 13:53
-- Kiszolgáló verziója: 10.4.20-MariaDB
-- PHP verzió: 7.3.29

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Adatbázis: `shop`
--
CREATE DATABASE IF NOT EXISTS `shop` DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci;
USE `shop`;

-- --------------------------------------------------------

--
-- Tábla szerkezet ehhez a táblához `products`
--

CREATE TABLE `products` (
  `Id` varchar(36) NOT NULL,
  `Name` varchar(50) DEFAULT NULL,
  `Price` int(11) DEFAULT NULL,
  `CreatedTime` datetime DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- A tábla adatainak kiíratása `products`
--

INSERT INTO `products` (`Id`, `Name`, `Price`, `CreatedTime`) VALUES
('04bb6244-4cdd-4607-ab4c-169805ffaecb', 'Napkin - Cocktail,beige 2 - Ply', 5564, '2022-09-01 00:00:00'),
('057177b2-7ae0-413a-a078-921392b6c512', 'Yogurt - Blueberry, 175 Gr', 8815, '2024-09-03 00:00:00'),
('0e5f2934-4911-4abd-a391-dbc1f1c80450', 'Table Cloth 91x91 Colour', 3431, '2024-05-15 00:00:00'),
('11cf6dc7-566d-4194-89d8-a586dd84aa84', 'Initation Crab Meat', 3786, '2023-04-06 00:00:00'),
('147630da-5eed-4415-9d4a-3091cd744f05', 'Cassis', 2062, '2024-04-03 00:00:00'),
('15a7a892-bd08-460d-b431-52b261e15487', 'Calypso - Lemonade', 821, '2023-11-18 00:00:00'),
('160301ed-2b8d-4773-a90e-d92a246aefde', 'Pasta - Rotini, Dry', 2532, '2024-07-31 00:00:00'),
('1624040f-ca55-4f94-9a5d-e35df84e9f6b', 'Eggwhite Frozen', 6633, '2023-05-20 00:00:00'),
('1746f525-e06e-4df6-bb58-d65be0b2ac41', 'Mushroom - Enoki, Fresh', 9272, '2023-07-31 00:00:00'),
('1b0c50c3-ef4a-42a0-b350-235505bb8115', 'Wine - Red, Gamay Noir', 3266, '2023-07-24 00:00:00'),
('1bf29989-dccc-453c-a97b-6c343a84c871', 'Wine - Champagne Brut Veuve', 7622, '2024-04-15 00:00:00'),
('1f0c79c0-b1cb-4cdc-9a09-17ca88d3d2f5', 'Jam - Raspberry', 3772, '2023-11-14 00:00:00'),
('269b4caf-0e76-4477-b581-a917c4f3c26b', 'Soup - Campbells, Butternut', 7290, '2023-02-10 00:00:00'),
('26acd4bb-9cea-430d-b71d-4681da90ecb2', 'Appetizer - Spring Roll, Veg', 2662, '2024-04-05 00:00:00'),
('2aa37554-6b2e-4212-8abb-7fde09161ecb', 'Pepper - Black, Whole', 1781, '2023-05-30 00:00:00'),
('2e59d060-2fe2-4c4c-9169-90201656a0ed', 'Browning Caramel Glace', 9616, '2024-07-16 00:00:00'),
('34fc7b7c-91cb-4dc3-8868-ac0c67e2aac6', 'Beef - Diced', 8207, '2023-03-25 00:00:00'),
('35c47103-c93c-4224-8478-f34950d38b35', 'Cheese - Cambozola', 7970, '2022-12-14 00:00:00'),
('3df4197f-5a5d-4ef8-b27f-c0ea6ed84247', 'Garlic', 4159, '2023-09-14 00:00:00'),
('3f3ea136-63c3-45f4-8e1c-e71acf015948', 'Cake Circle, Paprus', 7002, '2024-06-23 00:00:00'),
('3f7178b4-5975-4b54-9685-bd716c56881b', 'Soap - Hand Soap', 9836, '2023-02-24 00:00:00'),
('3fe72785-4b6c-413a-9608-bfdb77156c1e', 'Lettuce - California Mix', 9210, '2023-12-03 00:00:00'),
('446b6fe2-df91-4ccb-b8a8-168ef98b08b9', 'Duck - Whole', 7605, '2024-02-27 00:00:00'),
('44aacf24-a3a6-44a6-8851-a10ff06cf478', 'Aspic - Light', 9296, '2024-01-23 00:00:00'),
('4687a39a-d4db-4af5-a55d-6026b1aab61c', 'Pork - Sausage Casing', 9174, '2022-09-15 00:00:00'),
('49fcfbc0-5991-47e2-8641-4ecc9fcaa2cb', 'Cheese - Comtomme', 5591, '2024-01-28 00:00:00'),
('4a94f590-4f31-4e3c-97cd-d57e75d89f65', 'Nantucket Cranberry Juice', 6334, '2023-05-18 00:00:00'),
('4b18fddd-0147-4459-b899-eaf747ade418', 'Mint - Fresh', 3294, '2022-11-23 00:00:00'),
('4cd1e5ce-f11d-489e-9371-b8a7299925f1', 'Wine - Zinfandel California 2002', 5428, '2023-06-20 00:00:00'),
('4dc1fb78-0c56-46b4-a47a-927b7e78e767', 'Pasta - Orzo, Dry', 1806, '2023-05-08 00:00:00'),
('4df3f8e9-fc2d-4ef9-b9f4-d8928a6f380f', 'Pastry - Butterscotch Baked', 9399, '2023-07-05 00:00:00'),
('510a613c-8e39-4542-87b0-591dc8e3be4c', 'Raisin - Dark', 8751, '2023-08-14 00:00:00'),
('57adfb8f-b703-4921-afe1-d454c4fdaf43', 'Beer - Sleemans Cream Ale', 7645, '2023-09-27 00:00:00'),
('5950090c-2c83-44c0-a7c1-987ee6084e94', 'Chevril', 1799, '2023-03-03 00:00:00'),
('5c831e3d-e8f9-4cb5-8db4-0ba1ca4589fa', 'Syrup - Monin - Passion Fruit', 4759, '2024-02-08 00:00:00'),
('5d0511ab-73fd-4870-af3a-990a9c648e0c', 'Sauce - Hoisin', 5942, '2023-10-10 00:00:00'),
('5e236d86-32fb-43db-9834-4302a00faf3f', 'Glaze - Clear', 930, '2023-02-07 00:00:00'),
('5e5e14cf-2279-4dbc-a9f8-c337dd99efe4', 'Juice - Apple, 341 Ml', 8100, '2022-12-17 00:00:00'),
('5ec15427-be36-43c6-a2f2-d62027ca8c43', 'Turkey - Ground. Lean', 6662, '2023-08-17 00:00:00'),
('65be160f-afb9-4125-b2aa-e732ad676a29', 'Blackberries', 5860, '2022-11-24 00:00:00'),
('6b0f3445-587e-43de-bfac-66a61a9ace92', 'Wine - Casillero Deldiablo', 5182, '2022-10-07 00:00:00'),
('70d57242-800c-49e4-8788-3e100c22c21f', 'Rice Pilaf, Dry,package', 638, '2023-02-09 00:00:00'),
('72eedac5-793b-4aac-ba03-492f677fa362', 'Sobe - Orange Carrot', 3561, '2023-03-25 00:00:00'),
('743c185e-61fc-44eb-83e7-5ff69ad9cafd', 'Sugar - Fine', 9069, '2024-05-04 00:00:00'),
('78d15a76-435f-40b4-8216-f9bbad1c5519', 'Uniform Linen Charge', 7872, '2024-03-06 00:00:00'),
('799b9b6d-3a11-4ecc-b082-92da8e421538', 'Petit Baguette', 6989, '2022-10-07 00:00:00'),
('7acc94f7-5846-48ab-b423-7c4e88a64d1f', 'Wine - White, Antinore Orvieto', 3289, '2024-06-24 00:00:00'),
('7f59b03e-01d0-446e-808d-bdfa8fd5187f', 'Chocolate - Dark', 2468, '2024-06-29 00:00:00'),
('80e53675-c767-41cb-a5d2-a2c2531890be', 'Steam Pan - Half Size Deep', 9749, '2024-09-23 00:00:00'),
('85c91756-cd70-439f-87ba-24c4a9e9dd78', 'Veal - Striploin', 5716, '2022-12-04 00:00:00'),
('85d0d436-75f4-4492-99b8-4aef7d874c20', 'Tumeric', 1391, '2022-09-26 00:00:00'),
('8697c945-57df-4668-b897-21b4d6ab188b', 'White Fish - Filets', 775, '2023-03-23 00:00:00'),
('8a54db97-c413-418a-a902-ce6e03d13129', 'Pork - Ham Hocks - Smoked', 6295, '2024-04-06 00:00:00'),
('8ea7cdea-5502-43a5-aa95-6b04527671c9', 'Flour - Chickpea', 2838, '2024-05-12 00:00:00'),
('8fd29b4a-d24e-4029-924b-1d69356e84ff', 'Potatoes - Yukon Gold, 80 Ct', 5471, '2024-02-18 00:00:00'),
('964dcefe-18c4-4eca-b925-336850a35d39', 'Allspice - Jamaican', 8048, '2024-09-09 00:00:00'),
('992d1be1-a5d2-4175-b10e-dd0c0450b830', 'Carbonated Water - Blackberry', 8982, '2023-03-20 00:00:00'),
('99a33b80-c6f1-4e2e-adf4-890676b8b2f8', 'Cleaner - Bleach', 1249, '2023-03-15 00:00:00'),
('9a805ff8-4f15-4477-86a9-a81e56907613', 'Corn - Cream, Canned', 1874, '2022-11-12 00:00:00'),
('9bba92fa-3d1a-49ac-bcad-97475c1e9d61', 'Bagel - Plain', 8533, '2024-03-16 00:00:00'),
('a262d2ce-f77c-4a9d-9fa2-b734d40eb44a', 'Cheese - Oka', 8260, '2022-12-16 00:00:00'),
('a2c64a89-e994-4485-82ce-3f8754e2adce', 'Bread - Petit Baguette', 6402, '2023-04-27 00:00:00'),
('a5107c91-844f-4c01-a319-20d7667ed5f2', 'Bagel - Whole White Sesame', 6008, '2022-09-04 00:00:00'),
('a6156019-79fc-4eac-b264-87c17e3c6844', 'Roe - Flying Fish', 1920, '2023-09-14 00:00:00'),
('a6dcc384-fd01-4727-8d8f-574591f05817', 'Pasta - Cheese / Spinach Bauletti', 9365, '2023-11-23 00:00:00'),
('a907c905-855d-4319-b44d-2849c6af1e75', 'Coffee Guatemala Dark', 2514, '2022-11-07 00:00:00'),
('aa23d116-f8fe-46d5-84a9-f480728c4651', 'Lamb Rack - Ontario', 2628, '2024-08-26 00:00:00'),
('ab1f82e3-3fd4-46bf-a3c9-d0f686061ec4', 'Tart Shells - Barquettes, Savory', 3314, '2022-09-14 00:00:00'),
('ab3826e7-06ce-4fbe-8fd5-565537958874', 'Icecream - Dibs', 5945, '2023-08-30 00:00:00'),
('abd5a76d-c5f1-42a5-b4bc-70a79331cfcc', 'Chocolate Eclairs', 6394, '2024-01-24 00:00:00'),
('b0d9d7e5-d4d5-4ab2-b276-c7ed5ed3fb48', 'Neckerchief Blck', 8828, '2024-04-14 00:00:00'),
('b29b022c-08ae-42e2-81a4-465f20c6977a', 'Orange - Blood', 5152, '2023-03-23 00:00:00'),
('b3662194-107c-4588-b0bd-a2ca7a88a911', 'Chip - Potato Dill Pickle', 1656, '2024-04-22 00:00:00'),
('b45b7299-c4ea-4a88-9de4-b61b79efb7c2', 'Nut - Almond, Blanched, Ground', 8151, '2024-08-04 00:00:00'),
('b870b769-38c0-42aa-867c-b60b014f368c', 'Swiss Chard', 3796, '2024-08-07 00:00:00'),
('b874edc0-7c86-44fb-8646-08b5be40bf95', 'Muffin Mix - Oatmeal', 2843, '2024-09-15 00:00:00'),
('b9622ceb-1db3-4b57-a836-778f3e71945f', 'Pastry - Cherry Danish - Mini', 1839, '2023-01-21 00:00:00'),
('bc9890da-bcf9-4fc4-8854-547868fc36e8', 'Coconut - Creamed, Pure', 7384, '2022-10-07 00:00:00'),
('bdbb5e73-c662-4879-893d-7349a24a0f67', 'Lettuce - Arugula', 3395, '2023-02-25 00:00:00'),
('c04ccbea-2015-43c0-8fb4-39ac48e436ab', 'Wine - Delicato Merlot', 8421, '2023-01-20 00:00:00'),
('c1d81b33-4279-4e27-be9e-12f81e74fde3', 'Sprouts - Peppercress', 6635, '2022-12-07 00:00:00'),
('c1e9e13a-d858-4592-98fc-9392bc1aff6f', 'Soup - Beef Conomme, Dry', 8242, '2024-07-22 00:00:00'),
('c24c8658-1d19-4f11-8461-7937094e4d88', 'Anchovy Paste - 56 G Tube', 956, '2022-11-16 00:00:00'),
('c5066f06-6bd7-4a35-832d-36bfaa19ed68', 'Salmon - Whole, 4 - 6 Pounds', 3852, '2023-12-27 00:00:00'),
('cc812926-f4f8-4a29-8790-1620eee898d1', 'Ham Black Forest', 4053, '2024-02-05 00:00:00'),
('ceae7112-63f9-4d8d-8447-e85c989b301a', 'Beef - Shank', 3771, '2023-09-22 00:00:00'),
('da89a219-4fec-48b2-9688-1f254e2d43a8', 'Beef - Tenderloin', 8127, '2023-09-14 00:00:00'),
('deb6cf4e-628c-4c44-b783-ca8b2c4528ff', 'Beef - Montreal Smoked Brisket', 3796, '2024-09-11 00:00:00'),
('e0a21f39-a02d-4d96-bb3a-89e71e3b0cc0', 'Mince Meat - Filling', 2958, '2022-09-05 00:00:00'),
('e560b144-c283-4efe-8a8f-f831f8f5a356', 'Cheese - Camembert', 1878, '2024-04-05 00:00:00'),
('e830247e-3e5a-4b6f-954c-5d0ff94ee46c', 'Bread - Pumpernickle, Rounds', 6457, '2023-05-12 00:00:00'),
('e923221a-8c59-4bbf-86d6-2cb5428ef8cc', 'Milk - Skim', 3012, '2023-07-16 00:00:00'),
('e92d5e99-6252-4f91-a536-29719a54124f', 'Pork - Tenderloin, Frozen', 2842, '2024-02-16 00:00:00'),
('e9ce1578-c4a2-4825-b014-33cb102789b1', 'Wine - Mondavi Coastal Private', 2364, '2023-03-20 00:00:00'),
('eda0c2d5-4100-4169-81b7-275ff57810d6', 'Grouper - Fresh', 7711, '2023-07-12 00:00:00'),
('ee4b9bae-7057-41cc-953d-af4a116c693c', 'Bread - Bagels, Plain', 7507, '2023-11-06 00:00:00'),
('f6f068d6-4cc1-4069-aa71-1bd2b07c6a53', 'Appetizer - Escargot Puff', 8349, '2024-04-02 00:00:00'),
('f79e085d-fb60-44dd-8371-54b5e555b62c', 'Cognac - Courvaisier', 1659, '2024-06-13 00:00:00'),
('ffb5d738-efce-42e3-bceb-a0310d3908b1', 'Mushroom - Porcini Frozen', 6813, '2023-04-04 00:00:00'),
('ffc0f36b-b4be-4761-a920-4212f51ad85a', 'Vacuum Bags 12x16', 3607, '2024-05-02 00:00:00');

--
-- Indexek a kiírt táblákhoz
--

--
-- A tábla indexei `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`Id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
