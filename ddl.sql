-- 1. Programs Table
CREATE TABLE Programs (
    program_id INT PRIMARY KEY AUTO_INCREMENT,
    program_name VARCHAR(100) NOT NULL
);

-- Sample Data for Programs
INSERT INTO Programs (program_name) VALUES
('Bachelor of Science in Information Systems'),
('Bachelor of Science in Mathematics'),
('Bachelor of Arts in Communication'),
('Bachelor of Science in Nursing'),
('Bachelor of Physical Education');

-- 2. Students Table
CREATE TABLE Students (
    student_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    birth_date DATE NOT NULL,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    program_id INT NOT NULL,
    FOREIGN KEY (program_id) REFERENCES Programs(program_id)
);

-- Sample Data for Students
INSERT INTO Students (first_name, last_name, birth_date, gender, email, program_id) VALUES
('Neil Jay', 'Lacandazo', '2004-10-20', 'Male', 'neiljay.lacandazo@mcst.edu.ph', 1),
('Jane', 'Smith', '1999-05-20', 'Female', 'jane.smith@mcst.edu.ph', 2),
('Alice', 'Johnson', '2001-03-10', 'Female', 'alice.johnson@mcst.edu.ph', 3),
('Bob', 'Brown', '2000-07-25', 'Male', 'bob.brown@mcst.edu.ph', 4),
('Charlie', 'Davis', '1998-11-30', 'Other', 'charlie.davis@mcst.edu.ph', 5),
('Emily', 'Wilson', '2002-02-14', 'Female', 'emily.wilson@mcst.edu.ph', 1),
('Michael', 'Taylor', '1999-09-05', 'Male', 'michael.taylor@mcst.edu.ph', 2),
('Sarah', 'Anderson', '2000-12-12', 'Female', 'sarah.anderson@mcst.edu.ph', 3),
('David', 'Thomas', '2001-06-18', 'Male', 'david.thomas@mcst.edu.ph', 4),
('Sophia', 'Moore', '1998-08-22', 'Female', 'sophia.moore@mcst.edu.ph', 5),
('James', 'Martin', '2000-04-01', 'Male', 'james.martin@mcst.edu.ph', 1),
('Olivia', 'Lee', '1999-10-10', 'Female', 'olivia.lee@mcst.edu.ph', 2),
('Ethan', 'Harris', '2001-01-30', 'Male', 'ethan.harris@mcst.edu.ph', 3),
('Isabella', 'Clark', '2002-03-25', 'Female', 'isabella.clark@mcst.edu.ph', 4),
('Liam', 'Lewis', '1998-07-15', 'Male', 'liam.lewis@mcst.edu.ph', 5),
('Mia', 'Walker', '2000-11-20', 'Female', 'mia.walker@mcst.edu.ph', 1),
('Noah', 'Hall', '1999-06-05', 'Male', 'noah.hall@mcst.edu.ph', 2),
('Ava', 'Allen', '2001-09-12', 'Female', 'ava.allen@mcst.edu.ph', 3),
('William', 'Young', '2002-05-18', 'Male', 'william.young@mcst.edu.ph', 4),
('Emma', 'King', '1998-12-25', 'Female', 'emma.king@mcst.edu.ph', 5);

-- 3. Courses Table
CREATE TABLE Courses (
    course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_code VARCHAR(10) UNIQUE NOT NULL,
    course_name VARCHAR(100) NOT NULL,
    units INT NOT NULL
);

-- 4. Instructors Table
CREATE TABLE Instructors (
    instructor_id INT PRIMARY KEY AUTO_INCREMENT,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

-- 5. Sections Table
CREATE TABLE Sections (
    section_id INT PRIMARY KEY AUTO_INCREMENT,
    section_code VARCHAR(10) UNIQUE NOT NULL,
    semester VARCHAR(10) NOT NULL,
    academic_year VARCHAR(9) NOT NULL, -- e.g., "2024-2025"
);

-- 6. Enrollments Table
CREATE TABLE Enrollments (
    enrollment_id INT PRIMARY KEY AUTO_INCREMENT,
    student_id INT NOT NULL,
    section_id INT NOT NULL,
    final_grade DECIMAL(1, 2) NOT NULL, -- e.g., 1.00 or 1.25
    FOREIGN KEY (student_id) REFERENCES Students(student_id),
    FOREIGN KEY (section_id) REFERENCES Sections(section_id),
    UNIQUE (student_id, section_id) -- prevent duplicate enrollments
);