-- sample data for student status
INSERT INTO student_status (status_description) VALUES
('Active'),
('Inactive'),
('Graduated'),
('Dropped');

-- Insert sample data for students
INSERT INTO students (last_name, first_name, middle_name, birthdate, gender, email, student_status_id) VALUES
('Smith', 'John', 'A', '2000-01-15', 'Male', 'john.smith@mcst.edu.ph', 1),
('Doe', 'Jane', 'B', '1999-05-20', 'Female', 'jane.doe@mcst.edu.ph', 1),
('Brown', 'Charlie', NULL, '2001-03-10', 'Other', 'charlie.brown@mcst.edu.ph', 2),
('Johnson', 'Emily', 'C', '1998-07-25', 'Female', 'emily.johnson@mcst.edu.ph', 3),
('Williams', 'Michael', 'D', '2002-11-30', 'Male', 'michael.williams@mcst.edu.ph', 1),
('Jones', 'Sarah', NULL, '2000-02-14', 'Female', 'sarah.jones@mcst.edu.ph', 1),
('Garcia', 'David', 'E', '1997-09-05', 'Male', 'david.garcia@mcst.edu.ph', 4),
('Martinez', 'Sophia', 'F', '2003-06-18', 'Female', 'sophia.martinez@mcst.edu.ph', 1),
('Rodriguez', 'James', NULL, '1999-12-22', 'Male', 'james.rodriguez@mcst.edu.ph', 2),
('Hernandez', 'Olivia', 'G', '2001-08-09', 'Female', 'olivia.hernandez@mcst.edu.ph', 1),
('Lopez', 'Daniel', NULL, '2000-04-03', 'Male', 'daniel.lopez@mcst.edu.ph', 3),
('Gonzalez', 'Isabella', 'H', '1998-10-15', 'Female', 'isabella.gonzalez@mcst.edu.ph', 4),
('Wilson', 'Ethan', NULL, '2002-01-27', 'Male', 'ethan.wilson@mcst.edu.ph', 1),
('Anderson', 'Mia', 'I', '1997-03-12', 'Female', 'mia.anderson@mcst.edu.ph', 2),
('Thomas', 'Alexander', NULL, '2003-05-08', 'Male', 'alexander.thomas@mcst.edu.ph', 1),
('Taylor', 'Ava', 'J', '1999-07-19', 'Female', 'ava.taylor@mcst.edu.ph', 1),
('Moore', 'Benjamin', NULL, '2001-09-23', 'Male', 'benjamin.moore@mcst.edu.ph', 3),
('Jackson', 'Charlotte', 'K', '2000-11-11', 'Female', 'charlotte.jackson@mcst.edu.ph', 4),
('Martin', 'Lucas', NULL, '1998-02-06', 'Male', 'lucas.martin@mcst.edu.ph', 1),
('Lee', 'Amelia', 'L', '2002-04-17', 'Female', 'amelia.lee@mcst.edu.ph', 1),
('Perez', 'Henry', NULL, '2003-06-29', 'Male', 'henry.perez@mcst.edu.ph', 2),
('White', 'Ella', 'M', '1997-08-13', 'Female', 'ella.white@mcst.edu.ph', 1),
('Harris', 'Jack', NULL, '1999-10-01', 'Male', 'jack.harris@mcst.edu.ph', 3),
('Sanchez', 'Grace', 'N', '2001-12-20', 'Female', 'grace.sanchez@mcst.edu.ph', 4),
('Clark', 'William', NULL, '2000-03-15', 'Male', 'william.clark@mcst.edu.ph', 1),
('Ramirez', 'Chloe', 'O', '1998-05-27', 'Female', 'chloe.ramirez@mcst.edu.ph', 1),
('Lewis', 'Matthew', NULL, '2002-07-07', 'Male', 'matthew.lewis@mcst.edu.ph', 2),
('Robinson', 'Harper', 'P', '1997-09-18', 'Female', 'harper.robinson@mcst.edu.ph', 1),
('Walker', 'Sebastian', NULL, '1999-11-30', 'Male', 'sebastian.walker@mcst.edu.ph', 3),
('Young', 'Lily', 'Q', '2001-01-10', 'Female', 'lily.young@mcst.edu.ph', 4);

-- Insert sample data for programs
INSERT INTO programs (program_name) VALUES
('Bachelor of Science in Information Systems'),
('Bachelor of Science in Mathematics'),
('Bachelor of Arts in Communication'),
('Bachelor of Science in Nursing'),
('Bachelor of Physical Education'),
('Bachelor of Science in Computer Science'),
('Bachelor of Science in Psychology'),
('Bachelor of Science in Biology'),
('Bachelor of Science in Chemistry'),
('Bachelor of Science in Physics'),
('Bachelor of Science in Civil Engineering'),
('Bachelor of Science in Mechanical Engineering'),
('Bachelor of Science in Electrical Engineering'),
('Bachelor of Science in Architecture'),
('Bachelor of Science in Accountancy'),
('Bachelor of Science in Business Administration'),
('Bachelor of Science in Tourism Management'),
('Bachelor of Science in Hotel and Restaurant Management'),
('Bachelor of Science in Environmental Science'),
('Bachelor of Science in Agriculture'),
('Bachelor of Science in Forestry'),
('Bachelor of Science in Fisheries'),
('Bachelor of Science in Criminology'),
('Bachelor of Science in Social Work'),
('Bachelor of Science in Education'),
('Bachelor of Science in Fine Arts'),
('Bachelor of Science in Industrial Technology'),
('Bachelor of Science in Information Technology'),
('Bachelor of Science in Medical Technology'),
('Bachelor of Science in Pharmacy');

