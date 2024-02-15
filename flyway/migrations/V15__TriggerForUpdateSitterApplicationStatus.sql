DELIMITER //
CREATE TRIGGER update_sitter_application_status 
AFTER UPDATE ON Bookings 
FOR EACH ROW
BEGIN
    IF NEW.BookingStatus = 'Approved' THEN
        UPDATE SitterApplications 
        SET applicationStatus = 'Rejected' 
        WHERE FK_UserID != NEW.FK_sitterID AND FK_BookingID = NEW.PK_bookingID;
    ELSEIF NEW.BookingStatus = 'Cancelled' THEN
        DELETE FROM SitterApplications 
        WHERE FK_BookingID = NEW.PK_bookingID;
    END IF;
END//
DELIMITER ;