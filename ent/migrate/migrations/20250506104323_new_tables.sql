-- Create "groups" table
CREATE TABLE `groups` (`id` bigint NOT NULL AUTO_INCREMENT, `name` varchar(255) NOT NULL, PRIMARY KEY (`id`)) CHARSET utf8mb4 COLLATE utf8mb4_bin;
-- Create "cars" table
CREATE TABLE `cars` (`id` bigint NOT NULL AUTO_INCREMENT, `model` varchar(255) NOT NULL, `registered_at` timestamp NOT NULL, `user_cars` bigint NULL, PRIMARY KEY (`id`), INDEX `cars_users_cars` (`user_cars`), CONSTRAINT `cars_users_cars` FOREIGN KEY (`user_cars`) REFERENCES `users` (`id`) ON UPDATE NO ACTION ON DELETE SET NULL) CHARSET utf8mb4 COLLATE utf8mb4_bin;
