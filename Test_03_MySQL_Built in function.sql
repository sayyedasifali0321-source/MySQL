DROP DATABASE IF EXISTS training_functions;
CREATE DATABASE training_functions;
USE training_functions;


CREATE TABLE CourseEnrollments (
	StudentID INT PRIMARY KEY,
	FirstName VARCHAR(40),
	LastName VARCHAR(40),
	CourseName VARCHAR(40),
	Fee DECIMAL(10,2),
	EnrollmentDate DATE,
	CompletionDate DATE
)

ENGINE = InnoDB
DEFAULT CHARSET = utf8mb4
COLLATE = utf8mb4_0900_ai_ci;


INSERT INTO CourseEnrollments
(StudentID, FirstName, LastName, CourseName, Fee, EnrollmentDate, CompletionDate)
VALUES
(101, 'aman', 'Sharma', 'Python', 12500.75, '2026-01-05', '2026-03-20'),
(102, 'priya', 'Verma', 'MySQL', 9800.40, '2026-01-12', '2026-02-28'),
(103, 'rahul', 'Singh', 'Python', 15750.90, '2026-02-01', '2026-04-15'),
(104, 'neha', 'Gupta', 'Power BI', 11200.25, '2026-02-10', '2026-05-05'),
(105, 'ishita', 'Kapoor', 'MySQL', 8900.60, '2026-03-03', '2026-04-22'),
(106, 'arjun', 'Mehta', 'Python', 13650.15, '2026-03-15', '2026-06-10'),
(107, 'simran', 'Joshi', 'Power BI', 10400.95, '2026-04-01', '2026-06-30'),
(108, 'vikas', 'Rao', 'MySQL', 7600.50, '2026-04-18', '2026-05-29'),
(109, 'kiran', 'Malik', 'Python', 14999.99, '2026-05-02', '2026-07-25'),
(110, 'rohan', 'Sethi', 'Power BI', 11950.35, '2026-05-20', '2026-08-14');

SELECT * FROM CourseEnrollments;


-- I am writing each question as a comment to make the SQL queries easier to understand.



-- Q1. Display each student’s full name in uppercase with a single space between the first and last names using CONCAT() and UPPER().
SELECT UPPER(CONCAT(FirstName, ' ', LastName)) AS FullName From CourseEnrollments;


-- Q2. Display each student’s full name with the first letter of FirstName in uppercase and the remaining letters unchanged, using CONCAT(), UPPER() and SUBSTRING().
SELECT
    CONCAT(
        UPPER(SUBSTRING(FirstName, 1, 1)),
        SUBSTRING(FirstName, 2),
        ' ',
        UPPER(SUBSTRING(LastName, 1, 1)),
        SUBSTRING(LastName, 2)
    ) AS FullName
FROM CourseEnrollments;


-- Q3. Create a student code consisting of the first three letters of CourseName in uppercase, a hyphen, and StudentID using LEFT(), UPPER() and CONCAT().
SELECT
    CourseName,
    StudentID,
    CONCAT(
        UPPER(LEFT(CourseName, 3)),
        '-',
        StudentID
    ) AS Student_Code
FROM CourseEnrollments;


-- Q4. Display FirstName reversed and also display its original character count using REVERSE() and CHAR_LENGTH().
SELECT
    FirstName,
    REVERSE(FirstName) AS Reverse_FirstName,
    CHAR_LENGTH(FirstName) AS FirstName_Length,
    LastName,
    REVERSE(LastName) AS Reverse_LastName,
    CHAR_LENGTH(LastName) AS LastName_Length
FROM CourseEnrollments;


-- Q5. Display the position of the letter a in FirstName using LOCATE(), along with FirstName. 
SELECT FirstName, Locate('a', FirstName)
FROM CourseEnrollments;


-- Q6. Replace every letter a in FirstName with o, then convert the result to uppercase using REPLACE() and UPPER(). 
SELECT UPPER(REPLACE(FirstName, 'a', 'o')) AS ModifiedName
FROM CourseEnrollments;


-- Q7. Display FirstName padded on the left with zeroes to a total length of 12 characters using LPAD().
SELECT LPAD(FirstName, 12, '0') AS PaddedName
FROM CourseEnrollments;


-- Q8. Display a course label made of the last two letters of CourseName, a hyphen, and the first two letters of FirstName using RIGHT(), LEFT() and CONCAT(). 
SELECT CONCAT(RIGHT(CourseName, 2), '-', LEFT(FirstName, 2)) AS CourseLabel
FROM CourseEnrollments;


-- Q9. Display the first three letters of FirstName in uppercase followed by the last two letters of LastName in lowercase using SUBSTRING(), RIGHT(), UPPER(), LOWER() and CONCAT(). 
SELECT CONCAT(
	UPPER(SUBSTRING(FirstName, 1, 3)),
    LOWER(RIGHT(LastName, 2))
) AS FullLabel
FROM CourseEnrollments;
 


