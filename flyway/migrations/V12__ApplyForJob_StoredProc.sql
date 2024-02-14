DELIMITER //

CREATE PROCEDURE ApplyForJob(IN SitterID uniqueidentifier, IN BookingID uniqueidentifier)
BEGIN
   	BEGIN TRANSACTION;
    INSERT INTO SitterApplications (PK_ApplicationID, FK_BookingID, FK_SitterID, ApplicationStatus)
    VALUES (DEFAULT, BookingID, SitterID,'Pending');
	COMMIT;
       
	SELECT PK_ApplicationID AS 'NewApplicationID';
END;
//

DELIMITER ;
