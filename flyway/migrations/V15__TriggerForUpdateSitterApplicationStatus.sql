DELIMITER //
CREATE TRIGGER update_sitter_application_status 
AFTER UPDATE ON Bookings 
FOR EACH ROW
BEGIN
    IF NEW.FK_bookingStatus = 1 THEN
        UPDATE SitterApplications 
        SET FK_applicationStatus = 2 
        WHERE FK_bookingID = NEW.PK_bookingID AND FK_applicationStatus != 1;
    ELSEIF NEW.FK_bookingStatus = 5 THEN
        DELETE FROM SitterApplications 
        WHERE FK_bookingID = NEW.PK_bookingID;
    END IF;
END//
DELIMITER ;