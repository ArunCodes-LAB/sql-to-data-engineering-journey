# sql-to-data-engineering-journey
"Learning journey: SQL basics to full Data Engineering Pipeline"

# Student Records SQL Project

This project demonstrates how to create a database, insert student records, and update missing values using SQL.

---

## 1. Database Creation
```sql
CREATE DATABASE student_record_db;
USE student_record_db;
##2. TABLE CREATION
CREATE TABLE students_Records(
    student_ID INT PRIMARY KEY,
    FirstName VARCHAR(25),
    LastName VARCHAR(25),
    DateOfBirth VARCHAR(20),
    EnrollmentYear INT,
    Email VARCHAR(100),
    PhoneNumber VARCHAR(11),
    Grade VARCHAR(10)
);
## 3. INSERT DATA
INSERT INTO students_Records(student_ID, FirstName, LastName, DateOfBirth, EnrollmentYear, Email, PhoneNumber, Grade)
VALUES
(1, 'Arun', 'Kumar', '2002-05-14', 2020, 'arun@example.com', NULL, 'A'),
(2, 'Ravi', 'Singh', '2001-11-22', 2019, 'ravi@example.com', '9876543210', NULL),
(3, 'Priya', 'Mehta', '2003-03-09', 2021, 'priya@example.com', '9123456789', 'B'),
(4, 'Neha', 'Sharma', '2002-07-30', 2020, 'neha@example.com', NULL, 'C'),
(5, 'Aman', 'Verma', '2001-01-17', 2018, 'aman@example.com', '9988776655', NULL),
(6, 'Karan', 'Patel', '2003-09-25', 2021, 'karan@example.com', '9112233445', 'A'),
(7, 'Sneha', 'Reddy', '2002-12-05', 2020, 'sneha@example.com', NULL, 'B+'),
(8, 'Mohit', 'Gupta', '2001-04-11', 2019, 'mohit@example.com', '9001122334', NULL);

4. Before Update
Here is the table before updating (notice the NULL values):

[Looks like the result wasn't safe to show. Let's switch things up and try something else!]

## 5. Update PhoneNumber
SELECT * FROM students_Records WHERE PhoneNumber IS NULL;

UPDATE students_Records
SET PhoneNumber = CASE
    WHEN student_ID = 1 THEN '9992234543'
    WHEN student_ID = 4 THEN '3456789012'
    WHEN student_ID = 7 THEN '2453452353'
END
WHERE student_ID IN (1,4,7);

SELECT * FROM students_Records;


## 6. UPDATE GRADE
SELECT * FROM students_Records WHERE Grade IS NULL;

UPDATE students_Records
SET Grade = CASE
    WHEN student_ID = 2 THEN 'A'
    WHEN student_ID = 5 THEN 'C'
    WHEN student_ID = 8 THEN 'B'
END
WHERE student_ID IN (2,5,8);


##7. Before Update
Here is the table before updating (notice the GRADE values
<img width="817" height="231" alt="before update.png" src="https://github.com/user-attachments/assets/0eb46ef8-10b8-4040-bf7a-76fc63b3f722" />


SELECT * FROM students_Records;

## 8. After Update
Here is the table after updating values:
<img width="823" height="233" alt="after update.jpg" src="https://github.com/user-attachments/assets/633e126a-cc93-428b-86a8-5bbc716dc8a9" />









