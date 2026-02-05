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

INSERT INTO students (first_name, last_name, age, grade, course, email, dob, blood_group, country) 
VALUES
    ('John', 'Doe', 20, 'A', 'Computer Science', 'john.doe@example.com', '2003-04-15', 'O+', 'USA'),
    ('Jane', 'Smith', 22, 'B', 'Mathematics', 'jane.smith@example.com', '2001-08-22', 'A-', 'Canada'),
    ('Emily', 'Johnson', 19, 'A', 'Physics', 'emily.johnson@example.com', '2004-01-10', 'B+', 'UK'),
    ('Michael', 'Brown', 21, 'C', 'Chemistry', 'michael.brown@example.com', '2002-11-05', 'AB-', 'Australia'),
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
