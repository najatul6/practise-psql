CREATE TABLE students(
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    age INT,
    grade CHAR(2),
    course VARCHAR(50),
    email VARCHAR(100),
    dob DATE,
    blood_group VARCHAR(5),
    country VARCHAR(50)
)

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES
    ( 'John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2003-04-15', 'O+', 'USA'),
    ( 'Jane', 'Smith', 22, 'B', 'Mathematics', 'jane.smith@example.com', '2001-08-22', 'A-', 'Canada'),
    ( 'Emily', 'Johnson', 19, 'A', 'Physics', 'emily.johnson@example.com', '2004-01-10', 'B+', 'UK'),
    ( 'Michael', 'Brown', 21, 'C', 'Chemistry', 'michael.brown@example.com', '2002-11-05', 'AB-', 'Australia'),
    ('Sarah', 'Davis', 20, 'B', 'Biology', 'sarah.davis@example.com', '2003-07-19', 'O-', 'USA'),
    ('David', 'Wilson', 23, 'A', 'Engineering', 'david.wilson@example.com', '2000-05-30', 'A+', 'USA'),
    ('Laura', 'Garcia', 21, 'C', 'Literature', 'laura.garcia@example.com', '2002-09-12', 'B-', 'Canada'),
    ('James', 'Martinez', 22, 'B', 'History', 'james.martinez@example.com', '2001-03-25', 'O+', 'USA'),
    ('Olivia', 'Rodriguez', 19, 'A', 'Philosophy', 'olivia.rodriguez@example.com', '2004-06-18', 'A+', 'UK'),
    ('William', 'Lee', 20, 'C', 'Economics', 'william.lee@example.com', '2003-12-09', 'B+', 'USA'),
    ('Sophia', 'Walker', 21, 'B', 'Sociology', 'sophia.walker@example.com', '2002-10-14', 'O-', 'Canada'),
    ('Daniel', 'Hall', 22, 'A', 'Political Science', 'daniel.hall@example.com', '2001-07-21', 'A-', 'USA'),
    ('Mia', 'Allen', 19, 'C', 'Psychology', 'mia.allen@example.com', '2004-02-28', 'B+', 'UK'),
    ('Alexander', 'Young', 23, 'B', 'Anthropology', 'alexander.young@example.com', '2000-12-15', 'O+', 'Canada'),
    ('Isabella', 'Hernandez', 20, 'A', 'Art History', 'isabella.hernandez@example.com', '2003-05-22', 'A-', 'USA');

SELECT * FROM students; --Selects all columns and rows from the students table

SELECT first_name, last_name FROM students; --Selects only the first_name and last_name columns from the students table

SELECT email as "Student Email" FROM students; --Selects the email column from the students table and renames it as "Student Email" in the result set

SELECT * FROM students WHERE age > 21; --Selects all columns and rows from the students table where the age is greater than 21

SELECT * FROM students WHERE course = 'Computer Science'; --Selects all columns and rows from the students table where the course is 'Computer Science'

SELECT * FROM students WHERE grade = 'A'; --Selects all columns and rows from the students table where the grade is 'A'

SELECT * FROM students ORDER BY first_name ASC; --Selects all columns and rows from the students table and orders the results by the first_name column in ascending order

SELECT * FROM students ORDER BY age DESC; --Selects all columns and rows from the students table and orders the results by the age column in descending order

SELECT * FROM students WHERE country = 'USA' ORDER BY last_name ASC; --Selects all columns and rows from the students table where the country is 'USA' and orders the results by the last_name column in ascending order

SELECT DISTINCT country FROM students; --Selects unique values from the country column in the students table

SELECT * FROM students WHERE country='Canada' AND grade='B'; --Selects all columns and rows from the students table where the country is 'Canada' and the grade is 'B'

SELECT * FROM students WHERE country='USA' OR age<20; --Selects all columns and rows from the students table where the country is 'USA' or the age is less than 20

SELECT * FROM students WHERE email LIKE '%@example.com'; --Selects all columns and rows from the students table where the email ends with '@example.com'

SELECT * FROM students WHERE first_name LIKE 'J%'; --Selects all columns and rows from the students table where the first_name starts with 'J'

SELECT concat(first_name, ' ', last_name) FROM students --Selects the first_name and last_name columns from the students table and concatenates them with a space in between to create a full name in the result set

SELECT COUNT(*) FROM students; --Counts the total number of rows in the students table

SELECT  upper(first_name) FROM students; --Selects the first_name column from the students table and converts it to uppercase in the result set

SELECT lower(last_name) FROM students; --Selects the last_name column from the students table and converts it to lowercase in the result set

SELECT length (first_name) FROM students; --Selects the first_name column from the students table and returns the length of each value in the result set

SELECT avg (age) FROM students; --Selects the age column from the students table and returns the average value in the result set

SELECT max(age) FROM students; --Selects the age column from the students table and returns the maximum value in the result set

SELECT * FROM students WHERE age = (SELECT max(age) FROM students); --Selects all columns and rows from the students table where the age is equal to the maximum age in the table

SELECT min(age) FROM students; --Selects the age column from the students table and returns the minimum value in the result set

SELECT COUNT(*) FROM information_schema.columns WHERE table_schema = 'public' AND table_name = 'students'; -- Returns the total number of columns in the 'students' table

SELECT COUNT(*) AS total_column, string_agg(column_name,',') AS column_names FROM information_schema.columns WHERE table_schema='public' AND table_name='students'; -- Returns the total number of columns and their names in the 'students' table

SELECT * FROM students WHERE first_name ILIKE 'j%'; --Selects all columns and rows from the students table where the first_name starts with 'j' (case-insensitive)

SELECT * FROM students WHERE first_name LIKE '___e'; --Selects all columns and rows from the students table where the first_name has exactly three characters before 'e'

SELECT * FROM students LIMIT 5; --Selects all columns and rows from the students table and limits the results to 5 rows

SELECT * FROM students LIMIT 6 OFFSET 5; --Selects all columns and rows from the students table, skips the first 5 rows, and returns the next 6 rows

DELETE FROM students; -- Deletes all rows from the students table

DELETE FROM students WHERE grade = 'C'; -- Deletes rows from the students table where the grade is 'C'

ALTER TABLE students -- Modifies the students table
ALTER COLUMN student_id -- Modifies the student_id column
ADD GENERATED ALWAYS AS IDENTITY; -- Adds an auto-incrementing identity column to the student_id column
