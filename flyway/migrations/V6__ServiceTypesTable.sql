CREATE TABLE ServiceTypes (
    PK_serviceTypeID uniqueidentifier DEFAULT NEWSEQUENTIALID() PRIMARY KEY,
    description VARCHAR(MAX),
    hourlyRate DECIMAL(10, 2)
)