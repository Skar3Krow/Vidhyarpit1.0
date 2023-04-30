CREATE DATABASE Adani_momo_corner;
USE Adani_momo_corner;

CREATE TABLE sign_up 
(User_name varchar(25) unique primary key,
Email varchar(30) unique,
Contact_no varchar(10) unique,
User_Password varchar(15) 
);


CREATE TABLE User_Profile
(U_id int NOT NULL unique primary key,
First_name varchar(20) NOT NULL,
User_Password varchar(20) NOT NULL, 
User_name varchar(25) unique,
Email varchar(30) unique,
Contact_no bigint(10) unique,
Address varchar(30) NOT NULL,
city varchar(20) NOT NULL,
pincode varchar(10) NOT NULL
); 
