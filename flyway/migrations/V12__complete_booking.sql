DELIMITER //

CREATE PROCEDURE CompleteBooking(IN BookingID INT)
BEGIN
    DECLARE rowsAffected INT;

    START TRANSACTION;
        UPDATE Bookings SET FK_bookingStatus = 4 WHERE PK_bookingID = BookingID;
        SELECT ROW_COUNT() INTO rowsAffected;
    COMMIT;

END//

DELIMITER ;