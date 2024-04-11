/*
 Navicat Premium Data Transfer

 Source Server         : localhost
 Source Server Type    : MySQL
 Source Server Version : 100422
 Source Host           : localhost:3306
 Source Schema         : db_ecommerce

 Target Server Type    : MySQL
 Target Server Version : 100422
 File Encoding         : 65001

 Date: 12/04/2024 05:49:21
*/

SET NAMES utf8mb4;
SET FOREIGN_KEY_CHECKS = 0;

-- ----------------------------
-- Table structure for carts
-- ----------------------------
DROP TABLE IF EXISTS `carts`;
CREATE TABLE `carts`  (
  `id` int NOT NULL AUTO_INCREMENT,
  `user_id` int NULL DEFAULT NULL,
  `product_id` int NULL DEFAULT NULL,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `price` decimal(10, 2) NULL DEFAULT NULL,
  `quantity` int NULL DEFAULT NULL,
  `total` decimal(10, 2) NULL DEFAULT NULL,
  `discountPercentage` decimal(5, 2) NULL DEFAULT NULL,
  `discountedPrice` decimal(10, 2) NULL DEFAULT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 8 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_general_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of carts
-- ----------------------------
INSERT INTO `carts` VALUES (1, 1, 1, 'iPhone 9', 549.00, 2, 1098.00, 12.96, 955.69, NULL, NULL, NULL);
INSERT INTO `carts` VALUES (2, 1, 2, 'iPhone X', 899.00, 1, 899.00, 17.94, 737.72, NULL, NULL, NULL);
INSERT INTO `carts` VALUES (3, 2, 1, 'iPhone 9', 549.00, 2, 1098.00, 12.96, 955.69, NULL, NULL, NULL);
INSERT INTO `carts` VALUES (4, 1, 3, 'Samsung Universe 9', 1249.00, 3, 3747.00, 15.46, 3167.71, 'https://cdn.dummyjson.com/product-images/3/thumbnail.jpg', '2024-04-09 06:07:02', '2024-04-09 06:19:35');
INSERT INTO `carts` VALUES (5, 1, 3, 'Samsung Universe 9', 1249.00, 2, 2111.81, NULL, 1055.90, 'https://cdn.dummyjson.com/product-images/3/thumbnail.jpg', '2024-04-09 06:09:42', '2024-04-09 06:09:42');
INSERT INTO `carts` VALUES (6, 1, 3, 'Samsung Universe 9', 1249.00, 2, 2111.81, 15.46, 1055.90, 'https://cdn.dummyjson.com/product-images/3/thumbnail.jpg', '2024-04-09 06:10:21', '2024-04-09 06:10:21');
INSERT INTO `carts` VALUES (7, 1, 3, 'Samsung Universe 9', 1249.00, 2, 2498.00, 15.46, 2111.81, 'https://cdn.dummyjson.com/product-images/3/thumbnail.jpg', '2024-04-09 06:12:34', '2024-04-09 06:12:34');

-- ----------------------------
-- Table structure for category_products
-- ----------------------------
DROP TABLE IF EXISTS `category_products`;
CREATE TABLE `category_products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `category_products_name_unique`(`name` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 22 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of category_products
-- ----------------------------
INSERT INTO `category_products` VALUES (1, 'smartphones', NULL, NULL);
INSERT INTO `category_products` VALUES (2, 'laptops', NULL, NULL);
INSERT INTO `category_products` VALUES (3, 'fragrances', NULL, NULL);
INSERT INTO `category_products` VALUES (4, 'skincare', NULL, NULL);
INSERT INTO `category_products` VALUES (5, 'groceries', NULL, NULL);
INSERT INTO `category_products` VALUES (6, 'home-decoration', NULL, NULL);
INSERT INTO `category_products` VALUES (7, 'furniture', NULL, NULL);
INSERT INTO `category_products` VALUES (8, 'tops', NULL, NULL);
INSERT INTO `category_products` VALUES (9, 'womens-dresses', NULL, NULL);
INSERT INTO `category_products` VALUES (10, 'womens-shoes', NULL, NULL);
INSERT INTO `category_products` VALUES (11, 'mens-shirts', NULL, NULL);
INSERT INTO `category_products` VALUES (12, 'mens-shoes', NULL, NULL);
INSERT INTO `category_products` VALUES (13, 'mens-watches', NULL, NULL);
INSERT INTO `category_products` VALUES (14, 'womens-watches', NULL, NULL);
INSERT INTO `category_products` VALUES (15, 'womens-bags', NULL, NULL);
INSERT INTO `category_products` VALUES (16, 'womens-jewellery', NULL, NULL);
INSERT INTO `category_products` VALUES (17, 'sunglasses', NULL, NULL);
INSERT INTO `category_products` VALUES (18, 'automotive', NULL, NULL);
INSERT INTO `category_products` VALUES (19, 'motorcycle', NULL, NULL);
INSERT INTO `category_products` VALUES (20, 'lighting', NULL, NULL);

-- ----------------------------
-- Table structure for failed_jobs
-- ----------------------------
DROP TABLE IF EXISTS `failed_jobs`;
CREATE TABLE `failed_jobs`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `uuid` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `failed_jobs_uuid_unique`(`uuid` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of failed_jobs
-- ----------------------------

-- ----------------------------
-- Table structure for migrations
-- ----------------------------
DROP TABLE IF EXISTS `migrations`;
CREATE TABLE `migrations`  (
  `id` int UNSIGNED NOT NULL AUTO_INCREMENT,
  `migration` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of migrations
-- ----------------------------
INSERT INTO `migrations` VALUES (1, '2024_04_03_034431_create_products_table', 1);
INSERT INTO `migrations` VALUES (2, '2024_04_03_040512_create_category_products_table', 2);
INSERT INTO `migrations` VALUES (3, '2024_04_03_041451_create_carts_table', 3);
INSERT INTO `migrations` VALUES (4, '2024_04_03_041952_update_users_table', 4);

-- ----------------------------
-- Table structure for password_reset_tokens
-- ----------------------------
DROP TABLE IF EXISTS `password_reset_tokens`;
CREATE TABLE `password_reset_tokens`  (
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`email`) USING BTREE
) ENGINE = InnoDB CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of password_reset_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for personal_access_tokens
-- ----------------------------
DROP TABLE IF EXISTS `personal_access_tokens`;
CREATE TABLE `personal_access_tokens`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `tokenable_type` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `personal_access_tokens_token_unique`(`token` ASC) USING BTREE,
  INDEX `personal_access_tokens_tokenable_type_tokenable_id_index`(`tokenable_type` ASC, `tokenable_id` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 1 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of personal_access_tokens
-- ----------------------------

-- ----------------------------
-- Table structure for products
-- ----------------------------
DROP TABLE IF EXISTS `products`;
CREATE TABLE `products`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `title` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `description` text CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `price` decimal(10, 2) NOT NULL,
  `discount_percentage` decimal(5, 2) NOT NULL,
  `rating` decimal(3, 2) NOT NULL,
  `stock` int NOT NULL,
  `brand` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `category` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `thumbnail` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NOT NULL,
  `images` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 21 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of products
-- ----------------------------
INSERT INTO `products` VALUES (1, 'iPhone 9', 'An apple mobile which is nothing like apple', 549.00, 12.96, 4.69, 94, 'Apple', 'smartphones', 'https://cdn.dummyjson.com/product-images/1/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/1/1.jpg\", \"https://cdn.dummyjson.com/product-images/1/2.jpg\", \"https://cdn.dummyjson.com/product-images/1/3.jpg\", \"https://cdn.dummyjson.com/product-images/1/4.jpg\", \"https://cdn.dummyjson.com/product-images/1/thumbnail.jpg\"]', '2024-04-03 10:01:00', '2024-04-03 10:01:00');
INSERT INTO `products` VALUES (2, 'iPhone X', 'SIM-Free, Model A19211 6.5-inch Super Retina HD display with OLED technology A12 Bionic chip with ...', 899.00, 17.94, 4.44, 34, 'Apple', 'smartphones', 'https://cdn.dummyjson.com/product-images/2/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/2/1.jpg\", \"https://cdn.dummyjson.com/product-images/2/2.jpg\", \"https://cdn.dummyjson.com/product-images/2/3.jpg\", \"https://cdn.dummyjson.com/product-images/2/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (3, 'Samsung Universe 9', 'Samsung\'s new variant which goes beyond Galaxy to the Universe', 1249.00, 15.46, 4.09, 36, 'Samsung', 'smartphones', 'https://cdn.dummyjson.com/product-images/3/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/3/1.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (4, 'OPPOF19', 'OPPO F19 is officially announced on April 2021.', 280.00, 17.91, 4.30, 123, 'OPPO', 'smartphones', 'https://cdn.dummyjson.com/product-images/4/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/4/1.jpg\", \"https://cdn.dummyjson.com/product-images/4/2.jpg\", \"https://cdn.dummyjson.com/product-images/4/3.jpg\", \"https://cdn.dummyjson.com/product-images/4/4.jpg\", \"https://cdn.dummyjson.com/product-images/4/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (5, 'Huawei P30', 'Huawei’s re-badged P30 Pro New Edition was officially unveiled yesterday in Germany and now the device has made its way to the UK.', 499.00, 10.58, 4.09, 32, 'Huawei', 'smartphones', 'https://cdn.dummyjson.com/product-images/5/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/5/1.jpg\", \"https://cdn.dummyjson.com/product-images/5/2.jpg\", \"https://cdn.dummyjson.com/product-images/5/3.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (6, 'MacBook Pro', 'MacBook Pro 2021 with mini-LED display may launch between September, November', 1749.00, 11.02, 4.57, 83, 'Apple', 'laptops', 'https://cdn.dummyjson.com/product-images/6/thumbnail.png', '[\"https://cdn.dummyjson.com/product-images/6/1.png\", \"https://cdn.dummyjson.com/product-images/6/2.jpg\", \"https://cdn.dummyjson.com/product-images/6/3.png\", \"https://cdn.dummyjson.com/product-images/6/4.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (7, 'Samsung Galaxy Book', 'Samsung Galaxy Book S (2020) Laptop With Intel Lakefield Chip, 8GB of RAM Launched', 1499.00, 4.15, 4.25, 50, 'Samsung', 'laptops', 'https://cdn.dummyjson.com/product-images/7/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/7/1.jpg\", \"https://cdn.dummyjson.com/product-images/7/2.jpg\", \"https://cdn.dummyjson.com/product-images/7/3.jpg\", \"https://cdn.dummyjson.com/product-images/7/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (8, 'Microsoft Surface Laptop 4', 'Style and speed. Stand out on HD video calls backed by Studio Mics. Capture ideas on the vibrant touchscreen.', 1499.00, 10.23, 4.43, 68, 'Microsoft Surface', 'laptops', 'https://cdn.dummyjson.com/product-images/8/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/8/1.jpg\", \"https://cdn.dummyjson.com/product-images/8/2.jpg\", \"https://cdn.dummyjson.com/product-images/8/3.jpg\", \"https://cdn.dummyjson.com/product-images/8/4.jpg\", \"https://cdn.dummyjson.com/product-images/8/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (9, 'Infinix INBOOK', 'Infinix Inbook X1 Ci3 10th 8GB 256GB 14 Win10 Grey – 1 Year Warranty', 1099.00, 11.83, 4.54, 96, 'Infinix', 'laptops', 'https://cdn.dummyjson.com/product-images/9/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/9/1.jpg\", \"https://cdn.dummyjson.com/product-images/9/2.png\", \"https://cdn.dummyjson.com/product-images/9/3.png\", \"https://cdn.dummyjson.com/product-images/9/4.jpg\", \"https://cdn.dummyjson.com/product-images/9/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (10, 'HP Pavilion 15-DK1056WM', 'HP Pavilion 15-DK1056WM Gaming Laptop 10th Gen Core i5, 8GB, 256GB SSD, GTX 1650 4GB, Windows 10', 1099.00, 6.18, 4.43, 89, 'HP Pavilion', 'laptops', 'https://cdn.dummyjson.com/product-images/10/thumbnail.jpeg', '[\"https://cdn.dummyjson.com/product-images/10/1.jpg\", \"https://cdn.dummyjson.com/product-images/10/2.jpg\", \"https://cdn.dummyjson.com/product-images/10/3.jpg\", \"https://cdn.dummyjson.com/product-images/10/thumbnail.jpeg\"]', NULL, NULL);
INSERT INTO `products` VALUES (11, 'perfume Oil', 'Mega Discount, Impression of Acqua Di Gio by GiorgioArmani concentrated attar perfume Oil', 13.00, 8.40, 4.26, 65, 'Impression of Acqua Di Gio', 'fragrances', 'https://cdn.dummyjson.com/product-images/11/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/11/1.jpg\", \"https://cdn.dummyjson.com/product-images/11/2.jpg\", \"https://cdn.dummyjson.com/product-images/11/3.jpg\", \"https://cdn.dummyjson.com/product-images/11/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (12, 'Brown Perfume', 'Royal_Mirage Sport Brown Perfume for Men & Women - 120ml', 40.00, 15.66, 4.00, 52, 'Royal_Mirage', 'fragrances', 'https://cdn.dummyjson.com/product-images/12/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/12/1.jpg\", \"https://cdn.dummyjson.com/product-images/12/2.jpg\", \"https://cdn.dummyjson.com/product-images/12/3.png\", \"https://cdn.dummyjson.com/product-images/12/4.jpg\", \"https://cdn.dummyjson.com/product-images/12/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (13, 'Fog Scent Xpressio Perfume', 'Product details of Best Fog Scent Xpressio Perfume 100ml For Men cool long lasting perfumes for Men', 13.00, 8.14, 4.59, 61, 'Fog Scent Xpressio', 'fragrances', 'https://cdn.dummyjson.com/product-images/13/thumbnail.webp', '[\"https://cdn.dummyjson.com/product-images/13/1.jpg\", \"https://cdn.dummyjson.com/product-images/13/2.png\", \"https://cdn.dummyjson.com/product-images/13/3.jpg\", \"https://cdn.dummyjson.com/product-images/13/4.jpg\", \"https://cdn.dummyjson.com/product-images/13/thumbnail.webp\"]', NULL, NULL);
INSERT INTO `products` VALUES (14, 'Non-Alcoholic Concentrated Perfume Oil', 'Original Al Munakh® by Mahal Al Musk | Our Impression of Climate | 6ml Non-Alcoholic Concentrated Perfume Oil', 120.00, 15.60, 4.21, 114, 'Al Munakh', 'fragrances', 'https://cdn.dummyjson.com/product-images/14/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/14/1.jpg\", \"https://cdn.dummyjson.com/product-images/14/2.jpg\", \"https://cdn.dummyjson.com/product-images/14/3.jpg\", \"https://cdn.dummyjson.com/product-images/14/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (15, 'Eau De Perfume Spray', 'Genuine  Al-Rehab spray perfume from UAE/Saudi Arabia/Yemen High Quality', 30.00, 10.99, 4.70, 105, 'Lord - Al-Rehab', 'fragrances', 'https://cdn.dummyjson.com/product-images/15/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/15/1.jpg\", \"https://cdn.dummyjson.com/product-images/15/2.jpg\", \"https://cdn.dummyjson.com/product-images/15/3.jpg\", \"https://cdn.dummyjson.com/product-images/15/4.jpg\", \"https://cdn.dummyjson.com/product-images/15/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (16, 'Hyaluronic Acid Serum', 'L\'OrÃ©al Paris introduces Hyaluron Expert Replumping Serum formulated with 1.5% Hyaluronic Acid', 19.00, 13.31, 4.83, 110, 'L\'Oreal Paris', 'skincare', 'https://cdn.dummyjson.com/product-images/16/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/16/1.png\", \"https://cdn.dummyjson.com/product-images/16/2.webp\", \"https://cdn.dummyjson.com/product-images/16/3.jpg\", \"https://cdn.dummyjson.com/product-images/16/4.jpg\", \"https://cdn.dummyjson.com/product-images/16/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (17, 'Tree Oil 30ml', 'Tea tree oil contains a number of compounds, including terpinen-4-ol, that have been shown to kill certain bacteria,', 12.00, 4.09, 4.52, 78, 'Hemani Tea', 'skincare', 'https://cdn.dummyjson.com/product-images/17/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/17/1.jpg\", \"https://cdn.dummyjson.com/product-images/17/2.jpg\", \"https://cdn.dummyjson.com/product-images/17/3.jpg\", \"https://cdn.dummyjson.com/product-images/17/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (18, 'Oil Free Moisturizer 100ml', 'Dermive Oil Free Moisturizer with SPF 20 is specifically formulated with ceramides, hyaluronic acid & sunscreen.', 40.00, 13.10, 4.56, 88, 'Dermive', 'skincare', 'https://cdn.dummyjson.com/product-images/18/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/18/1.jpg\", \"https://cdn.dummyjson.com/product-images/18/2.jpg\", \"https://cdn.dummyjson.com/product-images/18/3.jpg\", \"https://cdn.dummyjson.com/product-images/18/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (19, 'SPF 20 Face Moisturizer', 'A moisturizing face sunscreen, this non-greasy formula is fast-absorbing and lightweight.', 35.00, 12.73, 4.63, 95, 'Neutrogena', 'skincare', 'https://cdn.dummyjson.com/product-images/19/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/19/1.jpg\", \"https://cdn.dummyjson.com/product-images/19/2.jpg\", \"https://cdn.dummyjson.com/product-images/19/3.jpg\", \"https://cdn.dummyjson.com/product-images/19/thumbnail.jpg\"]', NULL, NULL);
INSERT INTO `products` VALUES (20, 'Cetaphil Daily Facial Cleanser', 'Gentle enough for everyday use; Mild and non-irritating formula is perfect for normal to oily skin and is suitable for even the most sensitive skin.', 15.00, 9.78, 4.27, 105, 'Cetaphil', 'skincare', 'https://cdn.dummyjson.com/product-images/20/thumbnail.jpg', '[\"https://cdn.dummyjson.com/product-images/20/1.jpg\", \"https://cdn.dummyjson.com/product-images/20/2.jpg\", \"https://cdn.dummyjson.com/product-images/20/3.jpg\", \"https://cdn.dummyjson.com/product-images/20/thumbnail.jpg\"]', NULL, NULL);

-- ----------------------------
-- Table structure for users
-- ----------------------------
DROP TABLE IF EXISTS `users`;
CREATE TABLE `users`  (
  `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT,
  `name` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `remember_token` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `firstName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `lastName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `maidenName` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `age` int NULL DEFAULT NULL,
  `gender` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `phone` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `username` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `birthDate` date NULL DEFAULT NULL,
  `image` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bloodGroup` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `height` int NULL DEFAULT NULL,
  `weight` decimal(8, 2) NULL DEFAULT NULL,
  `eyeColor` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `hair` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `domain` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ip` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `address` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `macAddress` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `university` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `bank` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `company` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  `ein` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `ssn` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `userAgent` varchar(255) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci NULL DEFAULT NULL,
  `crypto` longtext CHARACTER SET utf8mb4 COLLATE utf8mb4_bin NULL,
  PRIMARY KEY (`id`) USING BTREE,
  UNIQUE INDEX `users_username_unique`(`username` ASC) USING BTREE,
  UNIQUE INDEX `users_email_unique`(`email` ASC) USING BTREE
) ENGINE = InnoDB AUTO_INCREMENT = 5 CHARACTER SET = utf8mb4 COLLATE = utf8mb4_unicode_ci ROW_FORMAT = Dynamic;

-- ----------------------------
-- Records of users
-- ----------------------------
INSERT INTO `users` VALUES (1, 'suryo atmojo', 'suryo@example.com', NULL, '$2y$12$wiWOv3Ohf5wbrPvXRIM2Su/Ku1vEV87Y9PrxGqQJhfQY1r5vBFImu', NULL, '2024-04-03 04:56:32', '2024-04-03 04:56:32', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);
INSERT INTO `users` VALUES (3, NULL, 'suryoatm@gmail.com', NULL, '$2y$12$GUBfK9w69gp7.E8WerJY5uTLCe5LSHwr7IoQg2iOdH3PtWE9ce0KG', NULL, '2024-04-03 04:59:58', '2024-04-03 04:59:58', 'suryo', 'atmojo', NULL, 30, 'male', '081217173406', 'atmojo', '1989-01-09', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL);

SET FOREIGN_KEY_CHECKS = 1;
