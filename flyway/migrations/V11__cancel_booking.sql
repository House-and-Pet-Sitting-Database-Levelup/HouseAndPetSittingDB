DELIMITER //

CREATE PROCEDURE CancelBooking(IN BookingID INT)
BEGIN
    DECLARE rowsAffected INT;

    START TRANSACTION;
        UPDATE Bookings SET BookingStatus = 'Cancelled' WHERE PK_BookingID = BookingID;
        SELECT ROW_COUNT() INTO rowsAffected;
    COMMIT;

END//

DELIMITER ;