
create database user_management;

use user_management;


CREATE TABLE role (
    id int NOT NULL AUTO_INCREMENT,
    roleName varchar(255) NOT NULL,
    PRIMARY KEY (id)
);


CREATE TABLE permission (
    id int NOT NULL AUTO_INCREMENT,
    permissionName varchar(255) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE user (
    id int NOT NULL AUTO_INCREMENT,
    lastName varchar(255) NOT NULL,
    firstName varchar(255),
    age int,
    email varchar(255),
    contact int,
    userName varchar(255),
    password varchar(512),
    PRIMARY KEY (id)
);


CREATE TABLE role_permission_mapping (
    id int NOT NULL AUTO_INCREMENT,
    role_id int,
    permission_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES role(id),
    FOREIGN KEY (permission_id) REFERENCES permission(id)
);


CREATE TABLE user_role_mapping (
    id int NOT NULL AUTO_INCREMENT,
	user_id int,
    role_id int,
    PRIMARY KEY (id),
    FOREIGN KEY (user_id) REFERENCES user(id),
    FOREIGN KEY (role_id) REFERENCES role(id)
);


========================================================

ALTER TABLE user 
MODIFY id INT NOT NULL AUTO_INCREMENT;


ALTER TABLE permission 
MODIFY id INT NOT NULL AUTO_INCREMENT;

ALTER TABLE role 
MODIFY id INT NOT NULL AUTO_INCREMENT;