Use Project

---creating the table for customer---
Create table Customer(
Customer_id int primary key,
Customer_name VARCHAR(50),
Mobile_no VARCHAR(50),
Addres VARCHAR(50),
Email VARCHAR(50),
Gender VARCHAR(50));

---creating the table for  Room---

Create table Room(
Room_id int Primary key,
Room_no int,
Room_type VARCHAR(50), --Example:'Single','Double','Trible'
Price int,
Room_status VARCHAR(50), --Example:'Available','Booked'
Floor_no int);

---Creating the table for Booking---

Create table Booking(
Booking_id int primary key,
Customer_id int,
Room_id int,
Check_in DATE,
Check_out DATE,
Booking_date DATE DEFAULT (CURDATE()),
Booking_status VARCHAR(50),
Constraint FK_Booking FOREIGN KEY (Customer_id) REFERENCES Customer(Customer_id),
Constraint FK_Room FOREIGN KEY (Room_id) REFERENCES Room(Room_id)
);

---creating the table for payment-----

CREATE TABLE Payment (
    Payment_id INT PRIMARY KEY,
    Booking_id INT,
    Payment_date DATE DEFAULT (CURDATE()),
    Amount DECIMAL(10, 2),
    Payment_method VARCHAR(50),  
    Transaction_id VARCHAR(50),  
    CONSTRAINT Fk_Payment FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)
);

---creating the table for Service----

CREATE table Service(
Service_id INT Primary Key,
Booking_id INT,
Service_type VARCHAR(50),
Service_cost DECIMAL(10,2),
Service_date DATE,
CONSTRAINT Fk_Serivce FOREIGN KEY (Booking_id) REFERENCES Booking(Booking_id)
);


