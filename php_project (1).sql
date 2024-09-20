-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 20, 2024 at 04:07 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `php_project`
--

-- --------------------------------------------------------

--
-- Table structure for table `admins`
--

CREATE TABLE `admins` (
  `admin_id` int(11) NOT NULL,
  `admin_name` varchar(250) NOT NULL,
  `admin_email` text NOT NULL,
  `admin_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `admins`
--

INSERT INTO `admins` (`admin_id`, `admin_name`, `admin_email`, `admin_password`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `categories_product`
--

CREATE TABLE `categories_product` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(10,2) NOT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `MRP` int(10) NOT NULL,
  `protein_id` int(11) DEFAULT NULL,
  `monthly_grocery` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories_product`
--

INSERT INTO `categories_product` (`product_id`, `product_name`, `product_price`, `category_id`, `description`, `product_image`, `MRP`, `protein_id`, `monthly_grocery`) VALUES
(1, 'Badam', 640.00, 1, 'Almonds are a nutritious powerhouse beloved by Indian consumers. Packed with essential nutrients like vitamin E and magnesium they promote heart health enhance brain function and aid in weight management. Their low glycemic index also helps regulate blood sugar levels making them an ideal snack for diabetics. Versatile and delicious almonds can be enjoyed raw roasted or as a flavorful addition to various dishes. With their myriad of health benefits almonds are a must-have addition to any Indian diet offering both taste and wellness in every bite', 'badam loose', 687, 0, 0),
(2, 'Kaju', 760.00, 1, 'Cashews known as kaju in India are popular for their creamy texture and rich taste. These nuts are packed with vitamins and minerals offering benefits like improved heart health stronger bones and enhanced immunity. Their versatility makes them a great addition to both sweet and savory dishes adding flavor and texture. Whether eaten as a snack used in cooking or enjoyed as cashew butter kaju provides a delicious and nutritious boost to any diet.', 'kaju loose', 760, 0, 0),
(3, 'Kishmish', 280.00, 1, 'Kishmish or raisins are dried grapes that are widely consumed in India for their sweet flavor and chewy texture. Despite their small size kishmish are packed with essential nutrients like iron potassium and antioxidants. They promote digestive health boost energy levels and support bone health. Whether eaten on their own added to desserts or sprinkled over dishes kishmish offer a convenient and nutritious way to satisfy your sweet cravings.', 'kishmish loose', 280, 0, 0),
(4, 'Badam Katran', 660.00, 1, 'Badam katran or almond slices are thinly sliced almonds that are commonly used in Indian cuisine for their crunchy texture and nutty flavor. These almond slices are rich in healthy fats fiber and protein making them a nutritious addition to your diet. They support heart health aid in weight management and improve brain function. Whether added to breakfast cereals baked goods or savory dishes badam katran adds a delightful crunch and nutritional boost to your meals.', 'badam katran', 660, 0, 0),
(5, 'Kaju 2Fad', 640.00, 1, 'Kaju 2piece refers to whole cashew nuts often served as a pair. These nuts are not only a delightful snack but also offer several health benefits. Rich in vitamins minerals and healthy fats kaju 2piece supports heart health boosts energy levels and aids in weight management. Their creamy texture and mild flavor make them a versatile ingredient in both sweet and savory dishes. Whether enjoyed as a quick snack on-the-go or incorporated into recipes like curries desserts or stir-fries kaju 2piece adds a delicious crunch and nutritional value to your meals.', 'kaju 2fad', 640, 0, 0),
(6, 'Anjeer Packing', 1200.00, 1, '', 'anjeer', 1200, 1, 0),
(7, 'Channa Daal', 80.00, 2, 'Channa dal also known as split chickpeas is a highly nutritious legume popular in South Asian cuisine. It’s a versatile ingredient used in a variety of dishes from salads and soups to curries and desserts. Channa dal is rich in protein making it an excellent dietary option for vegetarians and vegans. It\'s also a good source of fiber which aids in digestion and promotes a feeling of fullness helping in weight management. Additionally it contains essential vitamins and minerals such as B-vitamins iron potassium and magnesium. Low in fat channa dal can help in maintaining cholesterol levels thereby supporting heart health. Its mild nutty flavor makes it a delightful addition to any meal.', 'channa daal', 80, 0, 0),
(8, 'Moong Daal', 110.00, 2, 'Moong dal or split yellow lentils is a staple legume in Indian cooking prized for its versatility and health benefits. It can be used in a wide array of dishes including soups stews salads and pancakes. Nutritionally moong dal is a powerhouse. It\'s packed with protein making it an excellent choice for vegetarians and vegans. It\'s also rich in dietary fiber which promotes healthy digestion and aids in weight management. Moong dal contains vital vitamins and minerals such as potassium magnesium iron and vitamin B6 contributing to heart health and overall well-being. Its low glycemic index makes it suitable for diabetics while its light and easy-to-digest nature is perfect for those with dietary restrictions.', 'moong daal', 110, 0, 0),
(9, 'Urad Daal', 120.00, 2, 'Urad Daal: Urad daal or black gram is a popular legume in Indian cuisine known for its rich texture and flavor. It\'s a key ingredient in dishes like dosa and dal makhani. Nutritionally urad daal is a great source of protein dietary fiber and B vitamins supporting digestion and muscle health.', 'urad daal', 120, 0, 0),
(10, 'Toor Daal', 165.00, 2, 'Toor Daal: Also known as pigeon peas toor daal is a staple in Indian and East African diets. Widely used in soups stews and the famous Indian dish sambar it\'s valued for its high protein and fiber content along with essential nutrients like potassium and magnesium promoting heart health.', 'toor daal', 165, 0, 0),
(11, 'Chawla', 115.00, 2, 'Chawla: Known as black-eyed peas or cowpeas Chawla beans are celebrated for their versatility in global cuisines. High in protein fiber and iron they support digestive health and help in managing blood sugar levels making them a nutritious option for diets.', 'chawla', 115, 0, 0),
(12, 'Masoor', 90.00, 2, 'Masoor: Masoor daal or red lentils cook quickly and are highly nutritious making them perfect for fast-paced lifestyles. They offer a good balance of protein fiber and essential minerals like iron and potassium contributing to energy levels and overall health.', 'masoor', 90, 0, 0),
(13, 'Kaala Masoor', 90.00, 2, 'Kaala Masoor: This variant black Masoor lentils provides a unique taste and texture. They\'re not only a great protein and fiber source but also rich in antioxidants that support heart health and inflammation reduction.', 'kaala masoor', 90, 0, 0),
(14, 'Moong Mogar', 120.00, 2, 'Moong Mogar: Split and hulled moong beans known as moong mogar are light and easy to digest. They\'re a staple in Indian cuisine used in salads soups and stir-fries. High in protein fiber and vitamins they support digestive health and metabolism.', 'moong mogar', 120, 0, 0),
(15, 'Urad Mogar', 135.00, 2, 'Urad Mogar: Hulled urad daal or urad mogar offers a milder softer version of whole urad daal. It\'s perfect for creamy dal recipes and rich in protein dietary fiber and vitamins aiding in digestion and cardiovascular health.', 'urad mogar', 135, 0, 0),
(21, 'Kala Chana', 80.00, 2, 'Kala chana, also known as black chickpeas, is a nutrient-rich legume widely popular in South Asian cuisine. These small, dark brown beans are a staple ingredient in many traditional dishes due to their robust flavor and numerous health benefits. Rich in protein, fiber, vitamins, and minerals, kala chana is prized for its ability to promote satiety, aid in digestion, and regulate blood sugar levels. It is often used in curries, salads, soups, and snacks, offering a hearty texture and earthy taste. Additionally, kala chana is celebrated for its versatility, making it a cherished component of vegetarian and vegan diets.', 'kala chana', 80, 1, 0),
(22, 'Chawla Mogar', 100.00, 2, 'Chawla Mogar: Chawla mogar refers to split and hulled black-eyed peas combining ease of cooking with nutritional benefits like high protein fiber and mineral content. They\'re excellent for quick healthy meals promoting digestive health and energy.', 'chawla mogar', 100, 0, 0),
(23, 'Red Chilli Powder', 260.00, 5, 'Red Chilli Powder: Red chilli powder is a spice made from dried red chillies that have been ground into a fine powder. It is widely used in Indian cuisine to add heat and flavor to dishes. Red chilli powder varies in spiciness depending on the type of chillies used and can range from mild to extremely hot. Apart from adding heat it also imparts a vibrant red color to curries soups stews and marinades. Red chilli powder is an essential ingredient in Indian cooking bringing depth and complexity to a wide range of dishes.', 'red chilli powder', 260, 0, 1),
(24, 'Haldi Powder', 200.00, 5, 'Haldi Powder: Haldi powder also known as turmeric powder is a bright yellow spice made from grinding dried turmeric roots. It is a staple in Indian cooking and is valued for its earthy flavor vibrant color and numerous health benefits. Haldi powder is commonly used as a seasoning in curries rice dishes soups and marinades. It not only adds a warm aromatic flavor to food but also offers anti-inflammatory and antioxidant properties. Haldi powder is also used in traditional Indian remedies and beauty treatments for its healing properties.', 'haldi powder', 200, 0, 1),
(25, 'Haldi Sabut', 180.00, 5, 'Haldi Sabut: Haldi sabut or whole turmeric refers to the fresh or dried rhizomes of the turmeric plant. It is a key ingredient in Indian cuisine valued for its distinct flavor vibrant color and medicinal properties. Haldi sabut is commonly used in pickles chutneys and spice blends imparting a warm earthy flavor to dishes. It is also used in Ayurvedic medicine for its anti-inflammatory antioxidant and digestive properties. Haldi sabut can be grated sliced or ground into a powder to be used in cooking or for making turmeric paste.', 'haldi sabut', 180, 0, 1),
(31, 'Dhaniya Powder', 160.00, 5, 'Dhaniya Powder: Dhaniya powder also known as coriander powder is a ground spice made from dried coriander seeds. It is a versatile seasoning in Indian cuisine prized for its citrusy floral flavor and aroma. Dhaniya powder is used in a wide range of dishes including curries soups stews marinades and spice blends. It adds depth and complexity to recipes enhancing the overall flavor profile. Dhaniya powder is also believed to have digestive benefits and is used in traditional Ayurvedic remedies.', 'dhaniya powder', 160, 0, 1),
(32, 'Dhaniya Sabut', 160.00, 5, 'Dhaniya Sabut: Dhaniya sabut or whole coriander seeds are the dried seeds of the coriander plant. They have a warm citrusy flavor and are a common ingredient in Indian cooking. Dhaniya sabut is used in pickles chutneys spice blends and curries imparting a subtle yet distinctive taste to dishes. The seeds can be toasted or ground before use to enhance their flavor. Dhaniya sabut is also valued for its medicinal properties including digestive benefits and anti-inflammatory properties.', 'dhaniya sabut', 160, 0, 1),
(33, 'double chabi chawal loose', 0.00, 8, 'Double Chabi is a renowned manufacturer and exporter of high-quality rice products in India. Their loose rice is known for its superior quality long grains and aromatic flavor. It’s perfect for making a variety of dishes from biryanis to pulao and is a staple in many Indian households.', 'double chabi chawal loose', 120, 0, 0),
(34, 'classic chawal loose', 0.00, 8, 'The term Classic Chawal Loose could refer to any high-quality loose rice sold under the Classic brand. This rice is often characterized by its long grains fluffy texture when cooked and subtle aroma. It’s versatile and can be used in a variety of dishes.', 'classic chawal loose', 0, 0, 0),
(35, 'ponya chawal loose', 0.00, 8, 'Ponya Chawal could refer to a specific variety of rice. However without more specific information it’s difficult to provide a detailed description. Generally loose rice is sold in bulk and is a cost-effective option for large households.', 'ponya chawal loose', 0, 0, 0),
(36, 'kachi Ghani orange label', 0.00, 8, 'Kachi Ghani is a brand known for its traditional wood-pressed oils. The Orange Label could refer to a specific variety of their oil. Kachi Ghani oils are known for their purity quality and rich flavor.', 'kachi Ghani orange label', 0, 0, 0),
(37, 'kacchi Ghani yellow label', 0.00, 8, 'Similar to the Orange Label the Yellow Label from Kachi Ghani could refer to another variety of their high-quality oils. These oils are often used in cooking for their health benefits and flavor.', 'kacchi Ghani yellow label', 0, 0, 0),
(45, 'chawal xxl', 0.00, 8, 'Chawal XXL could refer to a variety of rice characterized by extra-long grains. This type of rice is often used in dishes where the distinct grains are desired such as biryanis and pilafs.', 'chawal xxl', 0, 0, 0),
(46, 'puja chawal', 0.00, 8, 'Puja Chawal also known as Akshat is a type of rice used in various Hindu rituals and ceremonies. It’s often mixed with turmeric and offered during pujas.', 'puja chawal', 0, 0, 0),
(47, 'ganesh tea packet', 300.00, 16, 'Ganesh is a brand that offers a variety of tea products. Their tea is known for its rich flavor aroma and quality. It’s perfect for a refreshing morning cup or a relaxing evening brew.', 'ganesh tea', 300, 0, 1),
(48, 'kakriwal tea packet', 340.00, 16, 'Without more specific information it’s difficult to provide a detailed description of Kakriwal Tea Packet. However it could refer to a brand or type of tea sold in packets.', 'kakriwal tea', 340, 0, 1),
(49, 'bangar tea packet', 340.00, 16, 'Bangar is a brand that offers a variety of tea products including tea masala. Their tea is known for its unique blend of spices providing a refreshing and flavorful cup of tea.', 'bangar tea', 340, 0, 1);

-- --------------------------------------------------------

--
-- Table structure for table `category`
--

CREATE TABLE `category` (
  `category_id` int(11) NOT NULL,
  `category_name` varchar(255) NOT NULL,
  `category_image_url` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `category`
--

INSERT INTO `category` (`category_id`, `category_name`, `category_image_url`) VALUES
(1, 'Dry-Fruits', 'dry-fruits'),
(2, 'Daals', 'daals'),
(3, 'General Items', 'general items'),
(4, 'Sweets & Namkeens', 'sweets & namkeens'),
(5, 'masalas for chamak', 'masalas'),
(6, 'Readymade Masalas', 'readymade masalas'),
(7, 'Garam Masala & it\'s Item', 'garam masala category'),
(8, 'Rice', 'rice'),
(9, 'Oils', 'oils'),
(10, 'Ghee', 'ghee'),
(11, 'Aata, Flour, Sugar, & Salts', 'aata,flour,sugar & salts'),
(12, 'Maggi, Noodles, Pasta, Masala', 'maggi, noodles, pasta, masala'),
(13, 'Body Soap', 'body soap'),
(14, 'Clothing Soap', 'clothing soap'),
(15, 'Bartan Soap', 'bartan soap'),
(16, 'Tea & Coffee', 'tea & coffee'),
(17, 'Shampoo', 'shampoo'),
(18, 'Hair Oils', 'hair oils'),
(19, 'Body-Lotions,Facewash & Powder', 'other body care items'),
(20, 'Ketchups, Sauces', 'ketchups,sauces'),
(21, 'Toast & Biscuits', 'toast & biscuits'),
(22, 'Other Items Used In Kitchen', 'other kitchen ');

-- --------------------------------------------------------

--
-- Table structure for table `coupons`
--

CREATE TABLE `coupons` (
  `id` int(11) NOT NULL,
  `title` varchar(255) NOT NULL,
  `description` text NOT NULL,
  `coupon_code` varchar(50) NOT NULL,
  `color` varchar(20) NOT NULL,
  `discount_info` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `coupons`
--

INSERT INTO `coupons` (`id`, `title`, `description`, `coupon_code`, `color`, `discount_info`) VALUES
(1, 'Super-Saver', 'Get amazing discounts on high-value purchases!', 'MahaBhachat24', '#f0f8ff', '₹200 off on orders above ₹5000'),
(2, 'Good-Saver', 'Enjoy savings on your purchases!', 'Bachat24', '#f0e68c', '₹100 off on orders above ₹2500'),
(3, 'Saver', 'Affordable discounts for everyone!', 'Save20', '#ffe4b5', '₹20 off on orders above ₹1000');

-- --------------------------------------------------------

--
-- Table structure for table `employee`
--

CREATE TABLE `employee` (
  `employee_id` int(11) NOT NULL,
  `employee_name` varchar(250) NOT NULL,
  `employee_email` text NOT NULL,
  `employee_password` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `employee`
--

INSERT INTO `employee` (`employee_id`, `employee_name`, `employee_email`, `employee_password`) VALUES
(1, 'employee', 'employee@gmail.com', '21232f297a57a5a743894a0e4a801fc3');

-- --------------------------------------------------------

--
-- Table structure for table `feedback`
--

CREATE TABLE `feedback` (
  `serial no.` int(11) NOT NULL,
  `user_id` int(11) DEFAULT NULL,
  `main_subject` varchar(255) DEFAULT NULL,
  `matter` text DEFAULT NULL,
  `timestamp` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `feedback`
--

INSERT INTO `feedback` (`serial no.`, `user_id`, `main_subject`, `matter`, `timestamp`) VALUES
(1, 11, 'product-page', 'hiii', '2024-03-19 07:02:04');

-- --------------------------------------------------------

--
-- Table structure for table `orders`
--

CREATE TABLE `orders` (
  `order_id` int(11) NOT NULL,
  `order_cost` decimal(10,0) NOT NULL,
  `order_status` varchar(100) NOT NULL DEFAULT 'on_hold',
  `user_id` int(11) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_city` varchar(255) NOT NULL,
  `user_address` varchar(255) NOT NULL,
  `order_date` datetime NOT NULL DEFAULT current_timestamp(),
  `order_delivery_status` enum('received','packed','delivered') NOT NULL DEFAULT 'received'
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `orders`
--

INSERT INTO `orders` (`order_id`, `order_cost`, `order_status`, `user_id`, `user_phone`, `user_city`, `user_address`, `order_date`, `order_delivery_status`) VALUES
(112, 210, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-09 11:04:38', 'received'),
(113, 135, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-09 11:10:38', 'delivered'),
(114, 135, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-09 11:11:43', 'packed'),
(115, 210, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-10 11:22:52', 'received'),
(116, 210, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-10 11:22:54', 'received'),
(117, 210, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-10 11:22:54', 'received'),
(118, 210, 'not paid', 25, '0123456789', 'sdafd', 'adas', '2024-03-10 11:23:37', 'received'),
(119, 210, 'not paid', 25, '0123456789', 'sdafd', 'adas', '2024-03-10 11:27:04', 'received'),
(120, 135, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-10 13:01:23', 'received'),
(121, 135, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-10 13:01:25', 'received'),
(122, 135, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-10 13:01:26', 'received'),
(123, 115, 'not paid', 25, '0998277376', 'Satwar', 'fbxxxx', '2024-03-10 13:27:42', 'received'),
(124, 240, 'not paid', 25, '0998277376', 'Satwar', 'fbxxxx', '2024-03-10 13:34:34', 'received'),
(125, 180, 'not paid', 25, '9982773763', 'sdafd', 'adas', '2024-03-10 16:34:39', 'received'),
(126, 85, 'not paid', 25, '0123456789', 'sdafd', 'adas', '2024-03-10 16:42:05', 'received'),
(127, 95, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-10 16:48:42', 'received'),
(128, 330, 'not paid', 25, '0123456789', 'sdafd', 'adas', '2024-03-10 16:50:20', 'received'),
(129, 210, 'not paid', 25, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-10 22:43:39', 'received'),
(130, 3240, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:42:22', 'received'),
(131, 590, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:45:16', 'received'),
(132, 540, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:46:52', 'received'),
(133, 470, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:47:28', 'received'),
(134, 590, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:50:35', 'received'),
(135, 470, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:51:21', 'received'),
(136, 470, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:52:05', 'received'),
(137, 550, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:52:55', 'received'),
(138, 870, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:53:22', 'received'),
(139, 310, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:53:51', 'received'),
(140, 370, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:54:28', 'received'),
(141, 748, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 14:59:34', 'received'),
(142, 1680, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 15:01:32', 'received'),
(143, 1660, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 15:57:19', 'received'),
(144, 470, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 16:04:38', 'received'),
(145, 1190, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 22:34:47', 'received'),
(146, 470, 'not paid', 25, '0123456780', 'sdafd', 'adas', '2024-03-15 22:52:49', 'received'),
(147, 1540, 'not paid', 11, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-17 19:41:41', 'received'),
(148, 650, 'not paid', 11, '0123465613', 'Ajmer', 'Sadar bazar', '2024-03-17 19:43:02', 'received'),
(149, 400, 'not paid', 11, '0123456780', 'sdafd', 'adas', '2024-03-19 16:49:45', 'received'),
(150, 1680, 'not paid', 11, '0123465613', '125ajmer', 'Sadar bazar', '2024-03-26 11:55:29', 'received'),
(151, 4280, 'not paid', 11, '9982773763', '125ajmer', 'Sadar bazar', '2024-03-26 11:57:14', 'delivered'),
(152, 3080, 'not paid', 11, '0123465613', 'Ajmer', 'Sadar bazar', '2024-04-21 13:15:23', 'received'),
(153, 3400, 'not paid', 11, '0123465613', 'Ajmer', 'Sadar bazar', '2024-04-22 13:21:55', 'received'),
(154, 2340, 'not paid', 11, '0123465613', 'Ajmer', 'Sadar bazar', '2024-04-22 13:23:56', 'received'),
(155, 1680, 'not paid', 11, '0123465613', 'Ajmer', 'Sadar bazar', '2024-04-22 13:26:32', 'received'),
(156, 4040, 'not paid', 11, '0123465613', 'Ajmer', 'Sadar bazar', '2024-04-22 13:29:45', 'received'),
(157, 3560, 'not paid', 11, '0123465613', 'Ajmer', 'Sadar bazar', '2024-04-22 13:33:33', 'received'),
(158, 2340, 'not paid', 11, '0123465613', 'Ajmer', 'Sadar bazar', '2024-04-22 13:37:06', 'received');

-- --------------------------------------------------------

--
-- Table structure for table `order_items`
--

CREATE TABLE `order_items` (
  `item_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` varchar(255) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` int(6) NOT NULL,
  `product_weight` varchar(10) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `user_id` int(11) NOT NULL,
  `order_date` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `order_items`
--

INSERT INTO `order_items` (`item_id`, `order_id`, `product_id`, `product_name`, `product_image`, `product_price`, `product_weight`, `product_quantity`, `user_id`, `order_date`) VALUES
(181, 112, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '0000-00-00 00:00:00'),
(182, 114, '25', 'Haldi Sabut', 'haldi sabut', 45, '250g', 1, 25, '2024-03-09 05:41:43'),
(183, 114, '32', 'Dhaniya Sabut', 'dhaniya sabut', 40, '250g', 1, 25, '2024-03-09 05:41:43'),
(184, 115, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-10 05:52:52'),
(185, 118, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-10 05:53:37'),
(186, 119, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-10 05:57:04'),
(187, 120, '25', 'Haldi Sabut', 'haldi sabut', 45, '250g', 1, 25, '2024-03-10 07:31:23'),
(188, 120, '31', 'Dhaniya Powder', 'dhaniya powder', 40, '250g', 1, 25, '2024-03-10 07:31:23'),
(189, 123, '23', 'Red Chilli Powder ', 'red chilli powder', 65, '250g', 1, 25, '2024-03-10 07:57:42'),
(190, 124, '2', 'Kaju', 'kaju loose', 190, '250g', 1, 25, '2024-03-10 08:04:34'),
(191, 125, '1022', 'Tilli Gajjak', 'tilli gajjak', 130, '-', 1, 25, '2024-03-10 11:04:39'),
(192, 126, '1167', 'Pasta Rotini 500G', 'pasta rotini', 35, '-', 1, 25, '2024-03-10 11:12:05'),
(193, 127, '25', 'Haldi Sabut', 'haldi sabut', 45, '250g', 1, 25, '2024-03-10 11:18:42'),
(194, 128, '1005', 'Akhroat Giri Packing 250G', 'akhroat giri packing', 280, '-', 1, 25, '2024-03-10 11:20:20'),
(195, 129, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-10 17:13:39'),
(196, 130, '1001', 'Badam Packing 250G', 'badam packing', 200, '-', 1, 25, '2024-03-15 09:12:22'),
(197, 130, '1002', 'Kaju Packing 250G', 'kaju packing', 240, '-', 8, 25, '2024-03-15 09:12:22'),
(198, 130, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-15 09:12:22'),
(199, 130, '2', 'Kaju', 'kaju loose', 190, '250g', 1, 25, '2024-03-15 09:12:22'),
(200, 130, '3', 'Kishmish', 'kishmish loose', 70, '250g', 1, 25, '2024-03-15 09:12:22'),
(201, 130, '1003', 'Kishmish Packing 250G', 'kishmish packing', 100, '-', 7, 25, '2024-03-15 09:12:22'),
(202, 131, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-15 09:15:16'),
(203, 131, '2', 'Kaju', 'kaju loose', 190, '500g', 1, 25, '2024-03-15 09:15:16'),
(204, 132, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-15 09:16:52'),
(205, 132, '2', 'Kaju', 'kaju loose', 190, '250g', 1, 25, '2024-03-15 09:16:52'),
(206, 132, '3', 'Kishmish', 'kishmish loose', 70, '500g', 1, 25, '2024-03-15 09:16:52'),
(207, 133, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-15 09:17:28'),
(208, 133, '2', 'Kaju', 'kaju loose', 190, '250g', 1, 25, '2024-03-15 09:17:28'),
(209, 133, '3', 'Kishmish', 'kishmish loose', 70, '250g', 1, 25, '2024-03-15 09:17:28'),
(210, 134, '1238', 'Sarso Amla 200Ml Mrp = 105/-', 'sarso amla 200ml', 100, '-', 1, 25, '2024-03-15 09:20:35'),
(211, 134, '1239', 'Amla Oil 500Ml Mrp = 170', 'amla oil 500ml', 160, '-', 1, 25, '2024-03-15 09:20:35'),
(212, 134, '1240', 'Amla Oil 200Ml', 'amla oil 200ml', 0, '-', 1, 25, '2024-03-15 09:20:35'),
(213, 134, '1241', 'Bajaj Almond Oil 500Ml Mrp = 305/-', 'bajaj almond oil', 280, '-', 1, 25, '2024-03-15 09:20:35'),
(214, 135, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-15 09:21:21'),
(215, 135, '2', 'Kaju', 'kaju loose', 190, '250g', 1, 25, '2024-03-15 09:21:21'),
(216, 135, '3', 'Kishmish', 'kishmish loose', 70, '250g', 1, 25, '2024-03-15 09:21:21'),
(217, 136, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-15 09:22:05'),
(218, 136, '2', 'Kaju', 'kaju loose', 190, '250g', 1, 25, '2024-03-15 09:22:05'),
(219, 136, '3', 'Kishmish', 'kishmish loose', 70, '250g', 1, 25, '2024-03-15 09:22:05'),
(220, 137, '6', 'Anjeer Packing', 'anjeer', 300, '250g', 1, 25, '2024-03-15 09:22:55'),
(221, 137, '1001', 'Badam Packing 250G', 'badam packing', 200, '-', 1, 25, '2024-03-15 09:22:55'),
(222, 138, '6', 'Anjeer Packing', 'anjeer', 300, '250g', 1, 25, '2024-03-15 09:23:22'),
(223, 138, '1002', 'Kaju Packing 250G', 'kaju packing', 240, '-', 1, 25, '2024-03-15 09:23:22'),
(224, 138, '1004', 'Akhroat Packing 400G', 'akhroat packing', 280, '-', 1, 25, '2024-03-15 09:23:22'),
(225, 139, '1200', 'Surf Excel Soap Set', 'surf excel soap set ', 130, '-', 1, 25, '2024-03-15 09:23:51'),
(226, 139, '1187', 'Surf Excel 1Kg', 'surf excel 1kg ', 130, '-', 1, 25, '2024-03-15 09:23:51'),
(227, 140, '6', 'Anjeer Packing', 'anjeer', 300, '250g', 1, 25, '2024-03-15 09:24:28'),
(228, 140, '21', 'Kala Chana ', 'kala chana', 20, '250g', 1, 25, '2024-03-15 09:24:28'),
(229, 141, '1195', 'Surf Excel 500G', 'surf excel 500G', 68, '-', 1, 25, '2024-03-15 09:29:34'),
(230, 141, '1196', 'Surf Excel 3Kg', 'surf excel 3kg', 0, '-', 1, 25, '2024-03-15 09:29:34'),
(231, 141, '1197', 'Ghadi Sufr 1Kg', 'ghadi sufr 1kg ', 65, '-', 1, 25, '2024-03-15 09:29:34'),
(232, 141, '1199', 'Oswal 5Kg', 'oswal 5kg', 375, '-', 1, 25, '2024-03-15 09:29:34'),
(233, 141, '1198', 'Ghadi Surf 3Kg', 'ghadi surf 3kg', 190, '-', 1, 25, '2024-03-15 09:29:34'),
(234, 142, '1096', 'Swadeshi (Mufli)1Ltr', 'swadeshi (mufli)1ltr', 200, '-', 1, 25, '2024-03-15 09:31:32'),
(235, 142, '1111', 'Engine (Sarso) 1Ltr', 'engine (sarso) 1ltr', 160, '-', 1, 25, '2024-03-15 09:31:32'),
(236, 142, '1095', 'Chambal (Refined) 1Ltr', 'chambal (refined) 1ltr', 110, '-', 12, 25, '2024-03-15 09:31:32'),
(237, 143, '1095', 'Chambal (Refined) 1Ltr', 'chambal (refined) 1ltr', 110, '-', 12, 25, '2024-03-15 10:27:19'),
(238, 143, '1096', 'Swadeshi (Mufli)1Ltr', 'swadeshi (mufli)1ltr', 200, '-', 1, 25, '2024-03-15 10:27:19'),
(239, 143, '1097', 'Train (Sarso) 1Ltr', 'train (sarso) 1ltr', 140, '-', 1, 25, '2024-03-15 10:27:19'),
(240, 144, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-15 10:34:38'),
(241, 144, '2', 'Kaju', 'kaju loose', 190, '250g', 1, 25, '2024-03-15 10:34:38'),
(242, 144, '3', 'Kishmish', 'kishmish loose', 70, '250g', 1, 25, '2024-03-15 10:34:38'),
(243, 145, '1001', 'Badam Packing 250G', 'badam packing', 200, '-', 1, 25, '2024-03-15 17:04:47'),
(244, 145, '21', 'Kala Chana ', 'kala chana', 20, '250g', 1, 25, '2024-03-15 17:04:47'),
(245, 145, '1007', 'Mamra Badam Packing 250G', 'mamra badam packing', 500, '-', 1, 25, '2024-03-15 17:04:47'),
(246, 145, '1002', 'Kaju Packing 250G', 'kaju packing', 240, '-', 1, 25, '2024-03-15 17:04:47'),
(247, 145, '3', 'Kishmish', 'kishmish loose', 70, '250g', 1, 25, '2024-03-15 17:04:47'),
(248, 145, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-15 17:04:47'),
(249, 146, '1', 'Badam', 'badam loose', 160, '250g', 1, 25, '2024-03-15 17:22:49'),
(250, 146, '2', 'Kaju', 'kaju loose', 190, '250g', 1, 25, '2024-03-15 17:22:49'),
(251, 146, '3', 'Kishmish', 'kishmish loose', 70, '250g', 1, 25, '2024-03-15 17:22:49'),
(252, 147, '1023', 'Bikaji Rasgulla 1.25Kg', 'bikaji rasgulla', 180, '-', 5, 11, '2024-03-17 14:11:41'),
(253, 147, '1', 'Badam', 'badam loose', 160, '1kg', 1, 11, '2024-03-17 14:11:41'),
(254, 148, '6', 'Anjeer Packing', 'anjeer', 300, '500g', 1, 11, '2024-03-17 14:13:02'),
(255, 149, '1', 'Badam', 'badam loose', 160, '250g', 1, 11, '2024-03-19 11:19:45'),
(256, 149, '2', 'Kaju', 'kaju loose', 190, '250g', 1, 11, '2024-03-19 11:19:45'),
(257, 150, '2', 'Kaju', 'kaju loose', 760, '1kg', 1, 11, '2024-03-26 06:25:29'),
(258, 150, '1', 'Badam', 'badam loose', 640, '1kg', 1, 11, '2024-03-26 06:25:29'),
(259, 150, '3', 'Kishmish', 'kishmish loose', 280, '1kg', 1, 11, '2024-03-26 06:25:29'),
(260, 151, '1', 'Badam', 'badam loose', 640, '1kg', 1, 11, '2024-03-26 06:27:14'),
(261, 151, '2', 'Kaju', 'kaju loose', 760, '1kg', 1, 11, '2024-03-26 06:27:14'),
(262, 151, '1008', 'Munaka Packing 250G', 'munaka packing', 240, '-', 12, 11, '2024-03-26 06:27:14'),
(263, 152, '7', 'Channa Daal', 'channa daal', 80, '1kg', 1, 11, '2024-04-21 07:45:23'),
(264, 152, '1001', 'Badam Packing 250G', 'badam packing', 200, '-', 15, 11, '2024-04-21 07:45:23'),
(265, 153, '1001', 'Badam Packing 250G', 'badam packing', 200, '-', 17, 11, '2024-04-22 07:51:55'),
(266, 154, '1', 'Badam', 'badam loose', 640, '1kg', 1, 11, '2024-04-22 07:53:56'),
(267, 154, '2', 'Kaju', 'kaju loose', 760, '1kg', 1, 11, '2024-04-22 07:53:56'),
(268, 154, '3', 'Kishmish', 'kishmish loose', 280, '1kg', 1, 11, '2024-04-22 07:53:56'),
(269, 154, '4', 'Badam Katran', 'badam katran', 660, '1kg', 1, 11, '2024-04-22 07:53:56'),
(270, 155, '1', 'Badam', 'badam loose', 640, '1kg', 1, 11, '2024-04-22 07:56:32'),
(271, 155, '2', 'Kaju', 'kaju loose', 760, '1kg', 1, 11, '2024-04-22 07:56:32'),
(272, 155, '3', 'Kishmish', 'kishmish loose', 280, '1kg', 1, 11, '2024-04-22 07:56:32'),
(273, 156, '1001', 'Badam Packing 250G', 'badam packing', 200, '-', 1, 11, '2024-04-22 07:59:45'),
(274, 156, '1002', 'Kaju Packing 250G', 'kaju packing', 240, '-', 16, 11, '2024-04-22 07:59:45'),
(275, 157, '1001', 'Badam Packing 250G', 'badam packing', 200, '-', 1, 11, '2024-04-22 08:03:33'),
(276, 157, '1002', 'Kaju Packing 250G', 'kaju packing', 240, '-', 14, 11, '2024-04-22 08:03:33'),
(277, 158, '1', 'Badam', 'badam loose', 640, '1kg', 1, 11, '2024-04-22 08:07:06'),
(278, 158, '2', 'Kaju', 'kaju loose', 760, '1kg', 1, 11, '2024-04-22 08:07:06'),
(279, 158, '3', 'Kishmish', 'kishmish loose', 280, '1kg', 1, 11, '2024-04-22 08:07:06'),
(280, 158, '4', 'Badam Katran', 'badam katran', 660, '1kg', 1, 11, '2024-04-22 08:07:06');

-- --------------------------------------------------------

--
-- Table structure for table `specific_weight_products`
--

CREATE TABLE `specific_weight_products` (
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` decimal(10,0) NOT NULL,
  `MRP` int(11) DEFAULT NULL,
  `category_id` int(11) DEFAULT NULL,
  `description` text DEFAULT NULL,
  `product_image` varchar(255) DEFAULT NULL,
  `protein_id` varchar(11) DEFAULT NULL,
  `monthly_grocery` int(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `specific_weight_products`
--

INSERT INTO `specific_weight_products` (`product_id`, `product_name`, `product_price`, `MRP`, `category_id`, `description`, `product_image`, `protein_id`, `monthly_grocery`) VALUES
(0, 'Vijay Toast', 45, 45, 21, 'Suji toast, also known as Rava toast, is a popular Indian breakfast or snack item It’s made by spreading a mixture of semolina (suji or rava), yogurt, and finely chopped vegetables on bread slices, which are then toasted until crisp The recipe is simple and quick, making it a great choice for a busy morning or a quick snack', 'vijay toast', '', 1),
(1001, 'Badam Packing 250G', 200, 200, 1, 'Badam Packing 250g offers premium-quality almonds packed in a convenient and resealable 250g package These whole almonds are carefully selected for their freshness, taste, and nutritional value The packaging ensures that the almonds stay fresh and maintain their natural flavor Whether enjoyed as a healthy snack or used in cooking, these almonds are a versatile and nutritious option The 250g pack is ideal for individuals and families looking for a convenient portion size With its high-quality packaging and contents, Badam Packing 250g provides a satisfying and nutritious almond experience for all almond lovers', 'badam packing', '1', 1),
(1002, 'Kaju Packing 250G', 240, 240, 1, 'Our 250g pack of Kaju (Cashew Nuts) is a premium product carefully selected for its superior quality and taste Each cashew nut is handpicked and packed to ensure maximum freshness and flavor Perfect for snacking, cooking, or gifting, this conveniently sized pack offers great value and versatility Our Kaju undergoes stringent quality checks to ensure it meets the highest standards before reaching your hands Whether you\'re a health-conscious individual looking for a nutritious snack or a chef seeking top-quality ingredients, our 250g pack of Kaju is the perfect choice for all your culinary needs', 'kaju packing', '1', 1),
(1003, 'Kishmish Packing 250G', 100, 100, 1, 'Our 250g package of Kishmish (raisins) is carefully handpicked and packed to preserve their natural flavor and freshness These plump, sweet, and succulent raisins are an ideal snack on their own or a perfect addition to your favorite recipes, such as baked goods, oatmeal, or salads Our packaging ensures that the quality and taste of the Kishmish remain intact, making it a versatile and convenient choice for your snacking and cooking needs Whether you enjoy them as a nutritious snack or use them to enhance your culinary creations, our 250g pack of Kishmish is the perfect balance of convenience and quality', 'kishmish packing', '', 1),
(1004, 'Akhroat Packing 400G', 260, 260, 1, 'Discover the perfect blend of taste and nutrition with our Akhroat Packing 250G Delicately picked and expertly packed, our premium quality akhroat (walnuts) are a rich source of essential nutrients such as omega-3 fatty acids, antioxidants, and vitamin E Each 250g pack ensures the freshness, crunchiness, and natural flavor of the walnuts, making it an ideal snacking option for any occasion Whether you\'re looking for a healthy on-the-go snack or a versatile ingredient for your culinary creations, our Akhroat Packing 250G is your go-to choice Enjoy the goodness of nature with every bite and elevate your health and wellbeing', 'akhroat packing', '1', 1),
(1005, 'Akhroat Giri Packing 250G', 280, 599, 1, 'Akhroat Giri Packing 250G offers high-quality, premium walnuts in a convenient 250-gram pack Sourced from the finest walnuts, each nut is carefully selected for its size, taste, and nutritional value These walnuts are expertly packed to preserve their freshness, flavor, and crunchiness Ideal for snacking, baking, or adding to your favorite dishes, Akhroat Giri Packing 250G provides a delicious and nutritious option for your daily dietary needs With its convenient size, it\'s easy to carry and enjoy on the go Whether you\'re looking for a healthy snack or a versatile ingredient, this pack of walnuts delivers exceptional taste and quality', 'akhroat giri packing', '1', 0),
(1006, 'Pista Packing 250G', 260, 290, 1, 'Pista Packing 250G offers a premium selection of delicious, high-quality pistachios in a convenient 250-gram package Sourced from the finest pistachio farms, these nuts are carefully packed to preserve their natural flavor and freshness With their rich, buttery texture and distinctively nutty taste, these pistachios are a versatile and nutritious snack option Whether enjoyed on their own, added to recipes, or used as a topping for salads and desserts, Pista Packing 250G delivers the perfect balance of flavor and crunch This elegantly packaged product is an ideal choice for anyone seeking a delectable and satisfying snacking experience', 'pista packing', '', 0),
(1007, 'Mamra Badam Packing 250G', 500, 820, 1, 'Our 250g pack of Mamra Badam offers premium quality almonds carefully selected and packed to retain their freshness and flavor These hand-picked Mamra almonds are rich in nutrients and are perfect for snacking, baking, or adding to your favorite dishes The convenient 250g pack size is ideal for households and ensures a long shelf life Our packaging is designed to preserve the almonds\' natural goodness and keep them fresh for your enjoyment Whether you\'re looking for a healthy snack or an ingredient for your culinary creations, our Mamra Badam Packing 250g is the perfect choice', 'mamra badam packing', '', 0),
(1008, 'Munaka Packing 250G', 240, 240, 1, 'Munaka Packing 250G offers a convenient and delicious way to enjoy high-quality, sun-dried raisins Each 250g pack is carefully sealed to preserve freshness and flavor, making it ideal for snacking, baking, or topping cereals and yogurts These plump and juicy raisins are packed with natural sweetness and essential nutrients, including fiber, antioxidants, and vitamins Whether enjoyed on their own or incorporated into recipes, Munaka Packing 250G raisins are a versatile and satisfying choice for health-conscious individuals seeking a satisfying and nutritious snack option With its convenient packaging, this product is perfect for on-the-go lifestyles and busy households', 'munaka packing', '', 1),
(1009, 'Gola Pcs', 30, 30, 1, 'Gola Pcs is a leading provider of high-quality personal computer systems designed for both home and business use With a strong focus on performance, reliability, and affordability, Gola Pcs offers a diverse range of desktops, laptops, and all-in-one computers to meet the needs of a wide range of users Their systems are equipped with the latest technology and hardware components to deliver seamless functionality and exceptional user experience Gola Pcs also provides excellent customer support and after-sales service to ensure customer satisfaction Whether for work, gaming, or general use, Gola Pcs provides dependable computing solutions for every need', 'gola', '', 0),
(1010, 'Fool Makhana 250G', 220, 300, 1, 'Fool Makhana is a popular Indian snack made from roasted foxnuts, also known as lotus seeds This 250g pack of Fool Makhana offers a healthy and delicious option for snacking Makhana is known for its myriad health benefits, including being low in calories and high in fiber, making it a great choice for weight management and digestive health The snack is also rich in essential nutrients such as calcium, iron, and protein With its crunchy texture and savory flavor, Fool Makhana is a versatile snack that can be enjoyed on its own or added to various recipes for an extra nutritious boost', 'fool makhana', '', 0),
(1021, 'Mufli Gajjak', 100, 100, 4, 'Mufli Gajjak is a traditional Indian sweet made from jaggery, peanuts, and assorted spices This popular confection is renowned for its rich, nutty flavor and chewy texture To create Mufli Gajjak, raw peanuts are dry-roasted, then mixed with melted jaggery and a blend of aromatic spices such as cardamom and nutmeg The mixture is flattened into a thin layer and allowed to cool before being cut into bite-sized pieces Mufli Gajjak is often enjoyed during festivals and celebrations, offering a delightful combination of sweetness and crunch that delights the palate and captures the essence of Indian culinary tradition', 'mufli gajjak', '', 0),
(1022, 'Tilli Gajjak', 130, 130, 4, 'Tilli Gajjak, a popular Indian winter delicacy, is a traditional sweet made from sesame seeds, jaggery, and cardamom This delectable treat is especially enjoyed during the festival of Makar Sankranti in North India The sesame seeds are roasted and combined with jaggery syrup to form small, crispy clusters that are then flavored with cardamom, creating a perfect blend of sweetness and warmth Tilli Gajjak is not only a delightful confection but also holds cultural significance, symbolizing the celebration of the harvest season Its crunchy texture and rich flavors make it a sought-after indulgence during the winter months', 'tilli gajjak', '', 0),
(1023, 'Bikaji Rasgulla 1.25Kg', 180, 180, 4, 'Bikaji Rasgulla 1 25Kg is a popular Indian sweet prepared with spongy, soft, and juicy cottage cheese balls cooked in sugar syrup This traditional delicacy is a favorite at festivals, celebrations, and special occasions Bikaji Rasgulla 1 25Kg offers a generous portion size that can be shared among family and friends The brand Bikaji is known for its high-quality ingredients and authentic flavors, ensuring a delightful eating experience Whether enjoyed on its own or paired with other desserts, Bikaji Rasgulla 1 25Kg is a delicious and indulgent treat that captures the essence of India\'s rich culinary heritage', 'bikaji rasgulla', '', 0),
(1024, 'Bikaji Gulab Jamun 1.25Kg', 180, 180, 4, 'Bikaji Gulab Jamun 1 25Kg is a delectable Indian sweet treat that offers the perfect combination of deep-fried milk solids soaked in a flavored sugar syrup This traditional dessert is a truly indulgent experience, with its rich, soft texture and aromatic sweetness The generous 1 25Kg pack size ensures there\'s plenty to go around for family gatherings, celebrations, or simply satisfying a sweet craving Whether served warm or cold, these delectable Gulab Jamuns from Bikaji are an irresistible delight that will surely leave a lasting impression on your taste buds', 'bikaji gulab jamun', '', 0),
(1025, 'Gangwal Hing Namekeen 400G', 75, 120, 4, 'Gangwal Hing Namekeen is a 400g pack of savory Indian snacks infused with the rich and pungent flavor of hing (asafoetida) This delicious and aromatic blend of crispy, spicy ingredients offers a distinctive taste experience, perfect for satisfying your snack cravings The combination of crunchy textures and intense spice makes it an ideal accompaniment to tea or as a standalone snack Each bite delivers a burst of flavor that is sure to delight your taste buds The convenient 400g pack size ensures there\'s plenty to share with friends and family or to enjoy as a satisfying snack anytime', 'gangwal hing namkeen', '', 1),
(1026, 'Gangwal Mix Nameen 400G', 75, 120, 4, 'Gangwal Mix Nameen is a delightful snack that combines traditional and innovative flavors This 400g pack contains a unique blend of crispy namkeen, nuts, and spices, creating a perfect balance of savory and spicy taste The crispy texture and rich, aromatic spices make it an irresistible choice for snacking Whether enjoyed on its own or paired with a cup of tea, Gangwal Mix Nameen is sure to satisfy cravings for a flavorful and crunchy snack With its convenient packaging and delectable taste, this mix is a must-have for those who appreciate quality and variety in their snacks', 'gangwal mix namkeen', '', 0),
(1027, 'Gangwal Gatya 400G', 75, 120, 4, 'Gangwal Gatya 400G is a high-quality agricultural fertilizer known for its premium blend of essential nutrients designed to promote healthy and robust crop growth With a balanced formulation of nitrogen, phosphorus, and potassium, this fertilizer is suitable for a wide range of crops and soil types Its fine granular form ensures easy application and effective absorption by plants, leading to improved yield and quality Farmers trust Gangwal Gatya 400G for its consistent performance and long-lasting impact on crop vitality Whether used in conventional or organic farming, this fertilizer is a reliable choice for enhancing agricultural productivity and sustainability', 'gangwal gatya namkeen', '', 0),
(1028, 'Bikaji Bhujia 400G', 95, 115, 4, 'Bikaji Bhujia is a savory Indian snack that offers a burst of spicy flavors and crispy texture with every bite This 400g pack of Bikaji Bhujia is perfect for sharing with family and friends during gatherings or as a tasty snack for solo indulgence Made with high-quality ingredients and traditional recipes, this Bhujia is a popular choice for those who enjoy authentic Indian snacks The blend of spices and pulses creates a satisfyingly crunchy and aromatic experience, making it a favorite among snack enthusiasts Whether paired with tea or enjoyed on its own, Bikaji Bhujia is a delightful culinary treat', 'bikaji bhujia', '', 0),
(1029, 'Bikaji-Kuch-Kuch 400G', 95, 115, 4, 'Bikaji Kuch Kuch is a popular Indian snack offering a delightful combination of crunchy and savory flavors The 400g pack contains a generous portion of crispy and tangy gram flour sticks, seasoned with a blend of aromatic spices, making it a perfect accompaniment for tea or coffee With a tantalizing mix of flavors, including the zesty punch of chatpata masala, this snack is a favorite choice for social gatherings, movie nights, or simply indulging in a flavorful treat The convenient packaging ensures freshness and portability, making it an ideal snack to enjoy on-the-go or to share with friends and family', 'bikaji-kuch-kuch', '', 0),
(1030, 'Bikaji-Tana-Tan 400G', 95, 115, 4, 'Bikaji-Tana-Tan is a popular Indian snack made from rolled gram flour noodles that are seasoned with a blend of aromatic spices Packaged in a convenient 400g pack, it offers a delectable and crunchy snacking experience The savory and crispy texture of the Tana-Tan provides a satisfying crunch with every bite Perfect for tea-time or as a quick snack, this traditional Indian savory is ideal for sharing with friends and family Whether enjoyed on its own or paired with a refreshing beverage, Bikaji-Tana-Tan 400G is a flavorful and irresistible snack that captures the authentic taste of Indian cuisine', 'bikaji-tana-tan', '', 0),
(1031, 'Bikaji-Sabkuch 400G', 95, 115, 4, 'Bikaji-Sabkuch 400G is a popular Indian snack mix that offers a delicious blend of traditional flavors and textures This 400-gram pack contains a mouthwatering combination of roasted nuts, crunchy lentils, savory spices, and crunchy sev, creating a perfect balance of salty, spicy, and tangy flavors Whether enjoyed as an afternoon snack, party appetizer, or accompaniment to drinks, this premium blend is sure to delight the taste buds of snack enthusiasts Packed with high-quality ingredients and a satisfying crunch, Bikaji-Sabkuch 400G is a versatile and convenient snack option that captures the essence of authentic Indian snacking experience', 'bikaji-sabkuch', '', 0),
(1032, 'Hing 25G', 80, 80, 5, 'Hing, also known as asafoetida, is a pungent spice commonly used in Indian cuisine This 25g pack of hing is a popular choice for home cooks and professional chefs alike Hing is derived from the resin of the giant fennel plant and has a strong, savory flavor reminiscent of garlic and onion It is often used as a flavor enhancer in vegetarian dishes, lentil curries, and pickles The convenient 25g pack size makes it easy to store and use, adding depth and complexity to a wide range of dishes Hing is also known for its digestive properties and is a staple in traditional Ayurvedic medicine', 'hing', '', 1),
(1033, 'Hing (Special)10G', 240, 240, 5, 'Hing (Special)10G is a high-quality powdered form of asafoetida, also known as hing, a pungent spice commonly used in Indian cuisine This special grade of hing is carefully processed and purified to enhance its flavor and aroma With its strong, aromatic fragrance and intense umami taste, Hing (Special)10G adds depth and complexity to dishes It is often used as a flavor enhancer and digestive aid in vegetarian and lentil-based recipes The convenient powdered form of Hing (Special)10G makes it easy to incorporate into a wide variety of dishes, making it a staple in Indian cooking', 'hing-special', '', 0),
(1034, 'Ajwain 100G', 30, 30, 5, 'Ajwain, also known as carom seeds, is a popular spice in Indian cuisine with a pungent, bitter taste and strong aroma Ajwain 100g is a convenient packaging of this versatile spice, commonly used in curries, lentil dishes, and breads It is valued for its digestive and medicinal properties, often used to alleviate stomach discomfort and gas Ajwain seeds are known for their antifungal and antibacterial properties, making them a popular ingredient in traditional remedies This 100g pack of Ajwain offers a potent and flavorful addition to a wide range of savory dishes, providing both culinary and health benefits', 'ajwain', '', 1),
(1035, 'Sarson Dana 50G', 12, 12, 5, 'Sarson Dana, also known as mustard seeds, is a popular spice used in Indian cooking This 50g pack contains small, round mustard seeds known for their pungent flavor and aroma Sarson Dana adds a distinctive, slightly spicy taste to various dishes and is commonly used in pickles, curries, and marinades With its rich history in traditional medicine and culinary applications, Sarson Dana is a versatile ingredient that offers both flavor and potential health benefits This convenient 50g pack is perfect for home cooks and professional chefs looking to add an authentic touch to their Indian-inspired recipes', 'sarso dana', '', 1),
(1036, 'Jeeea 100G', 50, 50, 5, '', 'jeera', '', 1),
(1037, 'Sabut Sabji Masala (Special)', 0, 0, 6, 'Sabut Sabji Masala (Special) is a unique blend of whole spices and ground herbs crafted to elevate the flavor of vegetarian dishes This aromatic spice mix combines coriander seeds, cumin, cloves, cinnamon, and other premium ingredients, enhancing the taste and aroma of various vegetable preparations The medley of earthy, warm, and pungent flavors adds depth to curries, stir-fries, and sabzi dishes With its rich, complex profile, Sabut Sabji Masala (Special) is a versatile seasoning that brings a delightful complexity to everyday cooking Whether used to season potatoes, cauliflower, or mixed vegetables, it imparts a distinct and delightful taste to every bite', 'garam masala category', '', 1),
(1038, 'Sabut Tea Masala (Special)', 0, 0, 6, 'Sabut Tea Masala (Special) is a unique blend of whole spices perfect for enhancing the flavor of your daily cup of tea This aromatic and flavorful mix includes high-quality ingredients such as cardamom, cinnamon, cloves, and ginger, carefully selected to impart an exquisite taste and aroma to your tea The robust and rich fragrance of the masala instantly invigorates the senses, providing a delightful sensory experience with every sip Whether you\'re enjoying a morning pick-me-up or a relaxing evening beverage, Sabut Tea Masala (Special) elevates your tea-drinking experience to new heights, making it a must-have for tea enthusiasts everywhere', 'tea masala', '', 1),
(1039, 'Kitchen King 100G', 72, 79, 6, 'Kitchen King 100g is a high-quality blend of ground spices carefully crafted to elevate the taste of your culinary creations This flavorful blend is a perfect combination of aromatic spices like coriander, cumin, turmeric, red chili, and other savory ingredients Ideal for Indian cuisine, it adds depth and complexity to curries, gravies, and vegetable dishes The convenient 100g packaging ensures freshness and easy storage With its rich, distinctive flavor profile, Kitchen King 100g is a versatile spice mix that will undoubtedly enhance the taste and aroma of your dishes, making it a must-have in any kitchen', 'kitchen King', '', 0),
(1050, 'Mdh Sabzi Masala 100G', 0, 0, 6, 'MDH Sabzi Masala is a popular Indian spice blend that effortlessly adds a burst of flavor to various vegetable dishes This 100g pack is curated with a balanced mix of premium quality spices, including cumin, coriander, turmeric, and other aromatic ingredients, designed to enhance the taste and aroma of your vegetable preparations Whether it\'s a simple stir-fry or a complex curry, this versatile blend brings together the essence of traditional Indian spices, making it a must-have in any kitchen With its rich flavor profile and convenient packaging, MDH Sabzi Masala 100G is an essential tool for elevating your vegetable-based recipes', 'sabzi masala', '', 0),
(1051, 'Mdh Garam Masala 100G', 95, 105, 6, 'MDH Garam Masala is a quintessential spice blend that adds depth and complexity to a wide range of Indian dishes This 100g package contains a fragrant mix of carefully selected ground spices, including coriander, cumin, cloves, cardamom, and more, expertly blended to deliver a rich, aromatic flavor profile Ideal for seasoning meat, vegetables, stews, and rice, this versatile spice is a must-have in any Indian kitchen MDH Garam Masala is known for its ability to infuse dishes with warmth and a delightful kick, making it a popular choice for both traditional and modern cooking Elevate your culinary creations with this high-quality spice blend', 'garam masala', '', 0),
(1052, 'Chunky Chat Masala 100G', 75, 85, 6, 'Chunky Chat Masala 100G is a harmonious blend of spices that adds an authentic burst of flavor to your favorite snacks and dishes This zesty and aromatic masala is a staple in Indian cuisine, perfect for sprinkling over street food favorites like samosas, pakoras, and fruit chaat Its unique combination of tangy and savory notes, including cumin, coriander, mango powder, and black salt, creates a delightful taste sensation Whether used as a seasoning or a marinade for grilled meats and vegetables, this versatile masala adds depth and complexity to any recipe Elevate your culinary creations with the bold and irresistible taste of Chunky Chat Masala 100G', 'chunky chat masala', '', 0),
(1053, 'Shahi Paneer Masala 100G', 90, 100, 6, 'Shahi Paneer Masala 100g is a premium Indian spice blend that captures the essence of Mughlai cuisine This aromatic masala is carefully crafted from a blend of hand-picked spices, including cardamom, cinnamon, and cloves, to create a rich and flavorful seasoning mix It is specifically designed to elevate the taste of paneer, a popular Indian cheese, and create a luxurious, creamy dish fit for royalty This convenient 100g pack provides the perfect amount of masala to effortlessly prepare Shahi Paneer at home Whether used by novice cooks or experienced chefs, this masala guarantees an authentic and indulgent dining experience', 'shahi paneer masala', '', 0),
(1054, 'Chana Masala 100G', 80, 87, 6, 'Chana masala, also known as chole masala, is a popular Indian dish made with chickpeas cooked in a flavorful, spicy tomato-based sauce It is a staple in Indian cuisine and is typically seasoned with a blend of spices such as coriander, cumin, turmeric, and garam masala, among others The dish is often served with rice, naan, or roti and is commonly enjoyed as a vegetarian or vegan option Chana masala is known for its rich, aromatic flavors and hearty texture, making it a satisfying and delicious meal for anyone looking to experience the vibrant tastes of Indian cuisine', 'chana masala', '', 0),
(1055, 'Dal Makhani Masala 100G', 65, 73, 6, 'Dal Makhani Masala 100G is a premium blend of high-quality spices, specially crafted to enhance the flavor of traditional Indian dal makhani This aromatic masala mix contains a harmonious combination of ground spices, including cumin, coriander, garam masala, and other secret ingredients, carefully chosen to bring out the authentic taste of dal makhani Easy to use, this 100G pack is perfect for preparing rich, creamy, and flavorful dal makhani at home Whether you\'re an experienced cook or new to Indian cuisine, this masala blend guarantees a delicious and authentic dal makhani experience every time Elevate your cooking with the exquisite flavors of Dal Makhani Masala 100G', 'dal makhani masala', '', 0),
(1056, 'Pav Bhaji 50G', 40, 45, 6, 'Pav Bhaji is a popular Indian street food dish consisting of a spicy vegetable mash, typically including potatoes, peas, tomatoes, and onions, cooked with a blend of aromatic spices This ready-to-cook Pav Bhaji 100g pack offers a convenient and quick way to enjoy this flavorful dish at home Simply heat the mixture and serve with buttered pav (bread rolls) for a delicious and satisfying meal or snack The convenient portion size makes it perfect for individuals or small servings With its rich, spicy flavors and versatility, Pav Bhaji is beloved by food enthusiasts and a staple part of Indian cuisine', 'pav bhaji masala', '', 0),
(1057, 'Sabut Sabji Masala (Special)', 0, 0, 7, 'Sabut Sabji Masala (Special) is a unique blend of whole spices and ground herbs crafted to elevate the flavor of vegetarian dishes This aromatic spice mix combines coriander seeds, cumin, cloves, cinnamon, and other premium ingredients, enhancing the taste and aroma of various vegetable preparations The medley of earthy, warm, and pungent flavors adds depth to curries, stir-fries, and sabzi dishes With its rich, complex profile, Sabut Sabji Masala (Special) is a versatile seasoning that brings a delightful complexity to everyday cooking Whether used to season potatoes, cauliflower, or mixed vegetables, it imparts a distinct and delightful taste to every bite', 'garam masala category', '', 0),
(1058, 'Sabut Tea Masala (Special)', 0, 0, 7, 'Sabut Tea Masala (Special) is a unique blend of whole spices perfect for enhancing the flavor of your daily cup of tea This aromatic and flavorful mix includes high-quality ingredients such as cardamom, cinnamon, cloves, and ginger, carefully selected to impart an exquisite taste and aroma to your tea The robust and rich fragrance of the masala instantly invigorates the senses, providing a delightful sensory experience with every sip Whether you\'re enjoying a morning pick-me-up or a relaxing evening beverage, Sabut Tea Masala (Special) elevates your tea-drinking experience to new heights, making it a must-have for tea enthusiasts everywhere', 'tea masala', '', 0),
(1059, 'Shahi Jeera', 0, 0, 7, 'Shahi jeera, also known as black cumin or caraway seeds, is a popular spice used in Indian and Middle Eastern cuisine These tiny, crescent-shaped seeds have a warm, earthy flavor with hints of citrus and are often used to add depth and complexity to curries, rice dishes, and breads Shahi jeera is also valued for its potential health benefits, as it is rich in antioxidants and has been traditionally used in natural medicine to aid digestion, improve respiratory health, and boost the immune system Its distinctive aroma and flavor make it a versatile and essential spice in many culinary traditions', 'shahi jeera', '', 0),
(1071, 'Badi Elaichi', 0, 0, 7, 'Badi Elaichi, also known as black cardamom, is a highly aromatic spice commonly used in Indian cuisine It has a smoky flavor with hints of pine and camphor and is often used in savory dishes like curries, stews, and rice preparations The pods are darker in color and larger in size compared to green cardamom, and they have a strong, earthy aroma Badi Elaichi is also believed to have medicinal properties and is used in traditional Ayurvedic medicine for its digestive and respiratory benefits It adds depth and complexity to dishes and is a versatile spice in Indian cooking', 'badi elaichi', '', 0),
(1072, 'Kaali Mirch', 0, 0, 7, 'Kaali Mirch, also known as black pepper, is a flavorful spice widely used in culinary arts Derived from the peppercorn plant, it boasts a pungent aroma and strong, spicy taste Commonly employed in Indian, Thai, and other Asian cuisines, it adds depth and warmth to dishes Not only does it elevate the flavor of meats, vegetables, and soups, but it also offers health benefits, aiding in digestion and serving as a potent antioxidant Whether ground or whole, Kaali Mirch is a versatile and indispensable ingredient, enriching a myriad of culinary creations with its distinctive zing and earthy undertones', 'kaali mirch', '', 1),
(1073, 'Dalchini', 0, 0, 7, 'Dalchini, also known as Cinnamomum zeylanicum, is a highly aromatic spice derived from the inner bark of tropical evergreen trees Its warm, sweet, and woody flavor adds depth to a wide range of dishes, from sweet desserts to savory curries In addition to being a popular culinary ingredient, dalchini is also valued for its potential health benefits It has been used in traditional medicine to support digestion, reduce inflammation, and regulate blood sugar levels With its versatile flavor profile and potential health-promoting properties, dalchini is a staple in many cuisines and continues to be cherished for its unique taste and potential wellness benefits', 'dalchini', '', 0),
(1074, 'Chhoti Elaichi', 0, 0, 7, 'Chhoti Elaichi, also known as green cardamom, is a popular spice used in culinary and medicinal applications It is native to India and has a strong, sweet, and aromatic flavor This variety of cardamom is smaller in size and is often referred to as the queen of spices due to its unique taste and fragrance Chhoti Elaichi is commonly used in Indian cuisine, particularly in curries, sweets, and teas It is also valued for its digestive and therapeutic properties The spice is often used in Ayurvedic medicine for its carminative and antioxidant properties, making it a versatile and important ingredient in various cultural practices', 'elaichi', '', 1),
(1075, 'Laung', 0, 0, 7, 'Laung, also known as clove, is a popular spice widely used in cooking and traditional medicine With its distinct strong, sweet, and aromatic flavor, Laung adds depth to many dishes, such as curries, soups, and desserts It is derived from the unopened flower buds of the evergreen clove tree and is widely cultivated in tropical regions Beyond its culinary uses, Laung is also valued for its medicinal properties, including its ability to relieve toothaches, aid in digestion, and provide antioxidant benefits This versatile spice has a rich history of use in various cultures and continues to be an essential ingredient in global cuisine', 'laung', '', 1),
(1076, 'Chakra Phool', 0, 0, 7, 'Chakra Phool, also known as the Star Anise, is a star-shaped spice commonly used in Indian and Chinese cuisines With a strong licorice-like flavor and a subtle sweet aroma, it is utilized in spice blends, teas, and savory dishes The spice is often used in biryanis, curries, and soups to add depth and complexity to the flavor profile In addition to its culinary uses, Chakra Phool is believed to have medicinal properties and is used in traditional medicine to aid in digestion and alleviate coughs Its unique appearance and distinctive taste make it a popular ingredient in a wide range of dishes', 'chakra phool', '', 0),
(1077, 'Javitri', 0, 0, 7, 'Javitri, also known as mace, is a spice derived from the aril of the Myristica fragrans tree, which is native to Indonesia It is known for its intense, warm, and slightly sweet flavor, which makes it a popular ingredient in Indian, Middle Eastern, and North African cuisines Javitri is often used in spice blends, savory dishes, and sweet desserts, adding depth and complexity to the flavor profile It is also valued for its potential health benefits, including digestive aid and anti-inflammatory properties With its distinctive aroma and versatility in culinary applications, Javitri is a prized spice in many global cuisines', 'javitri', '', 0),
(1078, 'Tej Patta', 0, 0, 7, 'Tej patta, also known as Indian bay leaf, is an aromatic leaf commonly used in Indian cooking It is derived from the cassia tree and has a strong, sweet aroma with a hint of cinnamon and clove Tej patta is often used to flavor rice dishes, curries, and soups, adding a warm and fragrant complexity to the dish In traditional medicine, tej patta is believed to have digestive and anti-inflammatory properties It is a key ingredient in Indian spice blends like garam masala and biryani masala Tej patta is widely used in South Asian cuisine for its distinctive flavor and fragrance', 'tej patta', '', 1),
(1079, 'Soth', 0, 0, 7, 'Soth is a unique blend of ancient mysticism and futuristic technology It exists as a realm parallel to our own, hidden from the uninitiated Within Soth, powerful sorcerers wield arcane forces alongside engineers who harness the energy of the stars themselves The landscape is a breathtaking collage of crystalline spires, luminescent forests, and shimmering rivers that flow with liquid light Visitors to Soth must navigate its twisting pathways and encounter enigmatic creatures that dwell in the shadows It is a world of both wonder and danger, where the line between reality and fantasy blurs, and the unknown beckons with irresistible allure', 'soth', '', 0),
(1080, 'Chawal Xxl 1Kg', 110, 125, 8, 'Chawal XXL 1kg is a premium-quality, extra-long grain rice renowned for its aromatic fragrance and superior taste Sourced from the finest fields, each grain is carefully selected to ensure uniformity and perfection This extra-large pack of 1kg makes it perfect for large gatherings, events, and family meals Whether used in biryanis, pilafs, or as a side dish, Chawal XXL promises a delightful culinary experience every time With its superior texture and excellent cooking properties, it delivers fluffy, separate grains that are sure to satisfy even the most discerning palates Elevate your meals with the exceptional Chawal XXL 1kg', 'chawal XXL 1kg', '', 1),
(1081, 'India Gate 1Kg', 0, 0, 8, 'India Gate 1kg is a premium-quality basmati rice known for its aromatic fragrance, long grains, and exquisite taste Sourced from the fertile regions of India, this rice undergoes a meticulous aging process to enhance its texture and flavor It is non-sticky when cooked, making it perfect for various rice dishes such as biryani, pulao, and fried rice The packaging bears the iconic India Gate emblem, symbolizing trust and authenticity Whether used for everyday meals or special occasions, India Gate 1kg offers a delightful eating experience that captures the essence of Indian cuisine, making it a popular choice among rice enthusiasts worldwide', 'india gate 1kg', '', 0),
(1082, 'Kacchi Ghani Orange Label 10Kg', 750, 775, 8, 'Kacchi Ghani Orange label 10Kg is a premium quality mustard oil that is extracted using traditional cold-pressing methods, preserving its natural aroma, taste, and nutritional benefits This authentic Indian cooking oil is rich in monounsaturated and polyunsaturated fats, making it a healthier choice for everyday cooking Its distinctive orange label signifies superior quality and purity, ensuring a delightful cooking experience The 10Kg packaging is ideal for households and commercial kitchens, offering convenience and cost-effectiveness Whether used for frying, sautéing, or as a flavor enhancer, Kacchi Ghani Orange label 10Kg mustard oil adds a unique and authentic touch to a wide range of culinary creations', 'kacchi Ghani Orange label 10Kg', '', 1),
(1091, 'Kacchi Ghani Yellow Lebel 10Kg', 0, 0, 8, 'Kacchi Ghani Yellow Label 10kg is a premium cold-pressed mustard oil renowned for its distinctive aroma, flavor, and health benefits This high-quality oil is extracted using the traditional cold-pressing method, ensuring that the natural properties and nutrients of the mustard seeds are preserved It is rich in monounsaturated and polyunsaturated fats, essential fatty acids, and antioxidants, making it a healthy choice for cooking and culinary uses Kacchi Ghani Yellow Label 10kg is ideal for Indian cuisine, adding a unique and authentic taste to dishes Its 10kg packaging makes it suitable for commercial kitchens, restaurants, and bulk cooking purposes', 'kacchi Ghani yellow lebel 10kg', '', 0),
(1092, 'Chawal Xxl 10Kg', 110, 120, 8, 'Chawal XXL 10kg is a premium-quality, extra-long grain rice, carefully selected and expertly packed to meet the needs of large households and commercial kitchens Known for its distinct aroma, fluffy texture, and exceptional taste, this 10kg pack ensures an ample supply of rice for everyday cooking and special occasions With its extra-large grain size, it\'s ideal for biryani, pilaf, and other rice-based dishes, delivering a satisfying and gratifying dining experience Whether used in traditional Asian cuisines or fusion recipes, Chawal XXL 10kg promises consistent quality, convenience, and value, making it a staple in every kitchen', 'chawal XXL 10kg', '', 0),
(1093, 'Double Chabi Sabut Chawal 10Kg', 0, 0, 8, 'Double chabi Sabut chawal is a premium quality long-grain rice known for its aromatic fragrance and rich flavor Sourced from the finest fields, this 10kg pack offers great value for money Each grain is carefully processed and packaged to preserve its natural goodness, ensuring a perfect cooking experience every time With its unique double chabi packaging, the rice stays fresh and free from contaminants Ideal for biryani, pulao, and other rice dishes, this pack of Sabut chawal is a must-have for every kitchen Whether for daily meals or special occasions, this high-quality rice guarantees a delightful culinary experience', 'double chabi Sabut chawal 10kg', '', 0),
(1094, 'Galaxy Chawal 10Kg', 0, 0, 8, 'Galaxy Chawal offers a premium quality 10kg pack of long-grain rice, known for its aromatic fragrance and fluffy texture when cooked Sourced from the finest paddy fields, the rice is carefully processed and polished to maintain its natural nutrients and flavors With its extra-long grains, Galaxy Chawal 10kg pack is ideal for biryanis, pilafs, and other rice-based dishes Its consistent quality and taste make it a popular choice for families, restaurants, and catering businesses Whether for daily meals or special occasions, Galaxy Chawal 10kg pack provides a versatile and satisfying rice option for discerning consumers', 'galaxy chawal 10kg', '', 0),
(1095, 'Chambal (Refined) 1Ltr', 110, 110, 9, 'Chambal Refined Oil is a premium cooking oil that offers high quality and purity Sourced from the finest oilseeds, Chambal Refined Oil undergoes advanced refining processes to maintain its natural goodness and nutritional value With a 1-liter packaging, it is convenient for everyday cooking needs Chambal Refined Oil is known for its light color, mild flavor, and high smoke point, making it suitable for frying, sautéing, and other cooking techniques It is an ideal choice for health-conscious consumers seeking a reliable and versatile cooking oil that brings out the best flavors in their dishes', 'chambal (refined) 1ltr', '', 0),
(1096, 'Swadeshi (Mufli)1Ltr', 200, 200, 9, 'Swadeshi Mufli 1Ltr is a high-quality, locally sourced peanut oil that is perfect for all cooking needs Extracted through a careful process, this oil retains the natural flavor and aroma of peanuts, making it an excellent choice for traditional Indian dishes With its rich, golden color and nutty taste, Swadeshi Mufli 1Ltr adds a delightful touch to curries, stir-fries, and frying Its high smoke point makes it ideal for deep frying and retains the nutritional qualities even at high temperatures Proudly made in India, Swadeshi Mufli 1Ltr is a versatile and essential cooking oil for every Indian kitchen', 'swadeshi (mufli)1ltr', '', 0),
(1097, 'Train (Sarso) 1Ltr', 140, 140, 9, 'Train (Sarso) 1Ltr is a high-quality mustard oil known for its distinct flavor and health benefits This cooking oil is extracted from the finest mustard seeds, ensuring purity and authenticity With its rich, pungent aroma and golden color, Train (Sarso) 1Ltr adds a unique zest to various dishes, making it a popular choice in Indian cuisine Its high smoking point makes it suitable for deep frying, while its strong, peppery taste enhances the flavor of curries, pickles, and marinades Additionally, Train (Sarso) 1Ltr is rich in monounsaturated fats, antioxidants, and essential nutrients, making it a preferred choice for health-conscious consumers', 'train (sarso) 1ltr', '', 0),
(1111, 'Engine (Sarso) 1Ltr', 160, 160, 9, 'The Sarso Engine Oil is a high-quality lubricant specially designed for modern engines With a 1-liter capacity, this oil provides excellent protection against wear, rust, and corrosion, ensuring smooth engine performance and longevity It is formulated to meet the requirements of the latest engine technologies, offering superior viscosity and thermal stability The Sarso Engine Oil 1Ltr is suitable for gasoline and diesel engines, delivering optimal lubrication and maintaining engine cleanliness Its advanced additive package helps prevent sludge buildup and maintains optimal oil pressure This oil is the ideal choice for demanding driving conditions and provides peace of mind for vehicle owners', 'engine (sarso) 1ltr', '', 0),
(1112, 'Swadeshi 2 Ltr', 380, 380, 9, 'Swadeshi 2 Ltr is a versatile and durable water bottle suitable for use at home, office, or on-the-go With a capacity of 2 liters, it provides ample hydration for daily activities The bottle is made from high-quality, BPA-free materials, ensuring safety and longevity Its sleek and ergonomic design makes it easy to carry and use The wide mouth opening allows for easy cleaning and filling, while the secure lid prevents leaks and spills Whether you\'re hitting the gym, going for a hike, or simply need to stay hydrated throughout the day, Swadeshi 2 Ltr is the perfect companion for all your hydration needs', 'swadeshi 2 ltr', '', 0),
(1113, 'Chambal (Refined) 2Ltr', 240, 240, 9, 'Chambal (Refined) is a premium quality cooking oil known for its purity and freshness It is available in a convenient 2-liter pack, perfect for households and commercial kitchens Made from high-quality raw materials, Chambal (Refined) cooking oil undergoes a stringent refinement process to ensure a clear, light, and neutral flavor profile, making it suitable for various cooking applications With its excellent heat tolerance and low levels of impurities, Chambal (Refined) 2Ltr is a trusted choice for frying, sautéing, and other high-heat cooking methods It is a reliable option for those seeking a healthy and versatile cooking oil solution', 'chambal (refined) 2ltr', '', 0),
(1114, 'Train (Sarso) 5 Ltr', 600, 600, 9, 'Train (Sarso) 5 Ltr is a high-quality, pure mustard oil that is ideal for cooking, frying, and seasoning Extracted from handpicked mustard seeds, this 5-liter packaging is perfect for households or commercial kitchens, offering a large supply of premium cooking oil With its rich, pungent flavor and distinctive aroma, Train (Sarso) 5 Ltr adds a unique taste to a wide variety of dishes, including traditional Indian cuisine This versatile oil is known for its health benefits, as it is high in monounsaturated fats, omega-3 fatty acids, and antioxidants It is an essential staple for enhancing the flavor and nutritional value of your culinary creations', 'train (sarso) 5 ltr', '', 0),
(1115, 'Fortune (Refined) 5Ltr', 620, 695, 9, 'Fortune (Refined) 5Ltr is a premium cooking oil designed for high-quality culinary experiences Made from the finest, carefully selected ingredients, it offers a smooth texture and delicate flavor that enhances the taste of every dish This 5-liter pack ensures a long-lasting supply, ideal for commercial kitchens, restaurants, and households that value exceptional cooking ingredients With its superior refinement process, Fortune (Refined) 5Ltr guarantees purity and optimal cooking performance, making it a trusted choice for discerning chefs and home cooks alike Elevate your cooking with this top-tier cooking oil, known for its reliability, consistency, and exceptional end results', 'fortune (refined) 5ltr', '', 0),
(1116, 'Swadeshi (Mufli) 5Ltr', 880, 880, 9, 'Swadeshi (Mufli) 5Ltr is a high-quality cooking oil made from pure groundnut (peanut) oil, widely used in Indian households for its rich flavor and versatility Produced by Swadeshi, a trusted brand known for its commitment to quality and purity, this 5-liter pack provides ample supply for cooking various dishes and snacks The oil is extracted from carefully selected groundnuts, ensuring a natural and authentic taste Swadeshi (Mufli) 5Ltr is ideal for deep frying, sautéing, and seasoning, making it a popular choice for Indian cuisine It is also known for its nutritional benefits, making it a wholesome option for everyday cooking', 'swadeshi (mufli) 5ltr', '', 0),
(1117, 'Fortune 1 Tin', 1700, 1700, 9, 'Fortune 1 Tin is a versatile, durable, and reliable storage solution designed to protect and organize small items Its compact size makes it ideal for storing screws, nuts, bolts, and other small hardware components in workshops, garages, or households The tin\'s sturdy construction ensures that contents remain secure and protected from damage, while its sleek design allows for easy stacking and storage With its affordable price point and practical functionality, Fortune 1 Tin offers a convenient and efficient way to keep small items organized and easily accessible, making it a must-have tool for any home or professional workspace', 'fortune 1 tin', '', 1),
(1118, 'Chambal 1 Tin', 1660, 1660, 9, 'Chambal 1 Tin is a versatile and durable metal container for various storage needs With a sleek and shiny exterior, it adds a touch of modernity to any space The tin is made from high-quality steel, ensuring its strength and longevity Its airtight seal keeps contents fresh and secure, making it ideal for storing dry goods such as coffee, tea, and snacks The Chambal 1 Tin\'s compact size makes it convenient for travel or small living spaces Its simple, yet elegant design fits seamlessly into any home or office decor, making it a stylish and functional storage solution', 'chambal 1 tin', '', 1),
(1119, 'Swadeshi 1Tin', 2500, 2500, 9, 'Swadeshi 1Tin is a traditional Indian household product that embodies the concept of self-reliance and local craftsmanship Handcrafted by skilled artisans using age-old techniques, Swadeshi 1Tin offers a range of versatile and durable tin containers designed for storing various household items These containers are not only practical and eco-friendly but also serve as a reminder of India\'s rich cultural heritage Swadeshi 1Tin reflects a commitment to sustainable living and supports local communities With its simple yet elegant designs, Swadeshi 1Tin is a symbol of traditional craftsmanship and self-sufficiency in the modern world', 'swadeshi 1tin', '', 1),
(1120, 'Train 1Tin', 1750, 1750, 9, 'Train 1Tin is a revolutionary new transportation system designed to revolutionize rail travel Utilizing cutting-edge technology and innovative design, Train 1Tin offers a unique experience that combines speed, comfort, and sustainability The train features state-of-the-art propulsion systems, spacious and luxurious cabins, and advanced safety features to ensure a smooth and secure journey for passengers With its focus on energy efficiency and reduced environmental impact, Train 1Tin represents the future of eco-friendly mass transit Whether commuting within a city or traveling between distant destinations, Train 1Tin sets a new standard for modern rail transportation, delivering an unparalleled blend of convenience and sophistication', 'train 1tin', '', 0),
(1121, 'Saras 1Ltr', 510, 548, 10, 'Saras 1 liter is a high-quality cooking oil that is carefully processed to ensure purity and excellence Made from the finest seeds, Saras 1 liter offers a light and clean taste, perfect for all your cooking needs It is rich in essential nutrients, including omega-3 fatty acids, and is cholesterol-free, promoting heart health Saras 1 liter is ideal for frying, sautéing, and salad dressings, delivering a delicate flavor to your dishes Its convenient 1-liter packaging ensures long-lasting freshness and convenience in the kitchen Whether you\'re a professional chef or a home cook, Saras 1 liter is the perfect choice for all your culinary creations', 'saras 1ltr', '', 1),
(1122, 'Saras 500Ml', 260, 274, 10, 'Sara\'s 500ml is a versatile and convenient all-purpose cleaner designed to tackle tough stains and dirt on various surfaces Its powerful formula effectively eradicates grease, grime, and bacteria, leaving surfaces sparkling clean and fresh Formulated with eco-friendly ingredients, this multi-surface cleaner is suitable for use in the kitchen, bathroom, and other areas of the home The 500ml size makes it easy to handle and store, while the ergonomic design ensures effortless application Whether it\'s countertops, appliances, or floors, Sara\'s 500ml delivers exceptional cleaning results, making it a must-have for any household or commercial cleaning needs', 'saras 500ml', '', 0),
(1123, 'Amul 1Ltr', 580, 635, 10, 'Amul 1-liter milk is a premium-quality dairy product known for its rich and creamy texture Sourced from pure and high-quality Indian cow\'s milk, it is a wholesome and nutritious option for daily consumption Packed with essential nutrients like calcium, protein, and vitamins, this milk is ideal for providing the necessary nourishment to maintain a healthy lifestyle With its long shelf life and convenient packaging, Amul 1-liter milk is a versatile choice for households, catering to various needs such as drinking, cooking, and making dairy-based beverages Enjoy the purity and goodness of fresh milk with Amul 1-liter pack', 'amul 1ltr', '', 0);
INSERT INTO `specific_weight_products` (`product_id`, `product_name`, `product_price`, `MRP`, `category_id`, `description`, `product_image`, `protein_id`, `monthly_grocery`) VALUES
(1131, 'Amul Cow 1Ltr', 600, 650, 10, 'Amul cow milk is a high-quality, pure, and delicious choice for your daily dairy needs The 1-liter pack of Amul cow milk is packed with essential nutrients, vitamins, and minerals, making it a healthy and nourishing option for people of all ages Sourced from carefully selected cows, Amul cow milk is known for its rich taste and creamy texture This milk undergoes stringent quality checks to ensure that it meets the highest standards of purity and freshness Whether enjoyed on its own, with breakfast cereal, or used in cooking and baking, Amul cow milk is a versatile and wholesome choice for your family', 'amul cow 1ltr', '', 0),
(1132, 'Krishna 1Ltr', 420, 640, 10, 'Krishna 1-liter is a high-quality, multi-purpose lubricant designed to provide exceptional performance in various industrial applications Formulated with premium base oils and advanced additives, this product offers superior lubrication, anti-wear protection, and thermal stability Whether used in automotive, manufacturing, or other machinery, Krishna 1-liter ensures smooth operation, extends equipment life, and reduces maintenance costs Its versatile nature makes it suitable for both heavy-duty and light-duty equipment, while its reliable performance in extreme conditions makes it a trusted choice for diverse industries With Krishna 1-liter, you can trust in the longevity and efficiency of your machinery', 'krishna 1ltr', '', 0),
(1133, 'Krishna 500Ml', 220, 220, 10, 'Krishna 500ml is a high-quality and convenient packaging option for various liquid products With a capacity of 500ml, this container is ideal for storing and transporting beverages, cooking oils, condiments, and other liquids The sturdy and leak-proof design ensures maximum freshness and prevents spills, making it suitable for both commercial and household use The clear and transparent material allows for easy visibility of the contents, while the ergonomic shape and size make it easy to hold and pour Whether for personal or business use, Krishna 500ml provides a reliable and efficient solution for liquid storage needs', 'krishna 500ml', '', 0),
(1134, 'Patanjali 1Ltr', 620, 665, 10, 'Patanjali 1-liter product range includes a wide variety of health and wellness products, including edible oils, juices, and cleaning solutions These products are known for their high quality and natural ingredients, conforming to Ayurvedic principles Patanjali edible oils are cold-pressed and rich in nutrients, offering a healthy cooking option The juices are made from organic fruits and are free from preservatives, providing a refreshing and nutritious beverage option Additionally, the cleaning solutions are eco-friendly and effective for maintaining a clean and hygienic living space Patanjali 1-liter products are a popular choice for those seeking natural and holistic solutions for their daily needs', 'patanjali 1ltr', '', 0),
(1135, 'Doodhsagar', 535, 535, 10, 'Doodhsagar, located in the Indian state of Goa, is a magnificent waterfall that cascades from a height of 310 meters, making it one of India\'s tallest waterfalls The name Doodhsagar translates to Sea of Milk in Hindi, which is inspired by the milky white appearance of the water as it plunges into the pool below Surrounded by lush greenery and diverse flora and fauna, Doodhsagar is a popular destination for nature lovers and adventure enthusiasts Visitors can enjoy trekking through the forested areas to reach the waterfall and witness its awe-inspiring beauty, making it a breathtaking natural attraction in the region', 'doodhsagar 1ltr', '', 0),
(1136, 'Saras 5Ltr', 2700, 2700, 10, 'Sara\'s 5-liter container is a reliable and versatile storage solution for liquid products Made from high-quality, food-grade plastic, it is durable and ensures long-lasting freshness for its contents The container\'s secure screw-on lid provides a tight seal, preventing leaks and maintaining product integrity With its convenient size, it is suitable for storing a variety of liquids such as cooking oil, water, or cleaning solutions The transparent design allows for easy monitoring of the remaining contents Whether for domestic or commercial use, Sara\'s 5-liter container offers a practical and reliable storage option for any liquid storage needs', 'saras 5ltr', '', 0),
(1137, 'Amul 5Ltr', 2875, 3200, 10, 'Amul 5-liter milk is a premium dairy product that offers pure, rich, and creamy milk, sourced from the finest dairy farms This high-quality milk is pasteurized and packed in a convenient 5-liter package, ensuring freshness and convenience for households and commercial establishments Amul\'s 5-liter milk is known for its nutritional value, providing essential vitamins, minerals, and protein The milk is ideal for making various dairy products like yogurt, paneer, and desserts With a trusted brand reputation and a focus on quality, Amul 5-liter milk caters to the needs of individuals and businesses seeking reliable and wholesome dairy products', 'amul 5ltr', '', 0),
(1138, 'Uttam Sugar', 240, 325, 11, 'Uttam Sugar is a leading sugar manufacturer in India, renowned for its commitment to quality and innovation The company operates state-of-the-art sugar mills and has a strong presence in the domestic and international markets Uttam Sugar prides itself on its sustainable and ethically sourced sugarcane, using advanced technology to ensure the highest quality products With a focus on customer satisfaction and environmental responsibility, Uttam Sugar is a trusted name in the industry The company also invests in community development and social initiatives, reflecting its dedication to corporate social responsibility Uttam Sugar continues to be a symbol of excellence and integrity in the sugar industry', 'uttam sugar', '', 1),
(1139, 'Anmol Gold Aata 10Kg', 330, 400, 11, 'Anmol Gold Aata is a premium quality, whole wheat flour produced by Anmol Group This 10kg pack of Aata is made from the finest quality wheat grains, milled to perfection, and enriched with essential nutrients Anmol Gold Aata is ideal for making soft and fluffy rotis, puris, parathas, and other Indian breads It is carefully processed to retain the natural taste, aroma, and nutritional value of the wheat This hygienically packed 10kg Aata ensures long-lasting freshness and is perfect for large families or commercial use Enjoy the wholesome goodness of Anmol Gold Aata in all your culinary creations', 'anmol gold aata 10kg', '', 1),
(1140, 'Anmol Gold Aata 5Kg', 170, 220, 11, 'Anmol Gold Aata is a premium whole wheat flour known for its superior quality and nutritional value Sourced from the finest quality wheat grains, this 5kg pack of Anmol Gold Aata is perfect for making soft and fluffy rotis, chapatis, and other Indian breads It is enriched with essential nutrients and fiber, making it an ideal choice for maintaining a balanced and healthy diet With its fine texture and high gluten content, Anmol Gold Aata ensures excellent dough elasticity and easy kneading Elevate your cooking experience with Anmol Gold Aata and savor the authentic taste of freshly prepared homemade breads and rotis', 'anmol gold aata 5kg', '', 0),
(1151, 'Meda 500G', 20, 30, 11, 'Meda 500g is a high-quality, naturally sourced nutritional supplement designed to support overall health and vitality Packed with essential vitamins, minerals, and antioxidants, Meda 500g promotes a balanced diet and helps to bridge the gap in daily nutrient intake This comprehensive formula provides key nutrients for optimal immune function, energy production, and cellular protection With its convenient powder form, Meda 500g can be easily incorporated into smoothies, shakes, or meals for added nutritional support Whether used as a daily supplement or during periods of increased nutritional needs, Meda 500g is a reliable choice for promoting wellness and vitality', 'meda 500g', '', 1),
(1152, 'Suji 500G', 25, 30, 11, 'Suji, also known as semolina or rava, is a coarse flour made from durum wheat This 500g package of suji is perfect for a variety of culinary uses It can be used to make traditional Indian dishes such as upma, rava dosa, and suji halwa, as well as pasta, couscous, and various baked goods Suji is known for its versatility and nutrition, as it is a good source of energy, protein, and fiber With its fine texture and nutty flavor, this 500g pack of suji is a pantry staple for any kitchen, suitable for preparing a wide range of delicious and satisfying meals', 'suji 500g', '', 1),
(1153, 'Besan 500G', 45, 60, 11, 'Besan, also known as chickpea flour or gram flour, is a gluten-free flour made from ground chickpeas This 500g packet of besan is a staple ingredient in Indian, Pakistani, and Bangladeshi cuisines, used to make a variety of dishes such as pakoras, pancakes, and sweets Rich in protein, fiber, and various nutrients, besan is versatile and can be used as a thickening agent for soups and gravies, as well as a substitute for wheat flour in baking Its nutty flavor and light texture make it a popular choice for both savory and sweet recipes, offering a healthy and delicious alternative to traditional flours', 'besan 500g', '', 1),
(1154, 'Tata Namak', 25, 28, 11, 'Tata Namak is a premium quality table salt produced by Tata Chemicals, one of India\'s leading chemical manufacturing companies This pure and natural salt is derived from the pristine waters of the Sambhar Salt Lake in Rajasthan, India Tata Namak is known for its fine texture, rich taste, and high mineral content, making it a popular choice for culinary use It is carefully processed to retain its natural purity and quality, ensuring that it adds the perfect flavor to a wide variety of dishes With its trusted brand reputation and commitment to excellence, Tata Namak continues to be a staple in Indian kitchens', 'tata namak', '', 1),
(1155, 'Kala Namak 100G', 10, 20, 11, 'Kala namak, also known as black salt, is a specialty mineral salt used in South Asian cuisine for its distinctive smoky and sulfurous flavor This 100g package of kala namak is a versatile seasoning ingredient, adding a depth of flavor to dishes such as chaats, fruit salads, chutneys, and more The coarse texture and dark color of kala namak make it easy to sprinkle and incorporate into various dishes With its unique taste and aroma, this 100g pack of kala namak is an essential ingredient for anyone looking to explore and enhance the flavors of South Asian cooking', 'kala namak 100g', '', 1),
(1156, 'Sendha Namak 100G', 10, 20, 11, 'Sendha namak, also known as rock salt, is a type of salt that is commonly used in Indian cuisine and Ayurvedic medicine This 100g pack of Sendha namak is a great addition to any kitchen, providing a pure and natural alternative to regular table salt It is harvested from salt mines and is believed to have numerous health benefits, including aiding digestion and reducing acidity This high-quality rock salt can be used for cooking, seasoning, and in various traditional remedies With its distinctive flavor and mineral-rich composition, Sendha namak is a must-have ingredient for anyone looking to enhance their culinary creations and promote overall wellness', 'sendha namak 100g', '', 1),
(1157, 'Maggi 6Pack', 77, 77, 12, 'Enjoy the convenience of Maggi 6-pack, a versatile and delicious instant noodle meal ready in minutes Each pack contains six individual servings, providing quick and easy hunger relief for busy individuals and families With its signature blend of spices and flavors, Maggi offers a satisfying and comforting experience that suits various tastes Whether enjoyed as a simple snack or as part of a full meal, this convenient 6-pack allows for effortless preparation and portion control Stock up on Maggi 6-pack to have a convenient and tasty option on hand for any time hunger strikes', 'maggi 6pack', '', 1),
(1165, 'Maggi 4Pack', 56, 56, 12, 'Maggi 4-pack offers a convenient and versatile solution for quick and delicious meals Each pack contains four individual servings of Maggi\'s iconic noodles in a range of popular flavors, making it an ideal choice for busy individuals and families Whether enjoyed as a snack, a side dish, or a complete meal, Maggi noodles are known for their savory taste and satisfying texture With easy preparation and a short cooking time, the 4-pack provides a practical option for a variety of occasions, from late-night cravings to lunchtime at the office Maggi 4-pack is a go-to choice for anyone seeking a flavorful and convenient meal solution', 'maggi 4pack', '', 0),
(1166, 'Pasta Macroni 500G', 35, 35, 12, 'Indulge in the classic Italian comfort food with our 500g pack of pasta macaroni Made from the finest durum wheat semolina, each piece is carefully crafted to deliver the perfect al dente texture Whether you\'re creating a creamy mac and cheese, a zesty marinara, or a hearty pasta salad, our macaroni provides the ideal canvas for your culinary creations With its versatile shape and sturdy composition, this pasta holds sauces and flavors beautifully, ensuring a satisfying dining experience every time Elevate your meals with this essential pantry staple, and treat your taste buds to a delightful journey through Italian cuisine', 'pasta macroni', '', 1),
(1167, 'Pasta Rotini 500G', 35, 35, 12, 'Rotini pasta is a classic Italian pasta shape, characterized by its corkscrew or spiral shape This 500g package of rotini pasta is made from durum wheat semolina, ensuring a firm texture and excellent taste when cooked With its unique shape, rotini pasta is perfect for holding onto thick, chunky sauces, making it a versatile choice for a variety of recipes Whether tossed in a creamy alfredo sauce, mixed with vegetables and olive oil, or added to a hearty pasta salad, this 500g pack of rotini pasta is an essential pantry item for any pasta lover', 'pasta rotini', '', 0),
(1168, 'Pasta Penne 500G', 35, 35, 12, 'Pasta Penne 500g is a classic Italian pasta made from durum wheat semolina This versatile and popular pasta features a tubular shape with angled ends, perfect for capturing and holding onto creamy sauces or chunky vegetables The 500g packaging is convenient for families or gatherings, providing enough pasta for several servings Penne is a beloved choice for dishes like arrabbiata, carbonara, or baked pasta bakes The al dente texture and firmness of the penne make it an excellent choice for various culinary creations Enjoy the authentic taste and quality of Italy with Pasta Penne 500g', 'pasta penne', '', 0),
(1169, 'Maggi Masala', 5, 5, 12, 'Maggi Masala is a popular Indian spice blend used in a variety of dishes It is a versatile mix of aromatic spices, including cumin, coriander, turmeric, red chili powder, and other flavor-enhancing ingredients The rich and complex flavor profile of Maggi Masala adds depth and warmth to a wide range of culinary creations, from traditional Indian curries to soups, stews, and marinades Its distinctive blend of savory and earthy notes makes it a must-have ingredient for anyone looking to infuse their dishes with an authentic taste of India Whether used as a seasoning or a base for cooking, Maggi Masala elevates the taste of any dish', 'maggi masala', '', 1),
(1170, 'Pasta,Noodles Masala', 35, 42, 12, 'Pasta and noodles masala is a savory and aromatic blend of spices designed to enhance the flavor of pasta and noodles dishes This ready-to-use seasoning mix typically contains a mixture of aromatic spices such as cumin, coriander, turmeric, and paprika, along with other flavor enhancers like garlic, onion, and salt The masala adds depth and complexity to the dish, imparting a rich and fragrant taste to the pasta or noodle preparations Whether used in traditional Italian pasta recipes or Asian noodle dishes, the pasta and noodles masala elevates the culinary experience, allowing for a delicious and satisfying meal', 'pasta nasala', '', 1),
(1171, 'Noodles 700g', 45, 65, 12, 'Noodles are a versatile staple in many cuisines, made from unleavened dough of wheat, rice, or other grains, typically stretched, rolled, or extruded into various shapes They are a popular, quick, and satisfying option for a meal, often paired with flavorful broths, sauces, and toppings From the comforting warmth of a bowl of ramen to the spicy kick of a bowl of stir-fried noodles, their appeal spans the globe Noodles come in a variety of textures, sizes, and flavors, offering endless possibilities for creativity in the kitchen Whether enjoyed in soups, stir-fries, or salads, noodles are a beloved part of culinary traditions worldwide', 'noodles', '', 1),
(1172, 'Life Buoy 125Gx5 Mrp = 150/-', 140, 150, 13, 'The life buoy 125gx5 is a crucial safety device designed to provide buoyancy for individuals in water emergencies Made with high-quality materials, this life buoy is lightweight and easily portable, making it a reliable option for water-related activities With a MRP of 150/-, this product offers exceptional value for money, ensuring that safety is affordable and accessible for all Its compact size and durable construction make it suitable for various water environments, from swimming pools to open water Whether for personal or commercial use, the life buoy 125gx5 is an essential safety tool that provides peace of mind in water-related situations', 'life buoy 1set', '', 0),
(1180, 'Lux 100Gx4 Mrp = 128/-', 120, 128, 13, 'Lux 100gx4 soap bars offer a luxurious bathing experience at an affordable price Each bar is enriched with moisturizing properties to keep the skin soft and supple With a captivating fragrance, the soap provides a refreshing and indulgent shower experience The pack of four bars ensures long-lasting usage, making it a cost-effective choice Priced at 128/- MRP, this value pack offers great savings while delivering the quality and effectiveness Lux is known for Whether used for daily cleansing or as a pampering treat, Lux 100gx4 soap bars are a popular choice for those seeking a balance of luxury and affordability in their skincare routine', 'lux 1set', '', 0),
(1181, 'No.1 125Gx4 Mrp = 120/-', 110, 120, 13, 'The No 1 125gx4 is a convenient pack of four items, with each item weighing 125g Priced at a competitive MRP of 120/-, this product offers great value for money Whether it\'s for personal use or as a gift, this pack provides a cost-effective option for customers The product is designed to meet the needs of individuals and families alike, offering a convenient and affordable solution for various purposes With its accessible pricing and practical packaging, the No 1 125gx4 is a reliable choice for those seeking quality and affordability in their everyday purchases', 'no.1 1set', '', 0),
(1182, 'Dettol 150Gx4 Mrp = 180/-', 170, 180, 13, 'Dettol 150gx4 is a pack of four antiseptic soap bars, priced at 180/- Dettol is a trusted and widely recognized brand known for its germ protection properties This pack offers convenience and value for money, making it an essential addition to any household The soap provides effective protection against a wide range of germs and bacteria, ensuring cleanliness and hygiene Its powerful formula ensures a thorough and refreshing cleanse, leaving the skin feeling revitalized and protected With Dettol 150gx4, users can maintain a healthy and hygienic lifestyle, making it a popular choice for families and individuals alike', 'dettol 1set', '', 0),
(1183, 'Dyna 125Gx4 Mrp = 125/-', 115, 125, 13, 'The Dyna 125GX4 is a powerful and efficient motorbike that boasts a 125cc engine for enhanced performance and speed Priced at 125/-, this affordable yet high-quality bike offers great value for money With its sleek design and sturdy build, it is suitable for daily commuting and recreational riding The advanced features and durable components ensure a smooth and enjoyable riding experience Whether navigating city streets or exploring open roads, the Dyna 125GX4 delivers reliability, comfort, and style Its affordability, combined with its impressive performance, makes it a popular choice among motorcycle enthusiasts', 'dyna 1set', '', 0),
(1184, 'Pears Pcs', 80, 80, 13, 'Pears are sweet, juicy fruits with a distinct, bell-shaped appearance They come in a variety of colors, including green, red, and yellow, and have a smooth, thin skin Pears are rich in dietary fiber, antioxidants, and vitamin C, making them a nutritious and refreshing snack They can be enjoyed fresh, added to salads, or used in cooking and baking Pears pair well with cheeses, nuts, and caramel, and are often used in desserts like tarts and pies With their delicate flavor and versatile uses, pears are a popular choice for adding a touch of sweetness to any meal', 'pears 1set.', '', 0),
(1185, 'Dove 1Pcs', 100, 100, 13, 'Dove 1 piece represents a premium offering in the personal care segment This luxurious and well-renowned product promises to deliver gentle yet effective cleansing and nourishment Embracing the brand\'s signature moisturizing formula, this Dove bar provides a rich, creamy lather that pampers the skin and leaves it feeling soft and smooth Infused with mild cleansers and 1/4 moisturizing cream, it ensures a gentle and hydrating cleansing experience The subtle, refreshing fragrance enhances the overall indulgence, making it a favored choice for daily use Trusted by generations, Dove 1 piece continues to uphold its commitment to nurturing and caring for all skin types', 'dove 1set', '', 0),
(1186, 'Jo 125Gx4 Mrp-105/-', 90, 105, 13, 'The JO 125GX4 is a high-performance, 4-stroke motorcycle engine oil specifically designed for use in small to medium-sized motorcycles With a superior formula that provides optimal lubrication and protection, this oil is ideal for maintaining the smooth operation and longevity of your motorcycle\'s engine Its affordable MRP of 105/- makes it a cost-effective choice for riders who want premium-quality performance without breaking the bank Whether you\'re a daily commuter or a weekend rider, the JO 125GX4 MRP-105/- offers reliable performance and peace of mind, ensuring that your motorcycle\'s engine stays in top condition for many miles to come', 'jo 1set', '', 1),
(1187, 'Surf Excel 1Kg', 130, 136, 14, 'Surf Excel 1kg detergent powder is a high-quality laundry solution designed to tackle tough stains and deliver a superior cleaning performance This powerful formula is specially formulated to remove stubborn stains like mud, grease, and food spills, leaving your clothes looking clean and smelling fresh Its advanced technology ensures effective cleaning even in hard water, while protecting the fabric\'s color and texture The convenient 1kg pack size makes it suitable for regular use and easy storage Surf Excel is trusted by millions of households worldwide, making it a popular choice for efficient and reliable laundry care', 'surf excel 1kg', '', 0),
(1195, 'Surf Excel 500G', 68, 68, 14, 'Surf Excel 500g is a powerful laundry detergent designed to effectively remove tough stains while preserving the color and fabric of your clothes Its advanced formula ensures deep cleaning and stain removal, even on stubborn and dried-on stains The detergent is suitable for both top-load and front-load washing machines and is ideal for washing a variety of fabrics, including cotton, silk, and synthetics With its long-lasting fragrance and gentle care for clothes, Surf Excel 500g provides a thorough and refreshing laundry experience Trusted by households for generations, Surf Excel is a reliable choice for maintaining clean and fresh laundry', 'surf excel 500G', '', 0),
(1196, 'Surf Excel 3Kg', 360, 390, 14, 'Surf Excel 3kg is a high-quality laundry detergent designed to effectively remove tough stains while being gentle on clothes Its advanced formula is specially crafted to tackle dirt, grime, and stubborn stains, providing a deep clean for a wide range of fabrics The 3kg packaging size offers convenience and value for money, making it ideal for households with a high laundry load Surf Excel\'s superior cleaning power ensures a fresh and bright finish for clothes, leaving them looking and feeling as good as new Trusted by families for generations, Surf Excel 3kg is the go-to choice for a reliable and efficient laundry solution', 'surf excel 3kg', '', 1),
(1197, 'Surf Excel 5g', 600, 770, 0, '', '', '', 0),
(1198, 'Ghadi Sufr 1Kg', 65, 71, 14, 'Ghadi Sufr is a popular laundry detergent powder known for its powerful stain-removing and fabric-cleansing properties The 1kg pack is designed to cater to smaller households or as a trial size for new users Formulated with advanced technology, it effectively removes tough stains and dirt from clothes, leaving them fresh and clean The convenient packaging makes it easy to handle and store Ghadi Sufr\'s pleasant fragrance leaves clothes smelling fresh and revitalized Its innovative formula ensures color protection and fabric care, making it suitable for various types of garments Trusted by consumers, Ghadi Sufr 1kg offers a reliable and efficient laundry solution', 'ghadi sufr 1kg', '', 0),
(1199, 'Ghadi Surf 3Kg', 190, 210, 14, 'Ghadi Surf 3kg is a popular laundry detergent in India known for its powerful cleaning abilities and refreshing fragrance This high-quality detergent is specially formulated to remove tough stains and dirt, leaving clothes looking clean and smelling fresh It contains advanced cleaning agents that effectively work on a variety of fabrics, including cotton, synthetics, and blends With its long-lasting fragrance, Ghadi Surf ensures that clothes smell great even after multiple washes The 3kg pack is convenient for households and offers great value for money Ghadi Surf 3kg is a trusted choice for achieving spotless and aromatic laundry results', 'ghadi surf 3kg', '', 0),
(1200, 'Oswal 5Kg', 375, 500, 14, 'Oswal 5kg is a high-quality, durable, and versatile product designed for various applications With a compact and lightweight design, it is easy to handle and transport, making it suitable for both professional and DIY use The 5kg capacity allows for efficient use in a range of tasks, from construction and industrial projects to home repair and maintenance The Oswal 5kg features robust construction and reliable performance, ensuring long-lasting durability and consistent results Whether used for measuring, mixing, or transporting materials, this product offers convenience and efficiency, making it a valuable addition to any toolkit or workspace', 'oswal 5kg', '', 0),
(1201, 'Surf Excel Soap Set', 120, 122, 14, 'Surf Excel soap set is a trusted and popular laundry detergent that delivers powerful stain removal and deep cleaning for clothes This soap set is designed to tackle tough stains such as mud, chocolate, grease, and grass stains, leaving clothes clean and fresh Its advanced formula ensures effective cleaning without damaging the fabric The soap set is suitable for both hand washing and machine washing, providing excellent results every time With Surf Excel, you can trust that your clothes will be thoroughly cleaned and brightened, making it a reliable choice for everyday laundry needs', 'surf excel soap set', '', 1),
(1202, 'C.P Tub 4Kg', 340, 340, 14, 'The C P Tub 4kg is a durable and versatile plastic tub designed for a wide range of uses With a capacity of 4kg, it is suitable for storing, transporting, and organizing various items such as food, liquids, household goods, and industrial materials The tub features a sturdy construction, convenient carrying handles, and a secure lid for protection Its compact size makes it easy to handle and store, and its robust design ensures reliability and long-lasting performance Whether for home, office, or industrial use, the C P Tub 4kg offers a practical and reliable solution for containment and organization needs', 'c.p tub 4kg', '', 0),
(1203, 'C.P Tub 6Kg', 510, 510, 14, 'The CP Tub 6kg is a durable plastic container designed for the transportation and storage of various goods With a capacity of 6kg, it is suitable for a wide range of applications, from industrial to household use The tub features a sturdy construction, ensuring reliable protection for the contents within Its compact size and ergonomic design make it easy to handle and stack, optimizing storage space The CP Tub 6kg is an ideal solution for organizing, transporting, and storing items in a secure and efficient manner, making it a versatile and practical resource for both commercial and domestic settings', 'c.p tub 6kg', '', 0),
(1204, 'C.P Tub 8Kg', 680, 680, 14, 'The CP Tub 8kg is a durable and versatile plastic tub designed for a variety of uses With a capacity of 8kg, it\'s perfect for storing and transporting a wide range of materials, from food and household items to industrial supplies The tub is made of high-quality, impact-resistant plastic that ensures its longevity and reliability Its stackable design and sturdy handles make it easy to store and move, while its smooth interior surface allows for effortless cleaning Whether for home or commercial use, the CP Tub 8kg provides a dependable solution for organizing and handling goods in a range of contexts', 'c.p tub 8kg', '', 1),
(1211, 'Enami Liquid 1Ltr', 60, 85, 15, 'Enami Liquid 1Ltr is a high-quality liquid fertilizer designed to ensure optimal growth and health for plants Formulated with a balanced blend of essential nutrients and microorganisms, this concentrated solution is suitable for a wide range of crops and vegetation Enami Liquid 1Ltr is easy to apply and quickly assimilated by plants, promoting vigorous root development, increased nutrient uptake, and improved resistance to environmental stressors With its convenient packaging and effective performance, Enami Liquid 1Ltr is a trusted choice for professional growers and home gardeners alike, contributing to lush, vibrant, and bountiful harvests in a sustainable and environmentally friendly manner', 'enami liquid 1ltr', '', 1),
(1212, 'Vim Soap 1Pcs', 30, 30, 15, 'Vim Soap, 1 piece, offers powerful cleaning for various surfaces This multipurpose soap bar effectively tackles tough grease, grime, and stains, leaving surfaces sparkling clean Perfect for use in kitchens, bathrooms, and other areas, it easily cuts through dirt on dishes, countertops, and appliances The versatile formula provides long-lasting suds and a refreshing scent, enhancing the overall cleaning experience Vim Soap is convenient and easy to use, making it a must-have for everyday household cleaning tasks Trusted for its quality and effectiveness, Vim Soap 1 piece is a reliable choice for maintaining a clean and hygienic environment', 'vim soap', '', 0),
(1213, 'Vim Tub', 55, 55, 15, 'Vim Tub is a popular household cleaning product known for its efficiency and versatility This all-purpose cleaner is specially formulated to tackle tough stains and grime on various surfaces, including kitchen countertops, bathroom tiles, and other hard surfaces With its powerful cleaning agents, Vim Tub effectively removes soap scum, water stains, and dirt, leaving surfaces sparkling clean and fresh The thick consistency of the cleaner allows it to cling to vertical surfaces for better coverage and longer contact time Vim Tub is a trusted solution for maintaining a hygienic and pristine environment, making it a go-to choice for many households', 'vim tub', '', 1),
(1214, 'C.P Tub 1Kg', 55, 55, 15, 'C P Tub 1kg is a versatile and convenient packaging solution for a wide range of products With its durable construction and secure lid, it provides reliable protection for contents such as food items, chemicals, or industrial materials The compact size and lightweight design make it ideal for storage, transportation, or display purposes The clear plastic material allows for easy visibility of the contents, while the 1kg capacity ensures practicality for various applications Whether used in the home, warehouse, or retail environment, C P Tub 1kg offers an efficient and cost-effective solution for packaging needs', 'c.p tub 1kg', '', 0),
(1220, 'Coffee Bottle 25G', 90, 90, 16, 'Introducing the perfect travel companion for coffee lovers—the 25g coffee bottle This sleek and compact bottle is designed to hold 25 grams of fresh, aromatic coffee beans, ensuring you can always enjoy a delicious cup of joe, wherever you go The airtight seal preserves the flavor and aroma of the coffee, while the durable, portable design makes it easy to carry in your bag or pocket Whether you\'re on a camping trip, a business trip, or just out and about, the 25g coffee bottle is the ideal solution for satisfying your coffee cravings on the move', 'coffee bottle 25g', '', 0),
(1221, 'Coffee Bottle 50G', 175, 175, 16, 'The 50g coffee bottle offers a convenient and portable solution for coffee lovers on the go Its compact size makes it perfect for travel, office, or home use The airtight seal ensures the freshness and flavor of the coffee is preserved for longer periods The sleek and stylish design makes it an attractive addition to any kitchen or workspace With its resealable lid, it allows for easy access and ensures that every scoop of coffee is as aromatic and delicious as the first Whether it\'s for a quick pick-me-up or a leisurely brew, this coffee bottle is an essential companion for coffee enthusiasts', 'coffee bottle 50g', '', 1),
(1225, 'Green-Tea (loose)', 155, 155, 16, '', 'lipton green tea', '', 1),
(1226, 'green tea (pouches)', 0, 0, 16, '', 'green-tea-pouches', '', 0),
(1227, 'Dove Pump 650ML', 600, 799, 17, 'The Dove Pump 650ml is an effective and convenient solution for daily hair care Priced at 799/-, this product offers a generous 650ml of nourishing shampoo in a convenient pump bottle, providing long-lasting value and ease of use The formula is designed to nourish and strengthen hair, leaving it soft, smooth, and manageable With its moisturizing properties, the Dove Pump 650ml is suitable for all hair types, making it an ideal choice for the whole family This product is a practical and affordable option for those seeking quality hair care at a reasonable price point', 'dove pump 650ml', '', 1),
(1235, 'Clinic Plus 650ML', 450, 650, 17, 'Clinic Plus 650ml is a nourishing shampoo designed to address the needs of Indian hair Priced at 660/- MRP, this product promises to provide hair with the care it deserves Enriched with milk protein and multivitamins, it is fortified to nourish and strengthen hair from root to tip The formula aims to reduce hair fall and promote healthy, manageable hair The generous 650ml size ensures long-lasting use, making it a cost-effective choice for those seeking quality hair care With Clinic Plus 650ml, users can expect to experience the benefits of a trusted brand with a strong heritage in hair care', 'clinic plus 650ml', '', 0),
(1236, 'Dove 325ML', 300, 325, 17, 'The Dove 325ml shampoo is a premium hair care product designed to nourish and strengthen hair With a retail price of 325/-, this high-quality formula is infused with Nutri-Style Complex and unique blend of ingredients to leave hair feeling smooth, soft, and manageable The 325ml size makes it convenient for daily use and is suitable for all hair types Dove\'s reputation for delivering effective and gentle hair care solutions makes this product a popular choice for those seeking to maintain healthy and beautiful hair Trust Dove 325ml shampoo to provide the care and nourishment your hair deserves', 'dove 325ml', '', 0),
(1237, 'Clinic Plus 170ML', 135, 145, 17, 'Clinic Plus 170ml is a popular hair care product that offers a perfect balance of affordability and quality Priced at 145/-, this mild and gentle shampoo is suitable for daily use and effectively cleanses the hair and scalp without stripping away natural oils Its nourishing formula strengthens hair from root to tip, promoting healthy and beautiful hair The convenient 170ml size makes it perfect for travel and everyday use With its trusted reputation and affordable price, Clinic Plus 170ml is an ideal choice for those seeking reliable and effective hair care without breaking the bank', 'clinic plus 170ml', '', 0),
(1238, 'Sarso Amla 500ML', 170, 180, 18, 'Sarso Amla 500ml is a natural health supplement that combines the goodness of mustard oil (Sarso) and Indian gooseberry (Amla) Priced at 180/-, this product offers numerous health benefits Mustard oil is known for its rich source of monounsaturated and polyunsaturated fats, along with Omega-3 and Omega-6 fatty acids Amla, on the other hand, is a potent source of Vitamin C and antioxidants, aiding in immunity and overall well-being This product is a convenient way to incorporate these beneficial ingredients into your daily routine, promoting healthy hair, skin, and overall vitality', 'sarso amla 500ml', '', 0),
(1239, 'Sarso Amla 200ML', 100, 105, 18, 'Sarso Amla 200ml is a premium hair oil formulated with the goodness of mustard oil (Sarso) and Indian gooseberry (Amla) This unique blend is enriched with essential nutrients that nourish the scalp, promote hair growth, and strengthen hair follicles Priced at just 105/-, this MRP is competitive for a high-quality product that offers multiple benefits Regular use of Sarso Amla 200ml can help reduce hair fall, prevent dandruff, and improve overall hair health With its convenient packaging and affordable price, it is an ideal choice for anyone looking for an effective hair care solution', 'sarso amla 200ml', '', 1),
(1240, 'Amla Oil 500ML', 160, 170, 18, 'Amla oil is a popular herbal oil known for its nourishing and rejuvenating properties This 500ml bottle of amla oil is priced at 170 MRP Amla, also known as Indian gooseberry, is rich in essential fatty acids and antioxidants, making it a sought-after ingredient for hair care This cold-pressed oil is often used to promote hair growth, strengthen roots, and improve overall scalp health Additionally, it is known for its ability to condition and add shine to hair With its affordable price and generous quantity, this amla oil is an excellent choice for those seeking natural and effective hair care solutions', 'amla oil 500ml', '', 1),
(1241, 'Amla Oil 200Ml', 0, 0, 18, 'Amla oil, also known as Indian gooseberry oil, is a rich, natural hair care solution that promotes healthy hair growth and nourishes the scalp This 200ml bottle of amla oil is cold-pressed from the fruit of the amla tree, ensuring that the beneficial nutrients are preserved With its high concentration of vitamin C, antioxidants, and essential fatty acids, amla oil helps to strengthen hair, reduce split ends, and prevent premature graying Its non-greasy formula makes it easy to massage into the scalp for deep hydration and soothing relief from dryness and irritation Experience the rejuvenating benefits of amla oil for lustrous, vibrant hair', 'amla oil 200ml', '', 0),
(1242, 'Bajaj Almond Oil 500Ml', 280, 305, 18, 'Bajaj Almond Oil is a nourishing hair care solution that comes in a 500ml bottle at an MRP of 305/- Enriched with the goodness of almond, this oil is known for its moisturizing and strengthening properties, helping to promote healthy, lustrous hair The oil is rich in Vitamin E and other essential nutrients that help to nourish and revitalize hair, making it soft and manageable It can be used for regular hair oiling and massage to promote hair growth, prevent dandruff, and protect the hair from environmental damage Bajaj Almond Oil is an affordable and effective choice for maintaining hair health', 'bajaj almond oil', '', 0),
(1243, 'Hair & Care Oil 200Ml', 115, 120, 18, 'Give your hair the care it deserves with our Hair & Care oil Packed with nourishing ingredients, this 200ml bottle is your go-to solution for frizz-free, shiny locks Our specially formulated oil penetrates deep into the hair shaft, promoting strength and elasticity Say goodbye to dry, damaged hair and hello to a healthier, vibrant mane The lightweight formula won\'t weigh your hair down, making it suitable for all hair types With an affordable MRP of just 120/-, it\'s the perfect addition to your hair care routine Transform your hair with Hair & Care oil and enjoy the confidence that comes with beautiful, luscious locks', 'hair & care oil 200ml', '', 0),
(1244, 'Hair & Care Oil 300Ml', 170, 180, 18, 'Introducing our luxurious Hair & Care Oil in a generous 300ml bottle, designed to nourish and revitalize your hair Priced at just 180/-, this specially formulated oil is packed with natural ingredients to promote healthy hair growth, strengthen roots, and restore shine Infused with essential oils and vitamins, it deeply moisturizes and conditions, leaving your hair feeling soft and manageable Whether you struggle with dryness, frizz, or dullness, our Hair & Care Oil is the perfect solution Say goodbye to lackluster locks and hello to beautiful, lustrous hair with this affordable and effective product', 'hair & care oil 500ml', '', 1),
(1245, 'Parachute Coconut Oil 200Ml', 70, 73, 18, 'Parachute Coconut Oil is a premium quality hair and skin care product that comes in a convenient 200ml bottle priced at an affordable MRP of 73/- This pure and natural coconut oil is extracted from the finest coconuts to ensure superior quality It is rich in nourishing vitamins and minerals, making it an ideal choice for promoting healthy hair growth, moisturizing dry skin, and strengthening nails The lightweight and non-greasy formula makes it perfect for everyday use Parachute Coconut Oil is trusted by millions of consumers worldwide for its unmatched purity and effectiveness, making it a must-have for your daily grooming routine', 'parachute coconut oil', '', 0),
(1251, 'Parachute Coconut Oil 500Ml', 180, 261, 18, 'Parachute Coconut Oil is a premium quality hair and skin care product known for its nourishing and moisturizing properties Packed in a convenient 500ml bottle, this versatile oil is extracted from the finest coconuts to ensure purity and effectiveness With a standard MRP of 261/-, it offers great value for money Whether used for deep conditioning, massage, or cooking, Parachute Coconut Oil is a trusted choice for many households Its light texture and natural fragrance make it a popular choice for promoting healthy hair, soft skin, and overall well-being Trust in Parachute Coconut Oil for all your beauty and wellness needs', 'parachute coconut oil', '', 0),
(1252, 'Dabur Coconut Oil 600Ml Mrp = 261/-', 180, 180, 18, 'Dabur Coconut Oil provides nourishment and strength to your hair Packed in a 600ml bottle, it is affordably priced at MRP 261/- This pure and natural coconut oil is extracted from the finest coconuts, ensuring maximum benefits for your hair and skin Its versatile uses make it an essential addition to your beauty regimen, offering deep moisturization, promoting hair growth, and aiding in scalp health With its light, non-greasy formula, Dabur Coconut Oil is suitable for all hair types and is a trusted choice for those seeking the goodness of coconut oil for their hair and skin care needs', 'dabur coconut oil', '', 1),
(1253, 'Enami 7 Oils 500Ml', 325, 375, 18, 'Emami 7 Oils in One is a non-sticky, non-greasy hair oil enriched with seven unique oils: Argan, Walnut, Almond, Jojoba, Olive, Amla, and Coconut It’s free of parabens, sulphates, and harsh chemicals This oil penetrates deep into the scalp, providing nourishment from the root, making hair up to 20X stronger and keeping it set all day It’s suitable for all hair types Amla Oil, rich in vitamin C and minerals, promotes hair growth, while Coconut Oil moisturizes hair and keeps the scalp flake-free', '7oil 500ml', '', 0),
(1254, 'Vasline Body-Lotion', 240, 240, 19, 'Vaseline Body Lotion : Vaseline offers a range of body lotions designed to keep your skin soft, supple, and moisturized Infused with healing micro-droplets of Vaseline Jelly, it absorbs deeply to heal dry skin deep down Vaseline lotions are tailored for various skin types, providing hydration and nourishment, ensuring your skin feels healthy and vibrant', 'vasline body-lotion', '', 1),
(1255, 'Ponds Body-Lotion', 95, 95, 19, 'Ponds Body Lotion : Ponds Body Lotion is designed to provide your skin with deep nourishment and moisture Known for its rich formula containing vital beauty oils and skin nutrients, this lotion works throughout the day to keep your skin soft and smooth Its non-greasy formula ensures your skin breathes comfortably while being moisturized', 'ponds body-lotion', '', 0),
(1256, 'Joy Skin-Fruit Body-Lotion', 85, 85, 19, 'Joy Skin Fruits Body Lotion : Joy Skin Fruits Body Lotion is packed with the goodness of natural fruit extracts, offering a delightful skincare experience This lotion not only moisturizes the skin but also helps to improve its texture and radiance Its quick-absorbing formula leaves your skin feeling fresh, hydrated, and fruity fragrant', 'joy skin-fruit body-lotion', '', 0),
(1257, 'Himalaya Face-Wash', 140, 150, 19, 'Himalaya Face Wash : Himalaya Face Wash offers a variety of herbal formulations designed to cater to different skin types and concerns From purifying neem to the refreshing aloe vera range, these face washes help to cleanse, nourish, and rejuvenate your skin, leaving it feeling fresh and clean without overdrying', 'himalaya face-wash', '', 1),
(1271, 'Clean & Clear Facewash', 160, 170, 19, 'Clean & Clear Facewash : Targeted towards young skin prone to breakouts, Clean & Clear Facewash is formulated to effectively cleanse the skin, tackling excess oil, dirt, and impurities Its unique formula helps to prevent acne and pimples, promoting a clearer, brighter complexion', 'clean & clear facewash', '', 0),
(1272, 'Ponds Powder', 0, 0, 19, 'Ponds Powder : Ponds Powder is a classic beauty product known for its oil-absorbing properties It helps in keeping the skin cool and fresh throughout the day Its unique formula provides a soft, matte finish to the skin while leaving a mild, pleasant scent', 'ponds powder', '', 0),
(1273, 'Dermi Cool Powder', 0, 0, 19, 'Dermi Cool Powder : Dermi Cool Powder is specifically formulated to provide instant cooling relief during hot weather Infused with natural ingredients, it helps to soothe prickly heat and other heat-related discomforts, while its refreshing scent keeps you feeling fresh all day long', 'dermi cool powder', '', 0),
(1274, 'Everest Ketchup ', 45, 50, 20, 'Everest Ketchup (MRP = 50/-) : Everest Ketchup at this price point offers a thick, rich tomato ketchup made from ripe tomatoes with a perfect balance of sweet and tangy flavors It\'s a versatile condiment that enhances the taste of snacks and meals', 'everest ketchup MRP 100', '', 1),
(1275, 'Kissan Ketchup', 50, 50, 20, 'Kissan Ketchup (MRP =50/-) : Kissan Ketchup is known for its real tomato flavor, adding a sweet and tangy zest to dishes Made from 100% real tomatoes, it\'s a staple in every kitchen, perfect for pairing with snacks and main dishes', 'kissan ketchup MRP 50', '', 0),
(1276, 'Everest Ketchup ', 90, 100, 20, 'Everest Ketchup (MRP = 100/-) : At a higher price point, Everest Ketchup likely offers a larger quantity or a premium range Its rich texture and depth of flavor make it an essential condiment for enhancing the taste of various dishes', 'everest ketchup mrp 50', '', 0),
(1277, 'Chings Red Chilli Bottle', 60, 85, 20, 'Chings Red Chilli Bottle : Chings Red Chilli Sauce is a fiery blend of red chillies, vinegar, and spices This sauce adds a spicy kick to meals, perfect for those who enjoy a hot and pungent flavor in their dishes', 'chings red chilli bottle', '', 0),
(1278, 'Chings Green Chilli Bottle', 60, 85, 20, 'Chings Green Chilli Bottle : Chings Green Chilli Sauce is made from fresh green chillies, offering a vibrant and sharp heat This sauce is ideal for adding a bright, spicy flavor to snacks and meals, pleasing anyone who favors a zesty touch', 'chings green chilli bottle', '', 0),
(1285, 'Vinegar', 0, 0, 20, 'Vinegar : Vinegar is a versatile ingredient used in cooking and for dressing salads It adds a distinct tangy flavor to dishes, and its acidity can help tenderize meats and preserve pickles Various types, including white, apple cider, and balsamic, offer varied flavors for culinary use', 'vinegar', '', 0),
(1286, 'Soya Sauce', 0, 0, 20, 'Soya Sauce : Soya Sauce is a staple in Asian cuisine, known for its savory, umami flavor Made from fermented soybeans, it\'s an essential condiment for marinades, stir-fries, and as a dipping sauce, adding depth and richness to dishes', 'soya sauce', '', 0),
(1287, 'Kissan Jam', 0, 0, 20, 'Kissan Jam : Kissan Jam offers a delightful blend of fruits, providing a sweet and fruity spread for breads, toasts, and desserts Known for its rich fruitiness and smooth texture, it\'s a favorite among both children and adults for a tasty start to the day', 'kissan jam', '', 0),
(1288, 'Good-Day Famly Pack ', 120, 140, 21, 'Britannia Good Day biscuits are a popular choice in Indian households These delicious, crunchy cookies are available in various flavors like cashew and pista-badam They are 100% vegetarian and are a perfect companion for tea time', 'goodday family pack', '', 1),
(1289, 'Oreo Family Pack ', 120, 159, 21, 'Oreo, a brand by Cadbury, offers a range of sandwich biscuits The family pack includes three units of Oreo biscuits, each rich in chocolate crème These biscuits are perfect for snacking or as a treat at any time of the day', 'oreo family pack', '', 0),
(1290, 'Parle-G Gold 1Kg Pack Mrp = 140', 130, 140, 21, 'Parle-G biscuits are a staple in Indian households Known for their unique taste and nutritional value, they are packed with vitamins and minerals These biscuits are light, crisp, and serve as an excellent tea-time snack', 'parle family pack', '', 0);
INSERT INTO `specific_weight_products` (`product_id`, `product_name`, `product_price`, `MRP`, `category_id`, `description`, `product_image`, `protein_id`, `monthly_grocery`) VALUES
(1291, 'Crack Jack', 40, 40, 21, 'Parle Krackjack is a sweet and salty cracker that is loved by many It’s a perfect snack for any time of the day and is enriched with vitamins and minerals It has zero transfat and zero cholesterol, making it a healthy choice', 'crack jack', '', 0),
(1292, 'Marie-Gold', 40, 40, 21, 'Britannia Marie Gold biscuits are light, crisp, and packed with the goodness of vitamins and minerals They are a perfect accompaniment for tea and are loved by millions These biscuits are also 100% vegetarian and serve as a great snack between meals', 'marie gold', '', 0),
(1293, 'Kashmiri Mirch 100G', 110, 125, 6, '', 'kashmiri mirchi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(100) NOT NULL,
  `user_email` varchar(100) NOT NULL,
  `user_phone` varchar(10) NOT NULL,
  `user_password` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`user_id`, `user_name`, `user_email`, `user_phone`, `user_password`) VALUES
(3, 'YASH JAIN', 'aayushjain6798@gmail.com', '1234567890', '57b1a9fce45d8833c76490b0b5574906'),
(4, 'aayush jain', 'jainaayush2153@gmail.com', '2147483647', '$2y$10$RkywbpifpuAUppKIIGY6vux5wqgguOzoj88YXW7xBmfmp2z8yVqmi'),
(5, 'aayush jain', 'yash63182@gmail.com', '2147483647', '$2y$10$o/sdfwUQ/Y2RndKsJl7GMOmsfqroEKDhVGY3HPNCjngIxKcwNBqDC'),
(6, 'aayush jain', 'jainaayush2523@gmail.com', '2147483647', '$2y$10$gUdtHgs8zyLynILSBRTvmuj7F0mxmTdIue.eLKU8ic6cvqg0UZ5MG'),
(9, 'harshit jain', 'harshit@gmail.com', '2147483647', '$2y$10$ii2Q1xsega4H67RxU6ODFOme50r4kXa.gCI1I41FSIC/skReFZQDu'),
(10, 'yasg klnl', 'jjjjjjjj@gmail.com', '2147483647', '$2y$10$1f4DcDqJICnfrISq6R658u3xQOeChgJMTzh1H3ZPAGf63i4b.Cseq'),
(11, 'aayush jain', 'jainaayush253@gmail.com', '2147483647', '25d55ad283aa400af464c76d713c07ad'),
(16, 'aayush jain', 'aayushjain698@gmail.com', '1234656133', '$2y$10$UG7aw33kHjB6U44GGw34yOFtpmmrCKJKRGPKC6dhpfi5x4YBne4i6'),
(17, 'AAYUSH JAIN', 'aayushjain5698@gmail.com', '2147483647', '$2y$10$qSXZofFQXh86EoGkMII7z.rskyFSn7iNHqsJM9aWBiHyesiLHPG4K'),
(18, 'aayush jain', 'chomounath@gmail.com', '1234567890', '57b1a9fce45d8833c76490b0b5574906'),
(21, 'aayush jain', 'aayushjain61198@gmail.com', '0998277376', '471661e0710beb99b3d08b63a5529f74'),
(22, 'aayush jain', '123@gmail.com', '0123456789', '471661e0710beb99b3d08b63a5529f74'),
(23, 'aayush jain', '153@gmail.com', '0978577376', '57b1a9fce45d8833c76490b0b5574906'),
(24, 'aayush jain', 'jain@gmail.com', '0123456789', '57b1a9fce45d8833c76490b0b5574906'),
(25, 'Aayush Jain', 'aayush@gmail.com', '9982773763', '25d55ad283aa400af464c76d713c07ad'),
(26, 'aayush jain', 'jainaayush23@gmail.co', '0123465613', '25d55ad283aa400af464c76d713c07ad'),
(27, 'aayush jain', 'jainaayush253@gmail.co', '0123465613', '0fde8273941b34b38d7a241ea3e30783'),
(28, 'aayush jain', '111@gmail.com', '1234567890', '0fde8273941b34b38d7a241ea3e30783'),
(29, 'aayush jain', '3@gmail.com', '0123465613', '0fde8273941b34b38d7a241ea3e30783'),
(30, 'Aayush jain', '53@gmail.com', '9982773763', '25d55ad283aa400af464c76d713c07ad'),
(31, 'Aayush jain', '11153@gmail.com', '0998277376', '0fde8273941b34b38d7a241ea3e30783'),
(32, 'aayush jain', '20253@gmail.com', '0123465613', '0fde8273941b34b38d7a241ea3e30783'),
(33, 'aayush jain', 'aayus8@gmail.com', '0998277376', '25d55ad283aa400af464c76d713c07ad');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admins`
--
ALTER TABLE `admins`
  ADD PRIMARY KEY (`admin_id`);

--
-- Indexes for table `categories_product`
--
ALTER TABLE `categories_product`
  ADD PRIMARY KEY (`product_id`),
  ADD KEY `category_id` (`category_id`);

--
-- Indexes for table `category`
--
ALTER TABLE `category`
  ADD PRIMARY KEY (`category_id`);

--
-- Indexes for table `coupons`
--
ALTER TABLE `coupons`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `employee`
--
ALTER TABLE `employee`
  ADD PRIMARY KEY (`employee_id`);

--
-- Indexes for table `feedback`
--
ALTER TABLE `feedback`
  ADD PRIMARY KEY (`serial no.`);

--
-- Indexes for table `orders`
--
ALTER TABLE `orders`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `order_items`
--
ALTER TABLE `order_items`
  ADD PRIMARY KEY (`item_id`);

--
-- Indexes for table `specific_weight_products`
--
ALTER TABLE `specific_weight_products`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `UX_Constraint` (`user_email`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `admins`
--
ALTER TABLE `admins`
  MODIFY `admin_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `coupons`
--
ALTER TABLE `coupons`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `employee`
--
ALTER TABLE `employee`
  MODIFY `employee_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `feedback`
--
ALTER TABLE `feedback`
  MODIFY `serial no.` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `orders`
--
ALTER TABLE `orders`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=159;

--
-- AUTO_INCREMENT for table `order_items`
--
ALTER TABLE `order_items`
  MODIFY `item_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=281;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `categories_product`
--
ALTER TABLE `categories_product`
  ADD CONSTRAINT `categories_product_ibfk_1` FOREIGN KEY (`category_id`) REFERENCES `category` (`category_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
