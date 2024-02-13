CREATE TRIGGER AddTotalBookingCost
BEFORE INSERT ON Bookings
FOR EACH ROW
BEGIN
    DECLARE @booking_cost DECIMAL(10, 2);
	DECLARE @hourly_rate DECIMAL(10,2);

	SET @hourly_rate = SELECT HourlyRate FROM ServiceTypes WHERE NEW.FK_ServiceTypeID = PK_ServiceTypeID;
    
    SET @booking_cost = CalculateBookingCost(NEW.StartDateTime, NEW.EndDateTime);
  
    SET NEW.Totalcost = @booking_cost;
