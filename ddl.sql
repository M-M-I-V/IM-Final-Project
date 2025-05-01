-- 1. Programs Table
CREATE TABLE Programs (
    program_id INT PRIMARY KEY AUTO_INCREMENT,
    program_name VARCHAR(100) NOT NULL
);

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