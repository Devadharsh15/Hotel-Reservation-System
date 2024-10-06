DELIMITER $$
Create procedure Bookingtable()
Begin
select * from Booking;
end $$

call Bookingtable;

DELIMITER $$
Create procedure Customertable()
Begin
select * from Customer;
end $$

call Customertable;

DELIMITER $$
Create procedure Paymenttable()
Begin
select * from Payment;
end $$

call Paymenttable;

DELIMITER $$
Create procedure Roomtable()
Begin
select * from Room;
end $$

call Roomtable;

DELIMITER $$
Create procedure Servicetable()
Begin
select * from Service;
end $$

call Servicetable;

/* Count the Room_status*/
DELIMITER $$

CREATE PROCEDURE GetRoomStatus3(IN Room_status VARCHAR(50))
BEGIN
    SELECT COUNT(*) 
    FROM Room 
    WHERE Room_status = Room_status;
END $$

DELIMITER $$

CALL GetRoomStatus3('Completed');



