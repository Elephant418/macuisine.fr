
-- ---
-- Globals
-- ---

-- SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
-- SET FOREIGN_KEY_CHECKS=0;

-- ---
-- Table 'kitchen'
-- 
-- ---

DROP TABLE IF EXISTS kitchen;
        
CREATE TABLE kitchen (
  id INT(11) AUTO_INCREMENT DEFAULT NULL,
  user_id INT(11) NOT NULL,
  color1 VARCHAR(255) NULL DEFAULT NULL,
  color2 VARCHAR(255) NULL DEFAULT NULL,
  color3 VARCHAR(255) NULL DEFAULT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table 'user'
-- 
-- ---

DROP TABLE IF EXISTS user;
        
CREATE TABLE user (
  id INT(11) NULL AUTO_INCREMENT DEFAULT NULL,
  first_name VARCHAR(255) NOT NULL,
  last_name VARCHAR(255) NOT NULL,
  email VARCHAR(255) NOT NULL,
  login VARCHAR(255) NOT NULL,
  password VARCHAR(255) NOT NULL,
  `right` INT(1) NOT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table 'recipe'
-- 
-- ---

DROP TABLE IF EXISTS recipe;
        
CREATE TABLE recipe (
  id INT(11) NULL AUTO_INCREMENT DEFAULT NULL,
  name VARCHAR(255) NOT NULL,
  level SMALLINT(11) NULL DEFAULT NULL,
  time INT(11) NULL DEFAULT NULL,
  cost INT(11) NULL DEFAULT NULL,
  cooking INT(11) NULL DEFAULT NULL,
  content VARCHAR(255) NOT NULL,
  image BLOB NULL DEFAULT NULL,
  nb INT(11) NOT NULL,
  kitchen_id INT(11) NOT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table 'ingredient'
-- 
-- ---

DROP TABLE IF EXISTS ingredient;
        
CREATE TABLE ingredient (
  id INT(11) NULL AUTO_INCREMENT DEFAULT NULL,
  recipe_id INT(11) NOT NULL,
  quantity INT(11) NOT NULL DEFAULT 0,
  label VARCHAR(255) NOT NULL,
  PRIMARY KEY (id)
);

-- ---
-- Table 'favorite'
-- 
-- ---

DROP TABLE IF EXISTS favorite;
        
CREATE TABLE favorite (
  kitchen_id INT(11) NOT NULL,
  recipe_id INT(11) NOT NULL,
  PRIMARY KEY (kitchen_id)
);

-- ---
-- Foreign Keys 
-- ---


-- ---
-- Table Properties
-- ---

-- ALTER TABLE kitchen ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE user ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE recipe ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE ingredient ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;
-- ALTER TABLE favorite ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_bin;

-- ---
-- Test Data
-- ---

-- INSERT INT(11)O kitchen (id,user_id,color1,color2,color3) VALUES
-- ('','','','','');
-- INSERT INT(11)O user (id,first_name,last_name,email,login,password) VALUES
-- ('','','','','','');
-- INSERT INT(11)O recipe (id,name,level,time,cost,cooking,content,image,nb) VALUES
-- ('','','','','','','','','');
-- INSERT INT(11)O ingredient (id,recipe_id,quantity,label) VALUES
-- ('','','','');
-- INSERT INT(11)O favorite (kitchen_id,recipe_id) VALUES
-- ('','');