-- Numeric functions
-- Q10. Display Fee rounded to one decimal place and also Fee rounded to the nearest whole number using ROUND(). 
SELECT
    ROUND(Fee, 1) AS Fee_One_Decimal,
    ROUND(Fee, 0) AS Fee_Whole_Number
FROM CourseEnrollments;


-- Q11. Display Fee rounded upward and downward to whole numbers in separate columns using CEIL() and FLOOR().
SELECT
    CEIL(Fee) AS Fee_Upward,
    FLOOR(Fee) AS Fee_Downward
FROM CourseEnrollments;


-- Q12. Display the remainder when Fee is divided by 500 using MOD(), alongside the original Fee.
SELECT
    Fee,
    MOD(Fee, 500) AS Fee_Remainder
FROM CourseEnrollments;


-- Q13. Display the absolute difference between Fee and 10000 using ABS(). 
SELECT
    Fee,
    ABS(Fee - 10000) AS Absolute_Difference
FROM CourseEnrollments;


-- Q14. Display Fee multiplied by 1.18 and rounded to two decimal places using ROUND(). 
SELECT
    Fee,
    ROUND(Fee * 1.18, 2) AS Updated_Fee
FROM CourseEnrollments;


-- Q15. Display Fee formatted with a thousands separator and exactly two decimal places using FORMAT(). 
SELECT
    Fee,
    FORMAT(Fee, 2) AS Formatted_Fee
FROM CourseEnrollments;



-- Date functions 
-- Q16. Display the enrollment year, enrollment month name and enrollment day name in separate columns using YEAR(), MONTHNAME() and DAYNAME(). 
SELECT
    YEAR(EnrollmentDate) AS Enrollment_Year,
    MONTHNAME(EnrollmentDate) AS Enrollment_Month,
    DAYNAME(EnrollmentDate) AS Enrollment_Day
FROM CourseEnrollments;


-- Q17. Display EnrollmentDate in DD/MM/YYYY format and CompletionDate in Month DD, YYYY format using DATE_FORMAT(). 
SELECT
    DATE_FORMAT(EnrollmentDate, '%d/%m/%Y') AS Formatted_EnrollmentDate,
    DATE_FORMAT(CompletionDate, '%M %d, %Y') AS Formatted_CompletionDate
FROM CourseEnrollments;


-- Q18. Calculate the number of days between EnrollmentDate and CompletionDate using TIMESTAMPDIFF(). 
SELECT
    EnrollmentDate,
    CompletionDate,
    TIMESTAMPDIFF(DAY, EnrollmentDate, CompletionDate) AS Total_Days
FROM CourseEnrollments;


-- Q19. Display the date 1 month and 10 days after EnrollmentDate using nested DATE_ADD() calls.
SELECT
    EnrollmentDate,
    DATE_ADD(
        DATE_ADD(EnrollmentDate, INTERVAL 1 MONTH),
        INTERVAL 10 DAY
    ) AS New_EnrollmentDate
FROM CourseEnrollments;


-- Q20. Display the date exactly 7 days before CompletionDate using DATE_ADD() with a negative interval. 
SELECT
    CompletionDate,
    DATE_ADD(CompletionDate, INTERVAL -7 DAY) AS Previous_Date
FROM CourseEnrollments;


-- Q21. Display the number of complete months between EnrollmentDate and CompletionDate using TIMESTAMPDIFF(). 
SELECT
    EnrollmentDate,
    CompletionDate,
    TIMESTAMPDIFF(MONTH, EnrollmentDate, CompletionDate) AS Total_Months
FROM CourseEnrollments;


-- Q22. Display the enrollment date shifted forward by 1 year, 2 months and 5 days using nested DATE_ADD() calls. 
SELECT
    EnrollmentDate,
    DATE_ADD(
        DATE_ADD(
            DATE_ADD(EnrollmentDate, INTERVAL 1 YEAR),
            INTERVAL 2 MONTH
        ),
        INTERVAL 5 DAY
    ) AS New_EnrollmentDate
FROM CourseEnrollments;


-- Q23. Display EnrollmentDate and CompletionDate with their weekday names using DAYNAME().
SELECT
    EnrollmentDate,
    DAYNAME(EnrollmentDate) AS Enrollment_Weekday,
    CompletionDate,
    DAYNAME(CompletionDate) AS Completion_Weekday
FROM CourseEnrollments;


-- Q24. Display the number of days from EnrollmentDate until the current date using TIMESTAMPDIFF() and CURDATE(). 
SELECT
    EnrollmentDate,
    TIMESTAMPDIFF(DAY, EnrollmentDate, CURDATE()) AS Days_Until_Today
FROM CourseEnrollments;


-- Q25. Display the original CompletionDate and its date after adding 15 days, formatted as DD/MM/YYYY using DATE_ADD() and DATE_FORMAT(). 
SELECT
    CompletionDate,
    DATE_FORMAT(
        DATE_ADD(CompletionDate, INTERVAL 15 DAY),
        '%d/%m/%Y'
    ) AS New_CompletionDate
FROM CourseEnrollments;


