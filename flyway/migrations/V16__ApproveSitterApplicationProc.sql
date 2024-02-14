CREATE PROCEDURE ApproveSitterApplication
    @applicationID uniqueidentifier

AS
BEGIN  
    UPDATE SitterApplications
    SET applicationStatus = 'Approved'
    WHERE PK_ApplicationID = @applicationID
        AND applicationStatus = 'Pending';
    
    IF @@ROWCOUNT > 0
    BEGIN  
        PRINT 'Sitter Application approved';
    END
    ELSE
    BEGIN  
        PRINT 'Sitter application ID not found, already approved, or no changes made';
    END
END
