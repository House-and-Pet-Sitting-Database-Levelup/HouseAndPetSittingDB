DELIMITER //

CREATE PROCEDURE ApproveSitterApplication (IN applicationID INT)
BEGIN  
    DECLARE exit handler for sqlexception
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    DECLARE exit handler for sqlwarning
    BEGIN
        ROLLBACK;
        RESIGNAL;
    END;

    START TRANSACTION;
    
    UPDATE SitterApplications
    SET applicationStatus = 'Approved'
    WHERE PK_ApplicationID = applicationID
        AND applicationStatus = 'Pending';
    
    IF ROW_COUNT() > 0 THEN
        SELECT 'Sitter Application approved';
    ELSE
        SELECT 'Sitter application ID not found, already approved, or no changes made';
    END IF;

    COMMIT;
END //

DELIMITER ;
