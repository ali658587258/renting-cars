CREATE DATABASE CAR_RENTAL;

USE [CAR RENTAL];
CREATE TABLE  CAR
(
    car_id int NOT NULL ,
	car_number VARCHAR(20),
	Model VARCHAR(20),
	car_Type VARCHAR(20),
	car_color VARCHAR(20),
	Status VARCHAR(20),
PRIMARY KEY (car_id),
UNIQUE (car_number)

);

CREATE TABLE  Tenant
(
    t_id INT NOT NULL ,
	 name_of_tenant VARCHAR(20),
	 Mobile INT,
	 National_number VARCHAR(20),
	 Employer VARCHAR(20),
	 Nationality VARCHAR(20),
	car_id INT,
FOREIGN KEY (car_id) REFERENCES CAR(car_id) ON UPDATE CASCADE,
PRIMARY KEY (t_id)
);

CREATE TABLE Lease_contracts
(
     contract_id iNT NOT NULL ,
	 car_number VARCHAR(20),
	 contract_number VARCHAR(20),
	 Rental_date DATE,
	 Time_to_rent VARCHAR(20),
	 Return_date DATE,
	 Time_to_return VARCHAR(20),
	 Daily_rental_price VARCHAR(20),
	 car_id INT,
FOREIGN KEY (car_id) REFERENCES CAR(car_id) ON UPDATE CASCADE,


);

CREATE TABLE payment_voucher
(
    accountant_id INT NOT NULL,
	name_of_the_accountant VARCHAR(20),
	contract_number VARCHAR(20),
	the_amount date,
	car_id INT,
FOREIGN KEY (car_id) REFERENCES CAR(car_id) ON UPDATE CASCADE,


);
