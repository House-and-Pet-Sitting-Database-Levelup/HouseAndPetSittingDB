DELIMITER //

CREATE PROCEDURE CancelBooking(IN BookingID INT)
BEGIN
    DECLARE rowsAffected INT;

    START TRANSACTION;
        UPDATE Bookings SET FK_bookingStatus = 5 WHERE PK_bookingID = BookingID;
        SELECT ROW_COUNT() INTO rowsAffected;
    COMMIT;

END//

DELIMITER ;