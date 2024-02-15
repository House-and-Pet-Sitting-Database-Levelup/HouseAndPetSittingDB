DELIMITER //
CREATE TRIGGER update_sitter_application_status 
AFTER UPDATE ON Bookings 
FOR EACH ROW
BEGIN
    IF NEW.bookingStatus = 'Approved' THEN
        UPDATE SitterApplications 
        SET applicationStatus = 'Rejected' 
        WHERE FK_bookingID = NEW.PK_bookingID AND applicationStatus != 'Approved';
    ELSEIF NEW.bookingStatus = 'Cancelled' THEN
        DELETE FROM SitterApplications 
        WHERE FK_bookingID = NEW.PK_bookingID;
    END IF;
END//
DELIMITER ;