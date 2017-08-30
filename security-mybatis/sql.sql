CREATE DATABASE springboot_security;

USE `springboot_security`;

CREATE TABLE SYS_USER(
    ID INT PRIMARY KEY ,
    USERNAME VARCHAR(50),
    PASSWORD VARCHAR(50)
);

CREATE TABLE SYS_ROLE(
    ID INT PRIMARY KEY ,
    NAME VARCHAR(50)
);

CREATE TABLE SYS_ROLE_USER(
    ID INT PRIMARY KEY ,
    SYS_USER_ID INT,
    SYS_ROLE_ID INT
);

CREATE TABLE SYS_PERMISSIOM(
      ID INT PRIMARY KEY ,
      NAME VARCHAR(50),
      DESCRIPTION  VARCHAR(255),
      URL VARCHAR(255),
      PID INT
);

CREATE TABLE SYS_PERMISSIOM_ROLE(
    ID INT PRIMARY KEY ,
    PERMISSIOM_ID INT,
    ROLE_ID INT
);

INSERT INTO `SYS_PERMISSIOM` VALUES ('1', 'ROLE_HOME', 'home', '/', NULL), ('2', 'ROLE_ADMIN', 'ABel', '/admin', NULL);

INSERT INTO `SYS_PERMISSIOM_ROLE` VALUES ('1', '1', '1'), ('2', '1', '2'), ('3', '2', '1');

--(pwd:111111)
INSERT INTO SYS_USER (id,username, PASSWORD) VALUES (1,'admin', '477a988039b140474285a23a9bcc50af');
INSERT INTO SYS_USER (id,username, PASSWORD) VALUES (2,'abel', '477a988039b140474285a23a9bcc50af');

INSERT INTO SYS_ROLE(id,NAME) VALUES(1,'ROLE_ADMIN');
INSERT INTO SYS_ROLE(id,NAME) VALUES(2,'ROLE_USER');

INSERT INTO SYS_ROLE_USER(SYS_USER_ID,ROLES_ID) VALUES(1,1);
INSERT INTO SYS_ROLE_USER(SYS_USER_ID,ROLES_ID) VALUES(2,2);


