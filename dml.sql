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
('Young', 'Lily', 'Q', '2001-01-10', 'Female', 'lily.young@mcst.edu.ph', 4),
('Adams', 'Noah', 'R', '2000-02-15', 'Male', 'noah.adams@mcst.edu.ph', 1),
('Baker', 'Sophia', 'S', '1999-03-20', 'Female', 'sophia.baker@mcst.edu.ph', 1),
('Carter', 'Mason', 'T', '2001-04-25', 'Male', 'mason.carter@mcst.edu.ph', 2),
('Davis', 'Ella', 'U', '1998-05-30', 'Female', 'ella.davis@mcst.edu.ph', 3),
('Evans', 'Logan', 'V', '2003-06-15', 'Male', 'logan.evans@mcst.edu.ph', 1),
('Foster', 'Avery', 'W', '2002-07-20', 'Female', 'avery.foster@mcst.edu.ph', 4),
('Gray', 'Liam', 'X', '1997-08-05', 'Male', 'liam.gray@mcst.edu.ph', 1),
('Hill', 'Zoe', 'Y', '1999-09-10', 'Female', 'zoe.hill@mcst.edu.ph', 2),
('King', 'Ethan', 'Z', '2000-10-15', 'Male', 'ethan.king@mcst.edu.ph', 3),
('Long', 'Aria', 'AA', '2001-11-20', 'Female', 'aria.long@mcst.edu.ph', 4),
('Morris', 'Lucas', 'BB', '1998-12-25', 'Male', 'lucas.morris@mcst.edu.ph', 1),
('Nelson', 'Mila', 'CC', '2003-01-10', 'Female', 'mila.nelson@mcst.edu.ph', 1),
('Parker', 'Oliver', 'DD', '1997-02-15', 'Male', 'oliver.parker@mcst.edu.ph', 2),
('Reed', 'Emma', 'EE', '1999-03-20', 'Female', 'emma.reed@mcst.edu.ph', 3),
('Scott', 'James', 'FF', '2002-04-25', 'Male', 'james.scott@mcst.edu.ph', 4),
('Turner', 'Luna', 'GG', '2000-05-30', 'Female', 'luna.turner@mcst.edu.ph', 1),
('Morgan', 'Sophia', 'HH', '1998-06-15', 'Female', 'sophia.morgan@mcst.edu.ph', 1),
('Bell', 'Liam', 'II', '2003-07-20', 'Male', 'liam.bell@mcst.edu.ph', 2),
('Cook', 'Ava', 'JJ', '1997-08-05', 'Female', 'ava.cook@mcst.edu.ph', 3),
('Murphy', 'Noah', 'KK', '1999-09-10', 'Male', 'noah.murphy@mcst.edu.ph', 4);

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
('Bachelor of Science in Pharmacy'),
('Bachelor of Science in Geology'),
('Bachelor of Science in Marine Biology'),
('Bachelor of Science in Astronomy'),
('Bachelor of Science in Data Science'),
('Bachelor of Science in Cybersecurity'),
('Bachelor of Science in Artificial Intelligence'),
('Bachelor of Science in Robotics'),
('Bachelor of Science in Game Design'),
('Bachelor of Science in Animation'),
('Bachelor of Science in Film Production'),
('Bachelor of Science in Music Technology'),
('Bachelor of Science in Urban Planning'),
('Bachelor of Science in Public Health'),
('Bachelor of Science in Occupational Therapy'),
('Bachelor of Science in Speech Pathology'),
('Bachelor of Science in Veterinary Medicine'),
('Bachelor of Science in Renewable Energy'),
('Bachelor of Science in Nanotechnology'),
('Bachelor of Science in Biotechnology'),
('Bachelor of Science in Cognitive Science');

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
(30, 30, '2024-2025', '2nd', '2025-01-30', 1),
(31, 31, '2024-2025', '2nd', '2025-01-31', 1),
(32, 32, '2024-2025', '2nd', '2025-02-01', 1),
(33, 33, '2024-2025', '2nd', '2025-02-02', 2),
(34, 34, '2024-2025', '2nd', '2025-02-03', 3),
(35, 35, '2024-2025', '2nd', '2025-02-04', 1),
(36, 36, '2024-2025', '2nd', '2025-02-05', 1),
(37, 37, '2024-2025', '2nd', '2025-02-06', 4),
(38, 38, '2024-2025', '2nd', '2025-02-07', 1),
(39, 39, '2024-2025', '2nd', '2025-02-08', 2),
(40, 40, '2024-2025', '2nd', '2025-02-09', 1),
(41, 41, '2024-2025', '2nd', '2025-02-10', 3),
(42, 42, '2024-2025', '2nd', '2025-02-11', 1),
(43, 43, '2024-2025', '2nd', '2025-02-12', 1),
(44, 44, '2024-2025', '2nd', '2025-02-13', 2),
(45, 45, '2024-2025', '2nd', '2025-02-14', 1),
(46, 46, '2024-2025', '2nd', '2025-02-15', 1),
(47, 47, '2024-2025', '2nd', '2025-02-16', 4),
(48, 48, '2024-2025', '2nd', '2025-02-17', 1),
(49, 49, '2024-2025', '2nd', '2025-02-18', 2),
(50, 50, '2024-2025', '2nd', '2025-02-19', 1);

