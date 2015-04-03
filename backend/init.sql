CREATE DATABASE sail_db;

USE sail_db;

CREATE TABLE User (
id INT PRIMARY KEY AUTO_INCREMENT,
firstName VARCHAR(50) NOT NULL, 
lastName VARCHAR(50) NOT NULL, 
email VARCHAR(50) NOT NULL, 
phone VARCHAR(10),  
rating FLOAT
);

CREATE TABLE Item (
id INT PRIMARY KEY AUTO_INCREMENT, 
name VARCHAR(200),
shortDes VARCHAR(150), 
longDesc VARCHAR(1500), 
price FLOAT NOT NULL, 
userId INT NOT NULL,
dateUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
CONSTRAINT fk_userIdemail FOREIGN KEY (userId) REFERENCES User(id) ON DELETE CASCADE
);

CREATE TABLE Category  (
itemId INT NOT NULL,
categoryName VARCHAR(50) NOT NULL,
CONSTRAINT fk_itemIdcat FOREIGN KEY (itemId) REFERENCES Item(id) ON DELETE CASCADE
);

CREATE TABLE Location  (
userId INT PRIMARY KEY, 
city VARCHAR(200) NOT NULL, 
state VARCHAR(100) NOT NULL, 
curAddress VARCHAR(200) NOT NULL,
CONSTRAINT fk_locIdemail FOREIGN KEY (userId) REFERENCES User(id) ON DELETE CASCADE
);

CREATE TABLE Sold (
buyerId INT NOT NULL,
sellerId INT NOT NULL, 
typeOfTrans VARCHAR(50) NOT NULL, 
dateUpdated TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP, 
itemId INT PRIMARY KEY
);
