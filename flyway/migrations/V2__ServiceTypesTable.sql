CREATE TABLE ServiceTypes (
    PK_serviceTypeID int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    description VARCHAR(255),
    hourlyRate DECIMAL(10, 2) NOT NULL
);

CREATE TABLE StatusTypes (
   PK_statusType int NOT NULL AUTO_INCREMENT PRIMARY KEY,
   description VARCHAR(255) NOT NULL
);

INSERT INTO StatusTypes (description) 
VALUES
('Approved'),
('Rejected'),
('Pending'),
('Completed'),
('Canceled');
