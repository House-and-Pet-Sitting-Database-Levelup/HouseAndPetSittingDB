DELIMITER //

CREATE TRIGGER AddTotalBookingCost
BEFORE INSERT ON Bookings
FOR EACH ROW
BEGIN
    DECLARE booking_cost DECIMAL(10, 2);
    DECLARE hourly_rate DECIMAL(10,2);

    SELECT hourlyRate INTO hourly_rate FROM ServiceTypes WHERE PK_serviceTypeID = NEW.FK_serviceTypeID;

    SET booking_cost = CalculateBookingCost(NEW.startDateTime, NEW.endDateTime, hourly_rate);

    SET NEW.Totalcost = booking_cost;
END//

DELIMITER ;