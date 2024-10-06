/*Update Room Status*/
Update Booking
Set Booking_status = "Cancelled"
Where Booking_id = 10;

/*Available Room Status*/

Select * from Room
where Room_status = "Available";

/*View Customer Booking details*/

CREATE VIEW Booking_details
As
Select C.Customer_name,B.Check_in,B.Check_out,B.Booking_date,B.Booking_status,R.Room_no,R.Room_type,R.Room_status,R.Price,R.Floor_no
From Booking As B
Join Customer As C 
On B.Customer_id = C.Customer_id
Join Room As R
On B.Room_id = R.Room_id;

Select * from Booking_details;
 
/*Check Rooms Between Date*/

CREATE VIEW Room_detail
AS
Select R.Room_no , R.Room_type, B.Check_in, B.Check_out
From Room As R
Join Booking As B
On B.Room_id = R.Room_id
Where B.Check_in BETWEEN '2023-01-01' And '2023-12-01';

Select * from Room_detail;

/*Total Payment for Customer*/

CREATE VIEW C_Payment
As
SELECT C.Customer_name, SUM(P.Amount) AS Total_payment
FROM Payment As P
JOIN Booking As B 
ON P.Booking_id = B.Booking_id
JOIN Customer As C 
ON B.Customer_id = C.Customer_id
WHERE C.Customer_id = 1

select * from C_Payment ;

/*view all payment details*/

CREATE VIEW Payment_details
As
SELECT P.Payment_id, C.Customer_name, R.Room_no, P.Amount, P.Payment_method, P.Payment_date
FROM Payment As P
JOIN Booking As B 
ON P.Booking_id = B.Booking_id
JOIN Customer As C 
ON B.Customer_id = C.Customer_id
JOIN Room As R booking_details
ON B.Room_id = R.Room_id;

Select * from Payment_details;
