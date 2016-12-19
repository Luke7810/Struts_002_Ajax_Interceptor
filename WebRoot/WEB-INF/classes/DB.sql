CREATE DATABASE struts_user;

USE struts_user;

CREATE TABLE `struts_user`.`userInfor`( `name` VARCHAR(40) NOT NULL, `age` INT NOT NULL ) ENGINE=INNODB CHARSET=utf8; 

INSERT INTO `struts_user`.`userinfor` (`name`, `age`) VALUES ('Luke', '30'); 
INSERT INTO `struts_user`.`userinfor` (`name`, `age`) VALUES ('Make', '40'); 
INSERT INTO `struts_user`.`userinfor` (`name`, `age`) VALUES ('Louise', '50'); 