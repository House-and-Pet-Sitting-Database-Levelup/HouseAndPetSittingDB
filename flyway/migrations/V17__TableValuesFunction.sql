DELIMITER //

CREATE PROCEDURE GetSitterApplicationByStatus(
    IN applicantStatus VARCHAR(225)
)
BEGIN
    SELECT * FROM SitterApplications WHERE applicationStatus = applicantStatus;
END//

DELIMITER ;
