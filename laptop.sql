CREATE SCHEMA Laptop;
USE laptop;
CREATE TABLE `products` (
  `product_id` int(11) UNSIGNED NOT NULL,
  `product_type` varchar(50) NOT NULL,
  PRIMARY KEY  `product_id` (`product_id`)
);

CREATE TABLE `notebooks` (
`notebook_id` int(11)  UNSIGNED NOT NULL  AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `model` varchar(45) DEFAULT NULL,
  `price` double NOT NULL,
  `processor` varchar(50) DEFAULT NULL,
  `video` varchar(50) DEFAULT NULL,
  `memory` int(11) UNSIGNED DEFAULT NULL,
  `storage_capacity` varchar(50) DEFAULT NULL,
  `display_info` varchar(50) DEFAULT NULL,
  `optical_drive` varchar(50) DEFAULT NULL,
  `connections` varchar(50) DEFAULT NULL,
  `interfaces` varchar(50) DEFAULT NULL,
  `operation_system` varchar(50) DEFAULT NULL,
  `weight` varchar(50) DEFAULT NULL,
  `size` varchar(50) DEFAULT NULL,
   `quantity` int(11) UNSIGNED DEFAULT NULL,
    `image` varchar(200) DEFAULT NULL, 
  PRIMARY KEY `notebook_id` (`notebook_id`),
  CONSTRAINT `product_notebook_id` FOREIGN KEY (`notebook_id`) REFERENCES products(`product_id`)
);

CREATE TABLE `accounts` (
  `account_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `first_name` varchar(45) NOT NULL,
  `last_Name` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `user_name` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `address` varchar(100) NOT NULL,
  `is_admin` tinyint(1) NOT NULL,
  PRIMARY KEY (`account_id`)
);
CREATE TABLE `orders` (
  `order_id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT,
  `product_id` int(11) UNSIGNED NOT NULL,
  `account_id` int(11) UNSIGNED NULL,
  `order_status` varchar(45) DEFAULT NULL,
  `orderDate` datetime DEFAULT LOCALTIME,
  PRIMARY KEY (`order_id`),
  KEY `orders_product_id` (`product_id`),
  KEY `orders_user_id` (`account_id`),
  CONSTRAINT `orders_product_id` FOREIGN KEY (`product_id`) REFERENCES  products(`product_id`),
  CONSTRAINT `orders_user_id` FOREIGN KEY (`account_id`) REFERENCES  accounts(`account_id`)
);
