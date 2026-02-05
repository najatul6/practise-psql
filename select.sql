CREATE TABLE students(
    student_id INT PRIMARY KEY,
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

INSERT INTO students (student_id,first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES
    (1, 'John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2003-04-15', 'O+', 'USA'),
    (2, 'Jane', 'Smith', 22, 'B', 'Mathematics', 'jane.smith@example.com', '2001-08-22', 'A-', 'Canada'),
    (3, 'Emily', 'Johnson', 19, 'A', 'Physics', 'emily.johnson@example.com', '2004-01-10', 'B+', 'UK'),
    (4, 'Michael', 'Brown', 21, 'C', 'Chemistry', 'michael.brown@example.com', '2002-11-05', 'AB-', 'Australia'),
    (5,'Sarah', 'Davis', 20, 'B', 'Biology', 'sarah.davis@example.com', '2003-07-19', 'O-', 'USA'),
    (6,'David', 'Wilson', 23, 'A', 'Engineering', 'david.wilson@example.com', '2000-05-30', 'A+', 'USA'),
    (7,'Laura', 'Garcia', 21, 'C', 'Literature', 'laura.garcia@example.com', '2002-09-12', 'B-', 'Canada'),
    (8,'James', 'Martinez', 22, 'B', 'History', 'james.martinez@example.com', '2001-03-25', 'O+', 'USA'),
    (9,'Olivia', 'Rodriguez', 19, 'A', 'Philosophy', 'olivia.rodriguez@example.com', '2004-06-18', 'A+', 'UK'),
    (10,'William', 'Lee', 20, 'C', 'Economics', 'william.lee@example.com', '2003-12-09', 'B+', 'USA'),
    (11,'Sophia', 'Walker', 21, 'B', 'Sociology', 'sophia.walker@example.com', '2002-10-14', 'O-', 'Canada'),
    (12,'Daniel', 'Hall', 22, 'A', 'Political Science', 'daniel.hall@example.com', '2001-07-21', 'A-', 'USA'),
    (13,'Mia', 'Allen', 19, 'C', 'Psychology', 'mia.allen@example.com', '2004-02-28', 'B+', 'UK'),
    (14,'Alexander', 'Young', 23, 'B', 'Anthropology', 'alexander.young@example.com', '2000-12-15', 'O+', 'Canada'),
    (15,'Isabella', 'Hernandez', 20, 'A', 'Art History', 'isabella.hernandez@example.com', '2003-05-22', 'A-', 'USA');
