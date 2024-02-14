CREATE TABLE ServiceTypes (
    PK_serviceTypeID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255),
    hourlyRate DECIMAL(10, 2)
)