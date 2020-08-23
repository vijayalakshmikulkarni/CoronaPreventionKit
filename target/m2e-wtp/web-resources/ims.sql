DROP DATABASE imsDb;

CREATE DATABASE imsDb;

USE imsDb;

CREATE TABLE products(

	id int primary key,
	productName varchar(40) not null,	
	cost int not null,
	productDescription varchar(40) not null,
	
);

CREATE TABLE kitDetails(
	
	id int not null,		
	coronaKitId int not null,
	productId int not null,
	quantity int not null,
	amount int not null,
	
	
);
