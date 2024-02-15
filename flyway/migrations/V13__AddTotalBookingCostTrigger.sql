DELIMITER //

CREATE TRIGGER AddTotalBookingCost
BEFORE INSERT ON Bookings
FOR EACH ROW
BEGIN
    DECLARE booking_cost DECIMAL(10, 2);
    DECLARE hourly_rate DECIMAL(10,2);

    SELECT HourlyRate INTO hourly_rate FROM ServiceTypes WHERE PK_ServiceTypeID = NEW.FK_ServiceTypeID;

    SET booking_cost = CalculateBookingCost(NEW.StartDateTime, NEW.EndDateTime, hourly_rate);

    SET NEW.Totalcost = booking_cost;
END//

DELIMITER ;