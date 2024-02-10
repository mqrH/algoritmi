CREATE TABLE `workers`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `animals_id` BIGINT NOT NULL
);
CREATE TABLE `animals`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `lion` CHAR(255) NOT NULL,
    `cat` CHAR(255) NOT NULL,
    `dog` CHAR(255) NOT NULL
);
CREATE TABLE `food`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `food1` CHAR(255) NOT NULL,
    `food2` CHAR(255) NOT NULL,
    `food3` CHAR(255) NOT NULL,
    `owner_id` BIGINT NOT NULL
);
CREATE TABLE `owner`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `animals_id` BIGINT NOT NULL,
    `name1` CHAR(255) NOT NULL,
    `name2` CHAR(255) NOT NULL,
    `name3` CHAR(255) NOT NULL
);
CREATE TABLE `types of food`(
    `id` BIGINT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
    `food_id` BIGINT NOT NULL,
    `apple` CHAR(255) NOT NULL,
    `banana` CHAR(255) NOT NULL,
    `tee` CHAR(255) NOT NULL,
    `animals_id` BIGINT NOT NULL
);
ALTER TABLE
    `owner` ADD CONSTRAINT `owner_animals_id_foreign` FOREIGN KEY(`animals_id`) REFERENCES `animals`(`id`);
ALTER TABLE
    `animals` ADD CONSTRAINT `animals_dog_foreign` FOREIGN KEY(`dog`) REFERENCES `owner`(`name3`);
ALTER TABLE
    `workers` ADD CONSTRAINT `workers_animals_id_foreign` FOREIGN KEY(`animals_id`) REFERENCES `animals`(`id`);
ALTER TABLE
    `types of food` ADD CONSTRAINT `types of food_animals_id_foreign` FOREIGN KEY(`animals_id`) REFERENCES `animals`(`id`);
ALTER TABLE
    `types of food` ADD CONSTRAINT `types of food_tee_foreign` FOREIGN KEY(`tee`) REFERENCES `animals`(`dog`);
ALTER TABLE
    `animals` ADD CONSTRAINT `animals_lion_foreign` FOREIGN KEY(`lion`) REFERENCES `owner`(`name1`);
ALTER TABLE
    `animals` ADD CONSTRAINT `animals_cat_foreign` FOREIGN KEY(`cat`) REFERENCES `owner`(`name2`);
ALTER TABLE
    `food` ADD CONSTRAINT `food_owner_id_foreign` FOREIGN KEY(`owner_id`) REFERENCES `owner`(`id`);
ALTER TABLE
    `types of food` ADD CONSTRAINT `types of food_food_id_foreign` FOREIGN KEY(`food_id`) REFERENCES `food`(`id`);
ALTER TABLE
    `types of food` ADD CONSTRAINT `types of food_banana_foreign` FOREIGN KEY(`banana`) REFERENCES `animals`(`cat`);
ALTER TABLE
    `types of food` ADD CONSTRAINT `types of food_apple_foreign` FOREIGN KEY(`apple`) REFERENCES `animals`(`lion`);