-- Sample data for professors
INSERT INTO professors (last_name, first_name, middle_name, birthdate, gender, email, program_id) VALUES
('Smith', 'John', 'A', '1980-01-15', 'Male', 'john.smith@mcst.edu.ph', 1),
('Johnson', 'Emily', 'B', '1985-02-20', 'Female', 'emily.johnson@mcst.edu.ph', 2),
('Williams', 'Michael', 'C', '1978-03-10', 'Male', 'michael.williams@mcst.edu.ph', 3),
('Brown', 'Sarah', 'D', '1990-04-25', 'Female', 'sarah.brown@mcst.edu.ph', 4),
('Jones', 'David', 'E', '1982-05-30', 'Male', 'david.jones@mcst.edu.ph', 5),
('Garcia', 'Laura', 'F', '1987-06-15', 'Female', 'laura.garcia@mcst.edu.ph', 6),
('Martinez', 'James', 'G', '1975-07-20', 'Male', 'james.martinez@mcst.edu.ph', 7),
('Hernandez', 'Sophia', 'H', '1992-08-05', 'Female', 'sophia.hernandez@mcst.edu.ph', 8),
('Lopez', 'Daniel', 'I', '1983-09-10', 'Male', 'daniel.lopez@mcst.edu.ph', 9),
('Gonzalez', 'Olivia', 'J', '1988-10-15', 'Female', 'olivia.gonzalez@mcst.edu.ph', 10),
('Wilson', 'Ethan', 'K', '1979-11-20', 'Male', 'ethan.wilson@mcst.edu.ph', 11),
('Anderson', 'Emma', 'L', '1991-12-25', 'Female', 'emma.anderson@mcst.edu.ph', 12),
('Thomas', 'Alexander', 'M', '1984-01-10', 'Male', 'alexander.thomas@mcst.edu.ph', 13),
('Taylor', 'Isabella', 'N', '1986-02-15', 'Female', 'isabella.taylor@mcst.edu.ph', 14),
('Moore', 'Matthew', 'O', '1981-03-20', 'Male', 'matthew.moore@mcst.edu.ph', 15),
('Jackson', 'Ava', 'P', '1989-04-25', 'Female', 'ava.jackson@mcst.edu.ph', 16),
('Martin', 'Christopher', 'Q', '1977-05-30', 'Male', 'christopher.martin@mcst.edu.ph', 17),
('Lee', 'Mia', 'R', '1993-06-15', 'Female', 'mia.lee@mcst.edu.ph', 18),
('Perez', 'Joshua', 'S', '1980-07-20', 'Male', 'joshua.perez@mcst.edu.ph', 19),
('Thompson', 'Amelia', 'T', '1985-08-05', 'Female', 'amelia.thompson@mcst.edu.ph', 20),
('White', 'Andrew', 'U', '1976-09-10', 'Male', 'andrew.white@mcst.edu.ph', 21),
('Harris', 'Charlotte', 'V', '1990-10-15', 'Female', 'charlotte.harris@mcst.edu.ph', 22),
('Sanchez', 'Joseph', 'W', '1983-11-20', 'Male', 'joseph.sanchez@mcst.edu.ph', 23),
('Clark', 'Harper', 'X', '1987-12-25', 'Female', 'harper.clark@mcst.edu.ph', 24),
('Ramirez', 'Benjamin', 'Y', '1978-01-10', 'Male', 'benjamin.ramirez@mcst.edu.ph', 25),
('Lewis', 'Ella', 'Z', '1992-02-15', 'Female', 'ella.lewis@mcst.edu.ph', 26),
('Robinson', 'Samuel', 'AA', '1981-03-20', 'Male', 'samuel.robinson@mcst.edu.ph', 27),
('Walker', 'Grace', 'BB', '1986-04-25', 'Female', 'grace.walker@mcst.edu.ph', 28),
('Young', 'Henry', 'CC', '1979-05-30', 'Male', 'henry.young@mcst.edu.ph', 29),
('Allen', 'Victoria', 'DD', '1988-06-15', 'Female', 'victoria.allen@mcst.edu.ph', 30),
('King', 'Oliver', 'EE', '1980-07-10', 'Male', 'oliver.king@mcst.edu.ph', 31),
('Scott', 'Sophia', 'FF', '1985-08-20', 'Female', 'sophia.scott@mcst.edu.ph', 32),
('Green', 'James', 'GG', '1977-09-15', 'Male', 'james.green@mcst.edu.ph', 33),
('Adams', 'Emily', 'HH', '1990-10-05', 'Female', 'emily.adams@mcst.edu.ph', 34),
('Baker', 'Michael', 'II', '1982-11-25', 'Male', 'michael.baker@mcst.edu.ph', 35),
('Carter', 'Olivia', 'JJ', '1987-12-30', 'Female', 'olivia.carter@mcst.edu.ph', 36),
('Mitchell', 'Daniel', 'KK', '1979-01-15', 'Male', 'daniel.mitchell@mcst.edu.ph', 37),
('Perez', 'Sophia', 'LL', '1991-02-20', 'Female', 'sophia.perez@mcst.edu.ph', 38),
('Roberts', 'David', 'MM', '1983-03-10', 'Male', 'david.roberts@mcst.edu.ph', 39),
('Turner', 'Emma', 'NN', '1988-04-25', 'Female', 'emma.turner@mcst.edu.ph', 40),
('Phillips', 'Joshua', 'OO', '1981-05-30', 'Male', 'joshua.phillips@mcst.edu.ph', 41),
('Campbell', 'Mia', 'PP', '1993-06-15', 'Female', 'mia.campbell@mcst.edu.ph', 42),
('Parker', 'Henry', 'QQ', '1980-07-20', 'Male', 'henry.parker@mcst.edu.ph', 43),
('Evans', 'Amelia', 'RR', '1985-08-05', 'Female', 'amelia.evans@mcst.edu.ph', 44),
('Edwards', 'Andrew', 'SS', '1976-09-10', 'Male', 'andrew.edwards@mcst.edu.ph', 45),
('Collins', 'Charlotte', 'TT', '1990-10-15', 'Female', 'charlotte.collins@mcst.edu.ph', 46),
('Stewart', 'Joseph', 'UU', '1983-11-20', 'Male', 'joseph.stewart@mcst.edu.ph', 47),
('Morris', 'Harper', 'VV', '1987-12-25', 'Female', 'harper.morris@mcst.edu.ph', 48),
('Rogers', 'Benjamin', 'WW', '1978-01-10', 'Male', 'benjamin.rogers@mcst.edu.ph', 49),
('Reed', 'Ella', 'XX', '1992-02-15', 'Female', 'ella.reed@mcst.edu.ph', 50);

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
('E-Commerce Systems'),
('Digital Marketing'),
('Social Media Analytics'),
('Business Intelligence'),
('Supply Chain Management Systems'),
('Health Informatics'),
('Bioinformatics'),
('Geographic Information Systems'),
('3D Printing Technology'),
('Nanotechnology Applications'),
('Renewable Energy Systems'),
('Autonomous Vehicles'),
('Wearable Technology'),
('Smart Cities'),
('Edge Computing'),
('Digital Forensics'),
('Cryptography'),
('Mobile Security'),
('Game AI'),
('Virtual Assistants'),
('Speech Recognition');

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
(30, 30, 1.25, 1), -- Passed
(31, 31, 2.00, 1), -- Passed
(32, 32, 1.75, 1), -- Passed
(33, 33, NULL, 3), -- Inc
(34, 34, 3.25, 2), -- Failed
(35, 35, 2.50, 1), -- Passed
(36, 36, 1.50, 1), -- Passed
(37, 37, 2.25, 1), -- Passed
(38, 38, NULL, 3), -- Inc
(39, 39, 1.75, 1), -- Passed
(40, 40, 2.00, 1), -- Passed
(41, 41, 3.50, 2), -- Failed
(42, 42, 1.25, 1), -- Passed
(43, 43, 2.75, 1), -- Passed
(44, 44, NULL, 3), -- Inc
(45, 45, 1.50, 1), -- Passed
(46, 46, 2.25, 1), -- Passed
(47, 47, 3.75, 2), -- Failed
(48, 48, 1.75, 1), -- Passed
(49, 49, 2.50, 1), -- Passed
(50, 50, 1.25, 1); -- Passed