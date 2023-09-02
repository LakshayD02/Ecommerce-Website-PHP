-- phpMyAdmin SQL Dump
-- version 4.6.5.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2021 at 06:14 AM
-- Server version: 5.6.21
-- PHP Version: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `shopci`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_brand`
--

CREATE TABLE `tbl_brand` (
  `brand_id` int(11) NOT NULL,
  `brand_name` varchar(255) NOT NULL,
  `brand_description` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_brand`
--

INSERT INTO `tbl_brand` (`brand_id`, `brand_name`, `brand_description`, `publication_status`) VALUES
(1, 'Symphony', 'Symphony Desc', 1),
(2, 'Samsung', 'Samsung desc', 1),
(3, 'IPhone', 'IPhone Desc<br>', 1),
(4, 'H&M', 'H&amp;M Desc', 1),
(5, 'Adidas', 'Adidas Desc', 1),
(6, 'Razer', 'Razer Desc', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_category`
--

CREATE TABLE `tbl_category` (
  `id` int(11) NOT NULL,
  `category_name` varchar(100) NOT NULL,
  `category_description` text NOT NULL,
  `publication_status` tinyint(4) NOT NULL COMMENT 'Published=1,Unpublished=0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_category`
--

INSERT INTO `tbl_category` (`id`, `category_name`, `category_description`, `publication_status`) VALUES
(1, 'Computer', 'Computer Desc', 1),
(2, 'Laptop', 'Laptop Desc', 1),
(3, 'Smartphone', 'Smartphone Desc', 1),
(4, 'Smart TV', 'SmartTV Desc', 1),
(5, 'Clothing', 'Clothing Desc  ', 1),
(6, 'Shoes & Sneakers', 'Shoes &amp; Sneakers Desc', 1),
(7, 'Accessories', 'Accessories Desc.', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_customer`
--

CREATE TABLE `tbl_customer` (
  `customer_id` int(11) NOT NULL,
  `customer_name` varchar(50) NOT NULL,
  `customer_email` varchar(100) NOT NULL,
  `customer_password` varchar(32) NOT NULL,
  `customer_address` text NOT NULL,
  `customer_city` varchar(50) NOT NULL,
  `customer_zipcode` varchar(20) NOT NULL,
  `customer_phone` varchar(20) NOT NULL,
  `customer_country` varchar(100) NOT NULL,
  `customer_active` tinyint(4) NOT NULL COMMENT 'Active=1,Unactive=0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_customer`
--

INSERT INTO `tbl_customer` (`customer_id`, `customer_name`, `customer_email`, `customer_password`, `customer_address`, `customer_city`, `customer_zipcode`, `customer_phone`, `customer_country`, `customer_active`) VALUES
(9, 'Christine', 'christine@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '458 Ralph Street', 'DEMO', '12500', '7458450000', 'Afghanistan', 1),
(10, 'Bob Gardin', 'bobg@gmail.com', '5f4dcc3b5aa765d61d8327deb882cf99', '3556 Denver Avenue', 'Miram Loma', '3006', '7850002580', 'Australia', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_option`
--

CREATE TABLE `tbl_option` (
  `option_id` int(11) NOT NULL,
  `site_logo` varchar(100) NOT NULL,
  `site_favicon` varchar(100) NOT NULL,
  `site_copyright` varchar(255) NOT NULL,
  `site_contact_num1` varchar(100) NOT NULL,
  `site_contact_num2` varchar(100) NOT NULL,
  `site_facebook_link` varchar(100) NOT NULL,
  `site_twitter_link` varchar(100) NOT NULL,
  `site_google_plus_link` varchar(100) NOT NULL,
  `site_email_link` varchar(100) NOT NULL,
  `contact_title` varchar(255) NOT NULL,
  `contact_subtitle` varchar(255) NOT NULL,
  `contact_description` text NOT NULL,
  `company_location` varchar(255) NOT NULL,
  `company_number` varchar(100) NOT NULL,
  `company_email` varchar(100) NOT NULL,
  `company_facebook` varchar(100) NOT NULL,
  `company_twitter` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_option`
--

INSERT INTO `tbl_option` (`option_id`, `site_logo`, `site_favicon`, `site_copyright`, `site_contact_num1`, `site_contact_num2`, `site_facebook_link`, `site_twitter_link`, `site_google_plus_link`, `site_email_link`, `contact_title`, `contact_subtitle`, `contact_description`, `company_location`, `company_number`, `company_email`, `company_facebook`, `company_twitter`) VALUES
(1, 'logo1.png', 'logo2.png', 'Developed By Rostom Ali', '7865454100', '7865454100', 'https://www.facebook.com', 'https://www.twitter.com', 'https://www.plus.google.com', 'https://www.gmail.com', 'Contact Page', 'Contact Page Subtitle', 'Contact Desc..', '565 Blecker\'s Street', '7865454100', 'https://www.gmail.com', 'https://www.facebook.com', 'https://www.twitter.com');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order`
--

CREATE TABLE `tbl_order` (
  `order_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_id` int(11) NOT NULL,
  `payment_id` int(11) NOT NULL,
  `order_total` float NOT NULL,
  `actions` varchar(50) NOT NULL DEFAULT 'Pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order`
--

INSERT INTO `tbl_order` (`order_id`, `customer_id`, `shipping_id`, `payment_id`, `order_total`, `actions`) VALUES
(10, 9, 11, 16, 178250, 'Pending'),
(11, 10, 12, 17, 23862.5, 'Pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_order_details`
--

CREATE TABLE `tbl_order_details` (
  `order_details_id` int(11) NOT NULL,
  `order_id` int(11) NOT NULL,
  `product_id` int(11) NOT NULL,
  `product_name` varchar(255) NOT NULL,
  `product_price` float NOT NULL,
  `product_sales_quantity` int(11) NOT NULL,
  `product_image` varchar(55) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_order_details`
--

INSERT INTO `tbl_order_details` (`order_details_id`, `order_id`, `product_id`, `product_name`, `product_price`, `product_sales_quantity`, `product_image`) VALUES
(1, 2, 5, 'Product Five', 10000, 1, NULL),
(2, 3, 5, 'Product Five', 10000, 4, NULL),
(3, 3, 3, 'Product Three', 3500, 3, NULL),
(4, 3, 1, 'Product One', 20000, 1, NULL),
(5, 8, 4, 'Product Four', 350000, 1, 'pic3.jpg'),
(6, 9, 4, 'Product Four', 350000, 1, 'pic3.jpg'),
(7, 10, 6, 'Samsung Galaxy S21 Ultra', 155000, 1, 'sm21u.jpg'),
(8, 11, 2, 'Face Covers 3-Pack', 1250, 1, 'feature-pic2.jpg'),
(9, 11, 1, 'Ultraboost DNA Black Python Shoes', 19500, 1, 'feature-pic1.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_payment`
--

CREATE TABLE `tbl_payment` (
  `payment_id` int(11) NOT NULL,
  `payment_type` varchar(50) NOT NULL,
  `actions` varchar(50) NOT NULL DEFAULT 'pending'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_payment`
--

INSERT INTO `tbl_payment` (`payment_id`, `payment_type`, `actions`) VALUES
(1, 'cashon', 'pending'),
(2, 'ssl', 'pending'),
(3, 'cashon', 'pending'),
(4, 'cashon', 'pending'),
(5, 'cashon', 'pending'),
(6, 'cashon', 'pending'),
(7, 'cashon', 'pending'),
(8, 'cashon', 'pending'),
(9, 'cashon', 'pending'),
(10, 'cashon', 'pending'),
(11, 'cashon', 'pending'),
(12, 'cashon', 'pending'),
(13, 'cashon', 'pending'),
(14, 'cashon', 'pending'),
(15, 'cashon', 'pending'),
(16, 'cashon', 'pending'),
(17, 'cashon', 'pending');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_product`
--

CREATE TABLE `tbl_product` (
  `product_id` int(11) NOT NULL,
  `product_title` varchar(255) NOT NULL,
  `product_short_description` text NOT NULL,
  `product_long_description` text NOT NULL,
  `product_image` varchar(255) NOT NULL,
  `product_price` int(11) NOT NULL,
  `product_quantity` int(11) NOT NULL,
  `product_feature` tinyint(4) NOT NULL,
  `product_category` int(11) NOT NULL,
  `product_brand` int(11) NOT NULL,
  `product_author` int(11) NOT NULL,
  `product_view` int(11) NOT NULL DEFAULT '0',
  `published_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_product`
--

INSERT INTO `tbl_product` (`product_id`, `product_title`, `product_short_description`, `product_long_description`, `product_image`, `product_price`, `product_quantity`, `product_feature`, `product_category`, `product_brand`, `product_author`, `product_view`, `published_date`, `publication_status`) VALUES
(1, 'Ultraboost DNA Black Python Shoes', 'Responsive shoes snakeskin acc.', 'Black pythons are sleek, cool and a little bit dangerous. Channel the exotic beauty of the Australian snake and make it yours in these adidas Ultraboost DNA Black Python Shoes. The stretchy knit upper features snakeskin-inspired details. Energy-returning cushioning keeps you comfortable when you\'re on the move.', 'feature-pic1.jpg', 19500, 50, 1, 6, 5, 1, 0, '2017-11-30 14:24:41', 1),
(2, 'Face Covers 3-Pack', 'Two 3-packs for $30 with code MASKUP. Size M/L is recommended for most adults. This product is not eligible for returns or exchanges.', 'Made with soft, breathable fabric the adidas Face Cover is comfortable, washable and reusable for practicing healthy habits every day. This cover is not a medically-graded mask nor personal protective equipment.', 'feature-pic2.jpg', 1250, 50, 1, 5, 5, 1, 0, '2017-11-30 14:29:04', 1),
(3, 'Slim Fit Linen Blazer', 'Single-breasted blazer in woven linen fabric. Narrow, notched lapels with decorative buttonhole. Chest pocket, front pockets with flap, and two inner pockets.', 'Single-breasted blazer in woven linen fabric. Narrow, notched lapels with decorative buttonhole. Chest pocket, front pockets with flap, and two inner pockets. Two buttons at front, decorative buttons at cuffs, and vent at back. Lined. Slim Fit – tapered at chest and waist with slightly narrower sleeves for a tailored silhouette.\n\n', 'feature-pic3.jpg', 12500, 35, 1, 5, 4, 1, 0, '2017-11-30 14:38:25', 1),
(4, 'AUE60 Crystal 4K UHD', '4K UHD TV goes beyond regular FHD with 4x more pixels, offering your eyes the sharp and crisp images they deserve. Now you can see even the small details in the scene.', 'A sleek and elegant design that draws you to the purest picture. Crafted with an effortless minimalistic style from every angle and a boundless design that sets new standards. Keep your cables tidy and conceal them, reducing clutter and keeping a seamless look for your TV. Choose your favorite voice assistant; Bixby, Amazon Alexa or Google Assistant. For the first time, all are built into your Samsung TV to provide the optimal entertainment experience and advanced control in your connected home.\n\n', 'pic3.jpg', 695000, 150, 1, 4, 2, 1, 0, '2017-11-30 14:38:57', 1),
(5, 'Razer 15.6', 'Designed for gaming, the Razer 15.6\" Blade 15 Gaming Laptop combines mobility with performance. Graphics are handled by the dedicated NVIDIA GeForce GTX 1660 Ti graphics card with VRAM.     ', 'Designed for gaming, the Razer 15.6\" Blade 15 Gaming Laptop combines mobility with performance. Graphics are handled by the dedicated NVIDIA GeForce GTX 1660 Ti graphics card with VRAM. It also features a 10th Gen 2.6 GHz Intel Core i7-10750H six-core processor and 16GB of 2933 MHz of DDR4 RAM. Its 256GB NVME PCIe M.2 SSD allows for fast boot times. For online multiplayer features, the Razer Blade 15 can utilize Wi-Fi 6 (802.11ax) or a wired Gigabit Ethernet connection. It also supports wireless accessories via Bluetooth 5.1 technology. The Razer Blade 15 features a precision-crafted aluminum chassis.\n\nThe 15.6\" display features a FHD 1920 x 1080 resolution and are individually factory calibrated, providing 100% of the sRGB color space. The bezels are thin, measuring in at about 4.9mm. The screen also has a matte finish to reduce glare in brightly-lit environments. The keyboard is backlit and supports Razer Chroma single-zone RGB lighting. Other features included Thunderbolt 3, USB Type-C, USB Type-A, and a 3.5mm audio jack. Windows 10 Home is the installed operating system.', 'preview-img.jpg', 230000, 56, 1, 1, 6, 1, 0, '2017-11-30 14:40:34', 1),
(6, 'Samsung Galaxy S21 Ultra', 'The highest resolution photos and video on a smartphone', 'Samsung Electronics Co., Ltd. unveiled the Galaxy S21 Ultra, a flagship that pushes the boundaries of what a smartphone can do. The S21 Ultra pulls out all the stops for those who want Samsung’s best-of-the-best with our most advanced pro-grade camera system and our brightest, most intelligent display. It takes productivity and creativity up a notch by bringing the popular S Pen experience to the Galaxy S series for the first time.</span>', 'sm21u.jpg', 155000, 12, 1, 3, 2, 1, 0, '2021-05-12 09:20:39', 1),
(7, 'Mountain Rain Jacket', 'A Lightweight Rain Jacket for Wet Weather Rides.', '<span style=\"font-family: AdihausDIN, Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-line; background-color: rgb(255, 255, 255);\">Expand your wet weather options.&nbsp;</span><span style=\"font-family: AdihausDIN, Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-line; background-color: rgb(255, 255, 255);\">The adidas Five Ten All-Mountain Rain Jacket keeps you dry and on the bike through cool misty days and afternoon showers.&nbsp;</span><span style=\"font-family: AdihausDIN, Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-line; background-color: rgb(255, 255, 255);\">RAIN.RDY keeps out wind and rain, while elastic cuffs, hem and hood further seal out the elements while you ride.&nbsp;</span><span style=\"font-family: AdihausDIN, Helvetica, Arial, sans-serif; font-size: 16px; white-space: pre-line; background-color: rgb(255, 255, 255);\">Its lightweight build makes for easy packing. Zip out the showers and keep on riding.</span>', 'Five_Ten_Bike_All-Mountain_Rain_Jacket_Green_GP7212_21_model.jpg', 16850, 26, 1, 5, 5, 1, 0, '2021-05-12 16:00:39', 1),
(8, 'Galaxy Buds Pro', 'Introducing the New Galaxy Buds Pro', '<font face=\"Arial, Verdana\"><span style=\"font-size: 13.3333px;\">Our most immersive buds yet deliver powerful studio sound and crystal-clear call quality. Use Intelligent Active Noise Cancellation1 to escape into your music at a moment’s notice. Answer calls with just your voice and let in the sounds that matter most with adjustable ambient sound. Escape and tune in to your own moment of Zen—all with a single tap. Intelligent Active Noise Cancellation gives you the power to adjust your settings based on the world around you, so you always hear what you want to hear.1 Turn it to High on a noisy bus or to Low in a quiet library—no need to change the volume.</span></font>', 'budspro.jpg', 29550, 21, 1, 7, 2, 1, 0, '2021-05-12 16:31:50', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_shipping`
--

CREATE TABLE `tbl_shipping` (
  `shipping_id` int(11) NOT NULL,
  `customer_id` int(11) NOT NULL,
  `shipping_name` varchar(50) NOT NULL,
  `shipping_email` varchar(100) NOT NULL,
  `shipping_address` text NOT NULL,
  `shipping_city` varchar(100) NOT NULL,
  `shipping_country` varchar(50) NOT NULL,
  `shipping_phone` varchar(20) NOT NULL,
  `shipping_zipcode` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_shipping`
--

INSERT INTO `tbl_shipping` (`shipping_id`, `customer_id`, `shipping_name`, `shipping_email`, `shipping_address`, `shipping_city`, `shipping_country`, `shipping_phone`, `shipping_zipcode`) VALUES
(11, 0, 'Christine', 'christinem@gmail.com', '245 Ralph Street', 'Steyr', 'Austria', '7456320000', '12500'),
(12, 0, 'Bob', 'bob@gmail.com', '3556 Denver Avenue', 'Mira Loma', 'Australia', '7458000025', '3006');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_slider`
--

CREATE TABLE `tbl_slider` (
  `slider_id` int(11) NOT NULL,
  `slider_title` varchar(255) NOT NULL,
  `slider_image` varchar(255) NOT NULL,
  `slider_link` varchar(255) NOT NULL,
  `publication_status` tinyint(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_slider`
--

INSERT INTO `tbl_slider` (`slider_id`, `slider_title`, `slider_image`, `slider_link`, `publication_status`) VALUES
(1, 'slider', '2.jpg', 'http://localhost/shop/single/5', 1),
(2, 'slider 2', '1.jpg', 'http://localhost/shop/single/5', 1),
(3, 'slider 3', '3.jpg', 'http://localhost/shop/add/slider 3', 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `user_id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL,
  `user_role` tinyint(4) NOT NULL,
  `created_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `updated_time` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`user_id`, `user_name`, `user_email`, `user_password`, `user_role`, `created_time`, `updated_time`) VALUES
(1, 'admin', 'admin@gmail.com', '21232f297a57a5a743894a0e4a801fc3', 1, '2017-11-13 18:31:36', '2017-11-13 18:31:36'),
(2, 'editor', 'editor@gmail.com', '5aee9dbd2a188839105073571bee1b1f', 2, '2017-11-13 18:31:36', '2017-11-13 18:31:36'),
(3, 'author', 'author@gmail.com', '02bd92faa38aaa6cc0ea75e59937a1ef', 3, '2017-11-13 18:31:36', '2017-11-13 18:31:36');

-- --------------------------------------------------------

--
-- Table structure for table `user_role`
--

CREATE TABLE `user_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_role`
--

INSERT INTO `user_role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Author'),
(3, 'Editor');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  ADD PRIMARY KEY (`brand_id`);

--
-- Indexes for table `tbl_category`
--
ALTER TABLE `tbl_category`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  ADD PRIMARY KEY (`customer_id`);

--
-- Indexes for table `tbl_option`
--
ALTER TABLE `tbl_option`
  ADD PRIMARY KEY (`option_id`);

--
-- Indexes for table `tbl_order`
--
ALTER TABLE `tbl_order`
  ADD PRIMARY KEY (`order_id`);

--
-- Indexes for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  ADD PRIMARY KEY (`order_details_id`);

--
-- Indexes for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  ADD PRIMARY KEY (`payment_id`);

--
-- Indexes for table `tbl_product`
--
ALTER TABLE `tbl_product`
  ADD PRIMARY KEY (`product_id`);

--
-- Indexes for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  ADD PRIMARY KEY (`shipping_id`);

--
-- Indexes for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  ADD PRIMARY KEY (`slider_id`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`user_id`);

--
-- Indexes for table `user_role`
--
ALTER TABLE `user_role`
  ADD PRIMARY KEY (`role_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_brand`
--
ALTER TABLE `tbl_brand`
  MODIFY `brand_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `tbl_category`
--
ALTER TABLE `tbl_category`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `tbl_customer`
--
ALTER TABLE `tbl_customer`
  MODIFY `customer_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;
--
-- AUTO_INCREMENT for table `tbl_option`
--
ALTER TABLE `tbl_option`
  MODIFY `option_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT for table `tbl_order`
--
ALTER TABLE `tbl_order`
  MODIFY `order_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;
--
-- AUTO_INCREMENT for table `tbl_order_details`
--
ALTER TABLE `tbl_order_details`
  MODIFY `order_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `tbl_payment`
--
ALTER TABLE `tbl_payment`
  MODIFY `payment_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=18;
--
-- AUTO_INCREMENT for table `tbl_product`
--
ALTER TABLE `tbl_product`
  MODIFY `product_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `tbl_shipping`
--
ALTER TABLE `tbl_shipping`
  MODIFY `shipping_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `tbl_slider`
--
ALTER TABLE `tbl_slider`
  MODIFY `slider_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `user_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `user_role`
--
ALTER TABLE `user_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
