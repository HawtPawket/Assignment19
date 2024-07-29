CREATE DATABASE FitnessCenterDB;
USE FitnessCenterDB;

CREATE TABLE Members (
    id INT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    age INT
);

CREATE TABLE WorkoutSessions (
    session_id INT PRIMARY KEY,
    member_id INT,
    session_date DATE,
    session_time VARCHAR(50),
    activity VARCHAR(255),
    FOREIGN KEY (member_id) REFERENCES Members(id)
);


INSERT INTO Members (id, name, age) VALUES
(1, 'Katie Coluccio', 28),
(2, 'Jon Patrick', 25),
(3, 'Andrew Patrick', 28),
(4, 'Hazel Patrick', 35);



INSERT INTO WorkoutSessions (session_id, member_id, session_date, session_time, activity) VALUES
(3423, 1, '2024-06-20', 'Evening', 'Running'),
(7865, 2, '2024-06-20', 'Morning', 'Swimming'),
(9484, 3, '2024-06-21', 'Morning', 'Weights'),
(8747, 4, '2024-06-21', 'Night', 'Swimming');


UPDATE WorkoutSessions
SET session_time = 'Evening'
WHERE member_id = 3;

DELETE FROM WorkoutSessions 
WHERE member_id = '4';

DELETE FROM Members
WHERE name = 'Hazel Patrick';

SELECT * FROM WorkoutSessions

SELECT * FROM Members


