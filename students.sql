CREATE DATABASE student_record_db;
USE student_record_db;

CREATE TABLE students_Records (
    student_ID INT PRIMARY KEY,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    DateOfBirth DATE,
    EnrollmentYear INT,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(11),
    Grade VARCHAR(10)
);

INSERT INTO students_Records (
    student_ID, FirstName, LastName, DateOfBirth, EnrollmentYear,
    Email, PhoneNumber, Grade
)
VALUES
    (1, 'Arun', 'Kumar', '2002-05-14', 2020, 'arun@example.com', NULL, 'A'),
    (2, 'Ravi', 'Singh', '2001-11-22', 2019, 'ravi@example.com', '9876543210', NULL),
    (3, 'Priya', 'Mehta', '2003-03-09', 2021, 'priya@example.com', '9123456789', 'B'),
    (4, 'Neha', 'Sharma', '2002-07-30', 2020, 'neha@example.com', NULL, 'C'),
    (5, 'Aman', 'Verma', '2001-01-17', 2018, 'aman@example.com', '9988776655', NULL),
    (6, 'Karan', 'Patel', '2003-09-25', 2021, 'karan@example.com', '9112233445', 'A'),
    (7, 'Sneha', 'Reddy', '2002-12-05', 2020, 'sneha@example.com', NULL, 'B+'),
    (8, 'Mohit', 'Gupta', '2001-04-11', 2019, 'mohit@example.com', '9001122334', NULL);

-- Check records before filling missing values
SELECT *
FROM students_Records;

-- Fill missing phone numbers
UPDATE students_Records
SET PhoneNumber = CASE
    WHEN student_ID = 1 THEN '9992234543'
    WHEN student_ID = 4 THEN '3456789012'
    WHEN student_ID = 7 THEN '2453452353'
END
WHERE student_ID IN (1, 4, 7);

SELECT *
FROM students_Records;

-- Fill missing grades
UPDATE students_Records
SET Grade = CASE
    WHEN student_ID = 2 THEN 'A'
    WHEN student_ID = 5 THEN 'C'
    WHEN student_ID = 8 THEN 'B'
END
WHERE student_ID IN (2, 5, 8);

-- Final result after updates
SELECT *
FROM students_Records;
