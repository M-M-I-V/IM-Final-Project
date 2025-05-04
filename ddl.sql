-- student status table
CREATE TABLE student_status (
    student_status_id INT AUTO_INCREMENT PRIMARY KEY,
    status_description VARCHAR(20) NOT NULL -- active, inactive, graduated, etc.
);

-- students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    last_name VARCHAR(50) NOT NULL,
    first_name VARCHAR(50) NOT NULL,
    middle_name VARCHAR(50),
    birthdate DATE,
    gender ENUM('Male', 'Female', 'Other') NOT NULL,
    email VARCHAR(100) UNIQUE,
    student_status_id INT,
    FOREIGN KEY (student_status_id) REFERENCES student_status(student_status_id) ON DELETE SET NULL
);

-- programs table
CREATE TABLE programs (
    program_id INT AUTO_INCREMENT PRIMARY KEY,
    program_name VARCHAR(100) NOT NULL
);

-- enrollment status table
CREATE TABLE enrollment_status (
    enrollment_status_id INT AUTO_INCREMENT PRIMARY KEY,
    status_description VARCHAR(20) NOT NULL -- enrolled, graduated, dropped, etc.
);

-- enrollments table
CREATE TABLE enrollments (
    enrollment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT NOT NULL,
    program_id INT NOT NULL,
    academic_year VARCHAR(20) NOT NULL,
    semester ENUM('1st', '2nd', 'Summer') NOT NULL,
    enrollment_date DATE NOT NULL,
    enrollment_status_id INT NOT NULL,
    FOREIGN KEY (student_id) REFERENCES students(student_id),
    FOREIGN KEY (program_id) REFERENCES programs(program_id),
    FOREIGN KEY (enrollment_status_id) REFERENCES enrollment_status(enrollment_status_id)
);

-- courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL
);

-- remarks table
CREATE TABLE remarks (
    remarks_id INT AUTO_INCREMENT PRIMARY KEY,
    description ENUM('Passed', 'Failed', 'Inc') NOT NULL
);

-- academic record table
CREATE TABLE academic_records (
    record_id INT AUTO_INCREMENT PRIMARY KEY,
    enrollment_id INT NOT NULL,
    course_id INT NOT NULL,
    grade DECIMAL(3,2),
    remarks_id INT,
    FOREIGN KEY (enrollment_id) REFERENCES enrollments(enrollment_id) ON DELETE CASCADE,
    FOREIGN KEY (course_id) REFERENCES courses(course_id) ON DELETE CASCADE,
    FOREIGN KEY (remarks_id) REFERENCES remarks(remarks_id) ON DELETE SET NULL
);