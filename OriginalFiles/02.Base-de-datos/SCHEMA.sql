SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

CREATE DATABASE IF NOT EXISTS `marketplace` DEFAULT CHARACTER SET utf8 COLLATE utf8_general_ci;
USE `marketplace`;

CREATE TABLE `categories` (
  `id_category` int(11) NOT NULL,
  `name_category` text DEFAULT NULL,
  `title_list_category` text DEFAULT NULL,
  `url_category` text DEFAULT NULL,
  `image_category` text DEFAULT NULL,
  `icon_category` text NOT NULL,
  `views_category` int(11) NOT NULL DEFAULT 0,
  `date_created_category` date DEFAULT NULL,
  `date_updated_category` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `disputes` (
  `id_disputes` int(11) NOT NULL,
  `id_order_dispute` int(11) DEFAULT NULL,
  `stage_dispute` text DEFAULT NULL,
  `transmitter_dispute` int(11) DEFAULT NULL,
  `receiver_dispute` int(11) DEFAULT NULL,
  `content_dispute` text DEFAULT NULL,
  `answer_dispute` text DEFAULT NULL,
  `date_created_dispute` date DEFAULT NULL,
  `date_updated_dispute` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `messages` (
  `id_messages` int(11) NOT NULL,
  `id_product_message` int(11) DEFAULT NULL,
  `transmitter_message` int(11) DEFAULT NULL,
  `receiver_message` int(11) DEFAULT NULL,
  `content_message` text DEFAULT NULL,
  `answer_message` text DEFAULT NULL,
  `date_created_message` date DEFAULT NULL,
  `date_updated_message` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `orders` (
  `id_order` int(11) NOT NULL,
  `id_store_order` int(11) DEFAULT NULL,
  `id_user_order` int(11) DEFAULT NULL,
  `id_product_order` int(11) DEFAULT NULL,
  `details_order` text DEFAULT NULL,
  `quantity_order` int(11) DEFAULT 0,
  `price_order` float DEFAULT 0,
  `email_order` text DEFAULT NULL,
  `country_order` text DEFAULT NULL,
  `city_order` text DEFAULT NULL,
  `phone_order` text DEFAULT NULL,
  `address_order` text DEFAULT NULL,
  `process_order` text DEFAULT NULL,
  `status_order` text DEFAULT NULL,
  `date_created_order` date DEFAULT NULL,
  `date_updated_order` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `products` (
  `id_product` int(11) NOT NULL,
  `feedback_product` text DEFAULT NULL,
  `state_product` text DEFAULT NULL,
  `id_store_product` int(11) DEFAULT NULL,
  `id_category_product` int(11) DEFAULT NULL,
  `id_subcategory_product` int(11) DEFAULT NULL,
  `title_list_product` text DEFAULT NULL,
  `name_product` text DEFAULT NULL,
  `url_product` text DEFAULT NULL,
  `image_product` text DEFAULT NULL,
  `price_product` float DEFAULT 0,
  `shipping_product` int(11) DEFAULT 0,
  `stock_product` int(11) DEFAULT 0,
  `delivery_time_product` int(11) DEFAULT 0,
  `offer_product` text DEFAULT NULL,
  `description_product` text DEFAULT NULL,
  `summary_product` text DEFAULT NULL,
  `details_product` text DEFAULT NULL,
  `specifications_product` text DEFAULT NULL,
  `gallery_product` text DEFAULT NULL,
  `video_product` text DEFAULT NULL,
  `top_banner_product` text DEFAULT NULL,
  `default_banner_product` text DEFAULT NULL,
  `horizontal_slider_product` text DEFAULT NULL,
  `vertical_slider_product` text DEFAULT NULL,
  `reviews_product` text DEFAULT NULL,
  `tags_product` text DEFAULT NULL,
  `sales_product` int(11) DEFAULT NULL,
  `views_product` int(11) DEFAULT NULL,
  `date_create_product` date DEFAULT NULL,
  `date_update_product` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `sales` (
  `id_sales` int(11) NOT NULL,
  `id_order_sale` int(11) DEFAULT NULL,
  `unit_price_sale` float DEFAULT 0,
  `commision_sale` float DEFAULT 0,
  `payment_method_sale` text DEFAULT NULL,
  `id_payment_sale` text DEFAULT NULL,
  `status_sale` text DEFAULT NULL,
  `date_created_sale` date DEFAULT NULL,
  `date_updated_sale` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `stores` (
  `id_store` int(11) NOT NULL,
  `id_user_store` int(11) DEFAULT NULL,
  `name_store` text DEFAULT NULL,
  `url_store` text DEFAULT NULL,
  `logo_store` text DEFAULT NULL,
  `cover_store` text DEFAULT NULL,
  `about_store` text DEFAULT NULL,
  `abstract_store` text DEFAULT NULL,
  `email_store` text DEFAULT NULL,
  `country_store` text DEFAULT NULL,
  `city_store` text DEFAULT NULL,
  `address_store` text DEFAULT NULL,
  `phone_store` text DEFAULT NULL,
  `socialnetwork_store` text DEFAULT NULL,
  `products_store` text DEFAULT NULL,
  `date_created_store` date DEFAULT NULL,
  `date_updated_store` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `subcategories` (
  `id_subcategory` int(11) NOT NULL,
  `id_category_subcategory` int(11) NOT NULL DEFAULT 0,
  `title_list_subcategory` text DEFAULT NULL,
  `name_subcategory` text DEFAULT NULL,
  `url_subcategory` text DEFAULT NULL,
  `image_subcategory` text DEFAULT NULL,
  `views_subcategory` int(11) NOT NULL DEFAULT 0,
  `date_created_subcategory` date DEFAULT NULL,
  `date_update_subcategory` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

CREATE TABLE `users` (
  `id_user` int(11) NOT NULL,
  `rol_user` text DEFAULT NULL,
  `picture_user` text DEFAULT NULL,
  `displayname_user` text DEFAULT NULL,
  `username_user` text DEFAULT NULL,
  `password_user` text DEFAULT NULL,
  `email_user` text DEFAULT NULL,
  `country_user` text DEFAULT NULL,
  `city_user` text DEFAULT NULL,
  `phone_user` text DEFAULT NULL,
  `address_user` text DEFAULT NULL,
  `token_user` text DEFAULT NULL,
  `method_user` text DEFAULT NULL,
  `wishlist_user` text DEFAULT NULL,
  `date_created_user` date DEFAULT NULL,
  `date_updated_user` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8;


ALTER TABLE `categories`
  ADD PRIMARY KEY (`id_category`);

ALTER TABLE `disputes`
  ADD PRIMARY KEY (`id_disputes`);

ALTER TABLE `messages`
  ADD PRIMARY KEY (`id_messages`);

ALTER TABLE `orders`
  ADD PRIMARY KEY (`id_order`);

ALTER TABLE `products`
  ADD PRIMARY KEY (`id_product`);

ALTER TABLE `sales`
  ADD PRIMARY KEY (`id_sales`);

ALTER TABLE `stores`
  ADD PRIMARY KEY (`id_store`);

ALTER TABLE `subcategories`
  ADD PRIMARY KEY (`id_subcategory`);

ALTER TABLE `users`
  ADD PRIMARY KEY (`id_user`);


ALTER TABLE `categories`
  MODIFY `id_category` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `disputes`
  MODIFY `id_disputes` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `messages`
  MODIFY `id_messages` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `orders`
  MODIFY `id_order` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `products`
  MODIFY `id_product` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `sales`
  MODIFY `id_sales` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `stores`
  MODIFY `id_store` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `subcategories`
  MODIFY `id_subcategory` int(11) NOT NULL AUTO_INCREMENT;

ALTER TABLE `users`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
