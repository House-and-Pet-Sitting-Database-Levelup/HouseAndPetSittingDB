/*flyway info to view migrations
flyway migrate to apply migrations
flyway clean to clean the databse completely*/

/*create table*/
CREATE TABLE users (
    user_id INT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    password_hash VARCHAR(100) NOT NULL,
    registration_date DATE,
    last_login_date DATE
);

/*create procedure*/
DELIMITER //
CREATE PROCEDURE GetUserById(IN userId INT)
BEGIN
    SELECT * FROM users WHERE user_id = userId;
END //
DELIMITER ;

/*create trigger*/
CREATE TRIGGER update_timestamp_trigger
BEFORE UPDATE ON users
FOR EACH ROW
SET NEW.last_login_date = NOW();

/*create view*/
CREATE VIEW active_users_view AS
SELECT user_id, username, email
FROM users