-- Insert sample data for enrollment status
INSERT INTO enrollment_status (status_description) VALUES
('Enrolled'),
('Graduated'),
('Dropped'),
('On Leave');

-- Insert sample data for enrollments
INSERT INTO enrollments (student_id, program_id, academic_year, semester, enrollment_date, enrollment_status_id) VALUES
(1, 1, '2024-2025', '2nd', '2025-01-01', 1),
(2, 2, '2024-2025', '2nd', '2025-01-02', 1),
(3, 3, '2024-2025', '2nd', '2025-01-03', 2),
(4, 4, '2024-2025', '2nd', '2025-01-04', 3),
(5, 5, '2024-2025', '2nd', '2025-01-05', 1),
(6, 6, '2024-2025', '2nd', '2025-01-06', 1),
(7, 7, '2024-2025', '2nd', '2025-01-07', 4),
(8, 8, '2024-2025', '2nd', '2025-01-08', 1),
(9, 9, '2024-2025', '2nd', '2025-01-09', 2),
(10, 10, '2024-2025', '2nd', '2025-01-10', 1),
(11, 11, '2024-2025', '2nd', '2025-01-11', 3),
(12, 12, '2024-2025', '2nd', '2025-01-12', 1),
(13, 13, '2024-2025', '2nd', '2025-01-13', 1),
(14, 14, '2024-2025', '2nd', '2025-01-14', 2),
(15, 15, '2024-2025', '2nd', '2025-01-15', 1),
(16, 16, '2024-2025', '2nd', '2025-01-16', 1),
(17, 17, '2024-2025', '2nd', '2025-01-17', 4),
(18, 18, '2024-2025', '2nd', '2025-01-18', 1),
(19, 19, '2024-2025', '2nd', '2025-01-19', 2),
(20, 20, '2024-2025', '2nd', '2025-01-20', 1),
(21, 21, '2024-2025', '2nd', '2025-01-21', 3),
(22, 22, '2024-2025', '2nd', '2025-01-22', 1),
(23, 23, '2024-2025', '2nd', '2025-01-23', 1),
(24, 24, '2024-2025', '2nd', '2025-01-24', 2),
(25, 25, '2024-2025', '2nd', '2025-01-25', 1),
(26, 26, '2024-2025', '2nd', '2025-01-26', 1),
(27, 27, '2024-2025', '2nd', '2025-01-27', 4),
(28, 28, '2024-2025', '2nd', '2025-01-28', 1),
(29, 29, '2024-2025', '2nd', '2025-01-29', 2),
(30, 30, '2024-2025', '2nd', '2025-01-30', 1);

-- Insert sample data for courses
INSERT INTO courses (course_name) VALUES
('Introduction to Programming'),
('Data Structures and Algorithms'),
('Database Management Systems'),
('Operating Systems'),
('Computer Networks'),
('Software Engineering'),
('Web Development'),
('Mobile Application Development'),
('Artificial Intelligence'),
('Machine Learning'),
('Cybersecurity'),
('Cloud Computing'),
('Human-Computer Interaction'),
('Digital Signal Processing'),
('Computer Graphics'),
('Game Development'),
('Embedded Systems'),
('Internet of Things'),
('Big Data Analytics'),
('Blockchain Technology'),
('Quantum Computing'),
('Natural Language Processing'),
('Computer Vision'),
('Robotics'),
('Augmented Reality'),
('Virtual Reality'),
('Ethical Hacking'),
('DevOps Practices'),
('IT Project Management'),
('E-Commerce Systems');

-- Insert sample data for remarks
INSERT INTO remarks (description) VALUES
('Passed'),
('Failed'),
('Inc');

-- Insert sample data for academic records
INSERT INTO academic_records (enrollment_id, course_id, grade, remarks_id) VALUES
(1, 1, 1.75, 1),   -- Passed
(2, 2, 2.00, 1),   -- Passed
(3, 3, 1.50, 1),   -- Passed
(4, 4, 3.50, 2),   -- Failed
(5, 5, 2.25, 1),   -- Passed
(6, 6, 1.25, 1),   -- Passed
(7, 7, NULL, 3),   -- Inc
(8, 8, 2.50, 1),   -- Passed
(9, 9, 2.75, 1),   -- Passed
(10, 10, 1.00, 1), -- Passed
(11, 11, 4.00, 2), -- Failed
(12, 12, 2.25, 1), -- Passed
(13, 13, 1.75, 1), -- Passed
(14, 14, NULL, 3), -- Inc
(15, 15, 2.00, 1), -- Passed
(16, 16, 1.50, 1), -- Passed
(17, 17, 3.75, 2), -- Failed
(18, 18, 2.25, 1), -- Passed
(19, 19, 2.50, 1), -- Passed
(20, 20, 1.25, 1), -- Passed
(21, 21, NULL, 3), -- Inc
(22, 22, 2.75, 1), -- Passed
(23, 23, 3.25, 2), -- Failed
(24, 24, 1.50, 1), -- Passed
(25, 25, 2.00, 1), -- Passed
(26, 26, 1.75, 1), -- Passed
(27, 27, 3.50, 2), -- Failed
(28, 28, 2.25, 1), -- Passed
(29, 29, NULL, 3), -- Inc
(30, 30, 1.25, 1); -- Passed