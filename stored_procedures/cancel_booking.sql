CREATE PROCEDURE CancelBooking
    @BookingID uniqueidentifier
AS
BEGIN
   
    BEGIN TRANSACTION;
    
    TRY
        -- Update booking status
        UPDATE Bookings
        SET Status = 'Cancelled'
        WHERE BookingID = @BookingID;

       

    
        COMMIT TRANSACTION;
    CATCH
      
        ROLLBACK TRANSACTION;
        -- Re-throw the caught exception
        THROW;
END
GO
