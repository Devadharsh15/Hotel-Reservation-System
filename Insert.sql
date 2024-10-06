--insert the values into customer table

INSERT INTO Customer VALUES(01,"Abi",9658472314,"Mariyamman Kovil street,Karur","abi123@gmail.com","Female");
INSERT INTO Customer VALUES(02,"Gayathri",6352478123,"36,North Street,Namakkal","Gayu3452@gmail.com","Female");
INSERT INTO Customer VALUES(03,"Sneha",8457126348,"47,West Street,Salem","Sneha2025@gmail.com","Female");
INSERT INTO Customer VALUES(04,"AKash",6484714521,"1657 Blane street,Chennai","akash05@gmail.com","Male");
INSERT INTO Customer VALUES(05,"Gobi",8475269832," 205 Homeland Apartments 7th Street,Kallakuruchi","Gobi16@gmail.com","Male");
INSERT INTO Customer VALUES(06,"Deva",843411656,"36 Bhagavathi Amman Kovil street,Namakkal","deva1503@gmail.com","Female");
INSERT INTO Customer VALUES(07,"Pradeep",9487126540,"40 East street,Madurai","pradeep02@gmail.com","Male");
INSERT INTO Customer VALUES(08,"Abi",6584172365,"55 South street,Nagapattinam","abi003@gmail.com","Female");
INSERT INTO Customer VALUES(09,"Swathi",9852417536,"40 Vinayagar kovil street,Perambalur","Swa4567@gmail.com","Female");
INSERT INTO Customer VALUES(10,"Madhumitha",7859486523,"5th floor lavanya apartment,Trichy","madhu03@gmail.com","Female");

Select * from Customer;

---insert the values into Room----

INSERT INTO Room VALUES(01,501,"Double",2500,"Available",5);
INSERT INTO Room VALUES(05,406,"Triple",1500,"Available",4);
INSERT INTO Room VALUES(09,203,"Single",4500,"Booked",2);
INSERT INTO Room VALUES(10,201,"Single",4500,"Available",2);
INSERT INTO Room VALUES(04,10,"Triple",1500,"Available",0);
INSERT INTO Room VALUES(11,510,"Double",2500,"Booked",5);
INSERT INTO Room VALUES(15,101,"Triple",1500,"Booked",1);
INSERT INTO Room VALUES(20,110,"Single",4500,"Available",1);
INSERT INTO Room VALUES(25,307,"Double",2500,"Booked",3);
INSERT INTO Room VALUES(30,505,"Double",2500,"Available",5);

select * from Room;

--insert the values into booking table-----

INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (1, 02, 10, '2024-10-01', '2024-10-05', 'Confirmed');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (2, 05, 04, '2024-11-01', '2024-11-02', 'Confirmed');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (3, 01, 09, '2023-05-06', '2023-05-07', 'Cancelled');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (4, 03, 05, '2023-06-07', '2023-06-09', 'Confirmed');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (5, 04, 01, '2023-04-06', '2023-04-07', 'Cancelled');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (6, 01, 01, '2023-02-01', '2023-02-05', 'Completed');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (7, 05, 04, '2023-03-11', '2023-03-15', 'Confirmed');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (8, 06, 11, '2022-02-11', '2022-02-15', 'Cancelled');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (9, 07, 15, '2020-10-11', '2020-10-12', 'Completed');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (10, 08, 20, '2021-02-11', '2021-02-15', 'Confirmed');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (11, 09, 25, '2020-02-11', '2020-02-14', 'Confirmed');
INSERT INTO Booking (Booking_id, Customer_id, Room_id, Check_in, Check_out, Booking_status)
VALUES (12, 10, 30, '2020-12-30', '2020-12-31', 'Confirmed');

Select * from Booking;

---insert the values into Payment---

INSERT INTO Payment(Payment_id, Booking_id, Amount, Payment_method)
VALUES(201, 10, 2500, "Cash");
INSERT INTO Payment(Payment_id, Booking_id, Amount, Payment_method)
VALUES(202, 12, 1500, "Debit Card");
INSERT INTO Payment(Payment_id, Booking_id, Amount, Payment_method, Transaction_id)
VALUES(203, 08, 4500, "Online Payment", 587469123650);
INSERT INTO Payment(Payment_id, Booking_id, Amount, Payment_method)
VALUES(204, 1, 4500 , "Cash");
INSERT INTO Payment(Payment_id, Booking_id, Amount, Payment_method, Transaction_id)
VALUES(205, 05, 2500, "Online Payment", 659874123650);
INSERT INTO Payment(Payment_id, Booking_id, Amount, Payment_method, Transaction_id)
VALUES(206, 04, 1500, "Online Payment", 235478125432);
INSERT INTO Payment(Payment_id, Booking_id, Amount, Payment_method)
VALUES(207, 02, 4500, "Debit Card");
INSERT INTO Payment(Payment_id, Booking_id, Amount, Payment_method, Transaction_id)
VALUES(208, 03, 2500, "Online Payment", 234789568741);
INSERT INTO Payment(Payment_id, Booking_id, Amount, Payment_method)
VALUES(209, 06, 1500, "Cash");
INSERT INTO Payment(Payment_id, Booking_id, Amount, Payment_method, Transaction_id)
VALUES(210, 07, 2500, "Online Payment", 417895632874);

Select * From Payment;

----insert the value into Service----

INSERT INTO Service(Service_id,Booking_id,Service_type,Service_cost,Service_date)
VALUES(601, 05, "Laundry Service", 100, "2023-04-07");
INSERT INTO Service(Service_id,Booking_id,Service_type,Service_cost,Service_date)
VALUES(602, 04, "Room Service", 50, "2023-06-08");
INSERT INTO Service(Service_id,Booking_id,Service_type,Service_cost,Service_date)
VALUES(603, 02, "Room Service", 50, "2024-11-01");
INSERT INTO Service(Service_id,Booking_id,Service_type,Service_cost,Service_date)
VALUES(604, 01, "Laundry Service", 100, "2024-10-03");
INSERT INTO Service(Service_id,Booking_id,Service_type,Service_cost,Service_date)
VALUES(605, 06, "Laundry Service", 100, "2023-02-04");
INSERT INTO Service(Service_id,Booking_id,Service_type,Service_cost,Service_date)
VALUES(606, 03, "Room Service", 50, "2023-05-06");
INSERT INTO Service(Service_id,Booking_id,Service_type,Service_cost,Service_date)
VALUES(607, 08, "Room Service", 50, "2022-02-12");
INSERT INTO Service(Service_id,Booking_id,Service_type,Service_cost,Service_date)
VALUES(608, 07, "Room Service", 50, "2023-03-12");
INSERT INTO Service(Service_id,Booking_id,Service_type,Service_cost,Service_date)
VALUES(609, 12, "Laundry Service", 100, "2020-12-30");
INSERT INTO Service(Service_id,Booking_id,Service_type,Service_cost,Service_date)
VALUES(610, 11, "Laundry Service", 100, "2020-02-11");

Select * from Service;
