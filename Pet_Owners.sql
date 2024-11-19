CREATE DATABASE test;

USE test;

CREATE TABLE addresses(
	id INT,
	house_number INT,
	city VARCHAR(20),
	postcode VARCHAR(7)
);

CREATE TABLE people (
	id INT,
	first_name VARCHAR(20),
	last_name VARCHAR(20),
	address_id INT
);

CREATE TABLE pets (
	id INT,
	name VARCHAR(20),
	species VARCHAR(20),
	owner_id INT
);

ALTER TABLE addresses
ADD PRIMARY KEY (id);

ALTER TABLE addresses
DROP PRIMARY KEY;

ALTER TABLE addresses
MODIFY id INT;

ALTER TABLE people
ADD PRIMARY KEY (id);

ALTER TABLE people
ADD CONSTRAINT FK_PeopleAddress
FOREIGN KEY (address_id) 
REFERENCES  addresses(id);

ALTER TABLE people
DROP FOREIGN KEY FK_PeopleAddress,
DROP INDEX FK_PeopleAddress;

ALTER TABLE pets
ADD CONSTRAINT u_species UNIQUE (species);

ALTER TABLE pets
DROP INDEX u_species;

ALTER TABLE pets
ADD PRIMARY KEY (id);

ALTER TABLE pets
ADD CONSTRAINT FK_PetsOwners
FOREIGN KEY (owner_id) REFERENCES people(id);

ALTER TABLE people
ADD COLUMN email VARCHAR(30);

ALTER TABLE people
ADD CONSTRAINT u_email UNIQUE (email);

ALTER TABLE pets
RENAME COLUMN name to first_name;

ALTER TABLE addresses
MODIFY COLUMN postcode CHAR(7);

SHOW TABLES;
DESCRIBE addresses;
DESCRIBE people;
DESCRIBE pets;
