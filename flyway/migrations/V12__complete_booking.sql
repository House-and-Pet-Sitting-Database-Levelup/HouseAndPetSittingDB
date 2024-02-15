DELIMITER //

CREATE PROCEDURE CompleteBooking(IN BookingID INT)
BEGIN
    DECLARE rowsAffected INT;

    START TRANSACTION;
        UPDATE Bookings SET bookingStatus = 'Completed' WHERE PK_bookingID = BookingID;
        SELECT ROW_COUNT() INTO rowsAffected;
    COMMIT;

END//

DELIMITER ;