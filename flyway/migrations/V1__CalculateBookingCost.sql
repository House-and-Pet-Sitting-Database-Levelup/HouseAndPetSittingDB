DELIMITER //

CREATE FUNCTION CalculateBookingCost (Booking_ID uniqueidentifier)
RETURNS DECIMAL(10,2)
BEGIN
	DECLARE @starting_date DATETIME;
	DECLARE @ending_date DATETIME;
	DECLARE @hourly_rate DECIMAL(10,2);
    DECLARE @total_hours INT;
    DECLARE @total_cost DECIMAL(10, 2);

	SET @starting_date := SELECT StartDateTime FROM Bookings WHERE Bookings.PK_BookingID = Booking_ID;
	SET @ending_date := SELECT EndDateTime FROM Bookings WHERE Bookings.PK_BookingID = Booking_ID;    
    SET @total_hours := TIMESTAMPDIFF(HOUR, starting_date, ending_date);
	SET @hourly_rate := SELECT HourlyRate FROM ServiceTypes WHERE Bookings.FK_ServiceTypeID = PK_ServiceTypeID;
    
    SET @total_cost = total_hours * hourly_rate;
    
    RETURN total_cost;
END;
//

DELIMITER ;