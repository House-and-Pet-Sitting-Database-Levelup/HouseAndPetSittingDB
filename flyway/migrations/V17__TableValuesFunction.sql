DELIMITER //

CREATE PROCEDURE GetSitterApplicationByStatus(
    IN applicantStatus int
)
BEGIN
    SELECT * FROM SitterApplications WHERE FK_applicationStatus = applicantStatus;
END//

DELIMITER ;
