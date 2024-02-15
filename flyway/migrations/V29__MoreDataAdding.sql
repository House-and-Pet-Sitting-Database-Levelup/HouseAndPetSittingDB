-- Adding some sitters
INSERT INTO Users (userName, surname, email, cellNumber, FK_userTypeID)
VALUES 
('Mikey', 'Owlo', 'heyyMikeey@yahoo.co.za', '+278761263082', 1),
('Sally', 'Quincey', 'sallyq@gmail.com', '+271827321928',1),
('Polly', 'Smith', 'coolbeans99@gmail.com', '+272341982319',1),
('Samwise', 'Dude', 'samsam2222@outlook.com', '+270889120919',1);
 
-- Add some clients
INSERT INTO Users (userName, surname, email, cellNumber, FK_userTypeID)
VALUES 
('Pikey', 'Owlo', 'heyyPikeey@yahoo.co.za', '+278731263082', 2),
('Waldo', 'wEE', 'weeeee@gmail.com', '+271827301928',2),
('Ange', 'Doe', 'coolbea@gmail.com', '+274341982319',2),
('Gandalf', 'Wizzo', 'samsam@outlook.com', '+278819120919',2);

-- Add some bookings
INSERT INTO Bookings (FK_clientID, FK_serviceTypeID, startDateTime, endDateTime, additionalNotes) VALUES
(3, 2, '2024-09-01 09:00:00', '2024-09-03 19:00:00', 'Ensure the door is locked at night.'),
(7, 1, '2024-08-20 12:00:00', '2024-08-25 15:00:00', 'Water the plants every morning.'),
(10, 3, '2024-10-10 08:00:00', '2024-10-15 18:00:00', 'Feed the pets twice a day.'),
(13, 2, '2024-11-05 10:00:00', '2024-11-10 16:00:00', 'Check the mailbox daily and forward important mail.'),
(58, 1, '2024-12-03 11:00:00', '2024-12-05 17:00:00', 'Take out the trash every Monday and Thursday.'),
(55, 3, '2024-09-20 14:00:00', '2024-09-22 12:00:00', 'Water the garden every evening.'),
(34, 2, '2024-10-15 08:00:00', '2024-10-20 18:00:00', 'Keep an eye out for any plumbing leaks.'),
(28, 1, '2024-11-10 10:00:00', '2024-11-12 14:00:00', 'Mow the lawn before the weekend.'),
(31, 3, '2024-12-01 09:00:00', '2024-12-05 16:00:00', 'Clean the fish tank every two days.'),
(29, 2, '2024-09-10 08:00:00', '2024-09-15 17:00:00', 'Check the security cameras regularly.');

-- Add some applications

CALL ApplyForJob(24,1);
CALL ApplyForJob(24,2);
CALL ApplyForJob(24,6);
CALL ApplyForJob(24,7);

CALL ApplyForJob(59,1);
CALL ApplyForJob(59,2);
CALL ApplyForJob(59,6);
CALL ApplyForJob(59,7);

CALL ApplyForJob(30,1);
CALL ApplyForJob(30,2);
CALL ApplyForJob(30,6);
CALL ApplyForJob(30,7);

CALL ApplyForJob(42,1);
CALL ApplyForJob(42,2);
CALL ApplyForJob(42,6);
CALL ApplyForJob(42,7);


-- Approve some applications

CALL ApproveSitterApplication(9);
CALL ApproveSitterApplication(6);
CALL ApproveSitterApplication(22);

-- Cancel some applications

CALL CancelBooking(9);
CALL CancelBooking(12);
CALL CancelBooking(13);

-- Complete some applications

CALL CompleteBooking(2);
CALL CompleteBooking(7);
CALL CompleteBooking(6);


-- Output the age of some pets

SELECT CalculatePetAge(1) AS 'The age of Pet ID 1';
SELECT CalculatePetAge(10) AS 'The age of Pet ID 10';

-- Output the number of pets of some clients

SELECT GetNumberOfPets(40) AS 'Number of pets for client ID 40:';
SELECT GetNumberOfPets(7) AS 'Number of pets for client ID 7:';

-- Output all of the applications with an accepted status

CALL GetSitterApplicationByStatus('Accepted');

-- Output all of the applications with a pending status
CALL GetSitterApplicationByStatus('Pending');

-- Output all of the applications with a rejected status
CALL GetSitterApplicationByStatus('Rejected');


