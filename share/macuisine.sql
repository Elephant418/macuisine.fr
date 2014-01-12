
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'kitchen'
-- 
-- ---

DROP TABLE IF EXISTS `kitchen`;
        
CREATE TABLE `kitchen` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `user_id` INT NOT NULL,
  `color1` VARCHAR NULL DEFAULT NULL,
  `color2` VARCHAR NULL DEFAULT NULL,
  `color3` VARCHAR NULL DEFAULT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'user'
-- 
-- ---

DROP TABLE IF EXISTS `user`;
        
CREATE TABLE `user` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `first_name` VARCHAR NOT NULL,
  `last_name` VARCHAR NOT NULL,
  `email` VARCHAR NOT NULL,
  `login` VARCHAR NOT NULL,
  `password` VARCHAR NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'recipe'
-- 
-- ---

DROP TABLE IF EXISTS `recipe`;
        
CREATE TABLE `recipe` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `name` VARCHAR NOT NULL,
  `level` SMALLINT NULL DEFAULT NULL,
  `time` INT NULL DEFAULT NULL,
  `cost` TINYINT NULL DEFAULT NULL,
  `cooking` INT NULL DEFAULT NULL,
  `content` VARCHAR NOT NULL,
  `image` BLOB NULL DEFAULT NULL,
  `nb` TINYINT NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'ingredient'
-- 
-- ---

DROP TABLE IF EXISTS `ingredient`;
        
CREATE TABLE `ingredient` (
  `id` TINYINT NULL AUTO_INCREMENT DEFAULT NULL,
  `recipe_id` TINYINT NOT NULL,
  `quantity` TINYINT NOT NULL DEFAULT 0,
  `label` VARCHAR NOT NULL,
  PRIMARY KEY (`id`)
);

-- ---
-- Table 'favorite'
-- 
-- ---

DROP TABLE IF EXISTS `favorite`;
        
CREATE TABLE `favorite` (
  `kitchen_id` TINYINT NOT NULL,
  `recipe_id` TINYINT NOT NULL,
  PRIMARY KEY (`kitchen_id`)
);

-- ---
-- Foreign Keys 
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE `kitchen` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `user` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `recipe` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `ingredient` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE `favorite` ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INTO `kitchen` (`id`,`user_id`,`color1`,`color2`,`color3`) VALUES
-- ('','','','','');
-- INSERT INTO `user` (`id`,`first_name`,`last_name`,`email`,`login`,`password`) VALUES
-- ('','','','','','');
-- INSERT INTO `recipe` (`id`,`name`,`level`,`time`,`cost`,`cooking`,`content`,`image`,`nb`) VALUES
-- ('','','','','','','','','');
-- INSERT INTO `ingredient` (`id`,`recipe_id`,`quantity`,`label`) VALUES
-- ('','','','');
-- INSERT INTO `favorite` (`kitchen_id`,`recipe_id`) VALUES
-- ('','');

