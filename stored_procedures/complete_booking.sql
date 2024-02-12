CREATE PROCEDURE CompleteBooking
    @BookingID uniqueidentifier
AS
BEGIN
  
    BEGIN TRANSACTION;
    
    TRY
       
        UPDATE Bookings
        SET Status = 'Completed'
        WHERE BookingID = @BookingID;

        
        
        COMMIT TRANSACTION;
    CATCH
       
        ROLLBACK TRANSACTION;
        
        THROW;
END
GO
