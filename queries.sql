-- 1. Basic Data Retrieval from Single Tables

-- Retrieve all students
SELECT * FROM students;

-- Retrieve all programs
SELECT * FROM programs;

-- Retrieve all courses
SELECT * FROM courses;

-- Retrieve all enrollment statuses
SELECT * FROM enrollment_status;

-- 2. Retrieval Using JOIN Operations Across Multiple Tables

--Retrieve all students along with their enrollment details
SELECT s.first_name, s.last_name, p.program_name, e.academic_year, e.semester
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN programs p ON e.program_id = p.program_id;

-- Retrieve all academic records along with student names and course names
SELECT s.first_name, s.last_name, c.course_name, ar.grade, r.description AS remarks
FROM academic_records ar
JOIN enrollments e ON ar.enrollment_id = e.enrollment_id
JOIN students s ON e.student_id = s.student_id
JOIN courses c ON ar.course_id = c.course_id
JOIN remarks r ON ar.remarks_id = r.remarks_id;

-- 3. Queries Using WHERE Clauses for Filtering

-- Retrieve all active students
SELECT * FROM students WHERE student_status_id = 1;

-- Retrieve all students enrolled in a specific program (e.g., Bachelor of Science in Information Systems)
SELECT s.first_name, s.last_name
FROM students s
JOIN enrollments e ON s.student_id = e.student_id
JOIN programs p ON e.program_id = p.program_id
WHERE p.program_name = 'Bachelor of Science in Information Systems';

-- Retrieve all students who have failed at least one course
SELECT DISTINCT s.first_name, s.last_name
FROM academic_records ar
JOIN enrollments e ON ar.enrollment_id = e.enrollment_id
JOIN students s ON e.student_id = s.student_id
WHERE ar.remarks_id = (SELECT remarks_id FROM remarks WHERE description = 'Failed'); 

-- 4. Query Using Aggregate Functions with GROUP BY

-- Count the number of students in each status
SELECT ss.status_description, COUNT(s.student_id) AS student_count
FROM students s
JOIN student_status ss ON s.student_status_id = ss.status_id
GROUP BY ss.status_description;

-- Calculate the average grade for each course
SELECT c.course_name, AVG(ar.grade) AS average_grade
FROM academic_records ar
JOIN courses c ON ar.course_id = c.course_id
GROUP BY c.course_name;

-- 5. Queries Involving Subqueries or More Complex Logic

-- Retrieve students who have an average grade above 2.0
SELECT s.first_name, s.last_name
FROM students s
WHERE s.student_id IN (
    SELECT e.student_id
    FROM enrollments e
    JOIN academic_records ar ON e.enrollment_id = ar.enrollment_id
    GROUP BY e.student_id
    HAVING AVG(ar.grade) > 2.0
);

-- Retrieve programs with more than 5 enrolled students
SELECT p.program_name, COUNT(e.student_id) AS enrolled_count
FROM programs p
JOIN enrollments e ON p.program_id = e.program_id
GROUP BY p.program_name
HAVING COUNT(e.student_id) > 5;

-- DATA MANIPULATION EXAMPLES: UPDATE and DELETE statements for the student record management snippet

-- 1. STUDENTS TABLE --

-- UPDATE statements for students
-- 1. Update a student's email
UPDATE students
SET email = 'john.newemail@mcst.edu.ph'
WHERE student_id = 1;

-- 2. Update student status to Graduated for a given student
UPDATE students
SET student_status_id = (SELECT status_id FROM student_status WHERE status_description = 'Graduated')
WHERE student_id = 5;

-- 3. Change student's middle name where missing
UPDATE students
SET middle_name = 'Z'
WHERE middle_name IS NULL AND student_id = 3;

-- 4. Correct a student's last name spelling
UPDATE students
SET last_name = 'Smithson'
WHERE student_id = 1;

-- 5. Change gender entry for a student
UPDATE students
SET gender = 'Female'
WHERE student_id = 14;

-- DELETE statements for students
-- 1. Delete all students with status 'Dropped'
DELETE FROM students
WHERE student_status_id = (SELECT status_id FROM student_status WHERE status_description = 'Dropped');

-- 2. Delete a specific student by ID
DELETE FROM students
WHERE student_id = 30;

-- 3. Delete students who have the email domain 'example.com' (hypothetical)
DELETE FROM students
WHERE email LIKE '%@example.com';

-- 4. Delete students without middle names (hypothetically)
DELETE FROM students
WHERE middle_name IS NULL;

-- 5. Delete students born before year 1998
DELETE FROM students
WHERE birthdate < '1998-01-01';

--------------------------------------------------------

-- 2. ENROLLMENTS TABLE --

-- UPDATE statements for enrollments
-- 1. Update enrollment status to 'Graduated' for a given enrollment
UPDATE enrollments
SET enrollment_status_id = (SELECT status_id FROM enrollment_status WHERE status_description = 'Graduated')
WHERE enrollment_id = 10;

-- 2. Change program of a student's enrollment to 'Bachelor of Science in Computer Science'
UPDATE enrollments
SET program_id = (SELECT program_id FROM programs WHERE program_name = 'Bachelor of Science in Computer Science')
WHERE student_id = 2 AND academic_year = '2024-2025';

-- 3. Update enrollment semester to '1st' for a specific enrollment
UPDATE enrollments
SET semester = '1st'
WHERE enrollment_id = 5;

-- 4. Update enrollment date
UPDATE enrollments
SET enrollment_date = '2024-12-01'
WHERE enrollment_id = 6;

-- 5. Change enrollment status to 'On Leave'
UPDATE enrollments
SET enrollment_status_id = (SELECT status_id FROM enrollment_status WHERE status_description = 'On Leave')
WHERE enrollment_id = 7;

-- DELETE statements for enrollments
-- 1. Delete enrollments with status 'Dropped'
DELETE FROM enrollments
WHERE enrollment_status_id = (SELECT status_id FROM enrollment_status WHERE status_description = 'Dropped');

-- 2. Delete enrollment records older than academic year 2020-2021
DELETE FROM enrollments
WHERE academic_year < '2020-2021';

-- 3. Delete enrollment for a specific student (student_id = 15)
DELETE FROM enrollments
WHERE student_id = 15;

-- 4. Delete enrollments for programs starting with 'Bachelor of Science in Information'
DELETE FROM enrollments
WHERE program_id IN (
  SELECT program_id FROM programs WHERE program_name LIKE 'Bachelor of Science in Information%'
);

-- 5. Delete enrollments with semester = 'Summer' (if any)
DELETE FROM enrollments
WHERE semester = 'Summer';

--------------------------------------------------------

-- 3. ACADEMIC_RECORDS TABLE --

-- UPDATE statements for academic_records
-- 1. Update grade for a specific academic record
UPDATE academic_records
SET grade = 1.50
WHERE enrollment_id = 1 AND course_id = 1;

-- 2. Update remarks for a specific academic record to 'Passed'
UPDATE academic_records
SET remarks_id = (SELECT remarks_id FROM remarks WHERE description = 'Passed')
WHERE enrollment_id = 4 AND course_id = 4;

-- 3. Update grade to NULL to indicate Incomplete
UPDATE academic_records
SET grade = NULL, remarks_id = (SELECT remarks_id FROM remarks WHERE description = 'Inc')
WHERE enrollment_id = 7;

-- 4. Change course for a record (switch course_id)
UPDATE academic_records
SET course_id = (SELECT course_id FROM courses WHERE course_name = 'Data Structures and Algorithms')
WHERE enrollment_id = 2 AND course_id = 1;

-- 5. Update remarks to 'Failed' where grade is above 3.0 (fail threshold)
UPDATE academic_records
SET remarks_id = (SELECT remarks_id FROM remarks WHERE description = 'Failed')
WHERE grade > 3.0;

-- DELETE statements for academic_records
-- 1. Delete all academic records with remarks 'Inc' (Incomplete)
DELETE FROM academic_records
WHERE remarks_id = (SELECT remarks_id FROM remarks WHERE description = 'Inc');

-- 2. Delete academic records with grades below 1.0 (hypothetical invalid)
DELETE FROM academic_records
WHERE grade < 1.0;

-- 3. Delete academic records for a specific enrollment
DELETE FROM academic_records
WHERE enrollment_id = 10;

-- 4. Delete academic records for courses that no longer exist (course_id no longer valid)
DELETE FROM academic_records
WHERE course_id NOT IN (SELECT course_id FROM courses);

-- 5. Delete academic records for students who have dropped (joining enrollments)
DELETE FROM academic_records
WHERE enrollment_id IN (
  SELECT enrollment_id FROM enrollments
  WHERE enrollment_status_id = (SELECT status_id FROM enrollment_status WHERE status_description = 'Dropped')
);

--------------------------------------------------------

-- 4. STUDENT_STATUS TABLE (Lookup) --

-- UPDATE statements for student_status
-- 1. Rename status 'Dropped' to 'Withdrawn'
UPDATE student_status
SET status_description = 'Withdrawn'
WHERE status_description = 'Dropped';

-- 2. Add clarifying note to 'Inactive' --> set description to 'Inactive (not enrolled)'
UPDATE student_status
SET status_description = 'Inactive (not enrolled)'
WHERE status_description = 'Inactive';

-- 3. Correct a typo if any (example)
UPDATE student_status
SET status_description = 'Active'
WHERE status_description = 'Activve';

-- 4. Change Graduated description to 'Alumni'
UPDATE student_status
SET status_description = 'Alumni'
WHERE status_description = 'Graduated';

-- 5. Set status 'New' for uninitialized entries (hypothetical)
UPDATE student_status
SET status_description = 'New'
WHERE status_description IS NULL;

-- DELETE statements for student_status
-- 1. Delete obsolete status entries (example: 'New')
DELETE FROM student_status
WHERE status_description = 'New';

-- 2. Delete status entries not referenced by any students
DELETE FROM student_status
WHERE status_id NOT IN (
  SELECT DISTINCT student_status_id FROM students
);

-- 3. Delete 'Inactive (not enrolled)' if no students have this status
DELETE FROM student_status
WHERE status_description = 'Inactive (not enrolled)'
AND status_id NOT IN (
  SELECT DISTINCT student_status_id FROM students
);

-- 4. Delete status with no description (NULL)
DELETE FROM student_status
WHERE status_description IS NULL;

-- 5. Delete test or sample statuses
DELETE FROM student_status
WHERE status_description LIKE '%Test%';

--------------------------------------------------------

-- 5. ENROLLMENT_STATUS TABLE (Lookup) --

-- UPDATE statements for enrollment_status
-- 1. Rename 'On Leave' to 'Leave of Absence'
UPDATE enrollment_status
SET status_description = 'Leave of Absence'
WHERE status_description = 'On Leave';

-- 2. Change 'Dropped' status description to 'Withdrawn'
UPDATE enrollment_status
SET status_description = 'Withdrawn'
WHERE status_description = 'Dropped';

-- 3. Add prefix 'Current - ' for 'Enrolled'
UPDATE enrollment_status
SET status_description = 'Current - Enrolled'
WHERE status_description = 'Enrolled';

-- 4. Fix typo example if any
UPDATE enrollment_status
SET status_description = 'Graduated'
WHERE status_description = 'Gradutated';

-- 5. Set default status description for null
UPDATE enrollment_status
SET status_description = 'Pending'
WHERE status_description IS NULL;

-- DELETE statements for enrollment_status
-- 1. Delete statuses not referenced by any enrollments
DELETE FROM enrollment_status
WHERE status_id NOT IN (
  SELECT DISTINCT enrollment_status_id FROM enrollments
);

-- 2. Delete status 'Pending' if unused
DELETE FROM enrollment_status
WHERE status_description = 'Pending'
AND status_id NOT IN (
  SELECT DISTINCT enrollment_status_id FROM enrollments
);

-- 3. Delete status entries with null description
DELETE FROM enrollment_status
WHERE status_description IS NULL;

-- 4. Delete old or deprecated statuses (example)
DELETE FROM enrollment_status
WHERE status_description LIKE '%Old%';

-- 5. Delete test statuses
DELETE FROM enrollment_status
WHERE status_description LIKE '%Test%';

--------------------------------------------------------

-- 6. REMARKS TABLE (Lookup) --

-- UPDATE statements for remarks
-- 1. Rename 'Inc' to 'Incomplete'
UPDATE remarks
SET description = 'Incomplete'
WHERE description = 'Inc';

-- 2. Change 'Failed' description to 'Not Passed'
UPDATE remarks
SET description = 'Not Passed'
WHERE description = 'Failed';

-- 3. Add 'Grade Pending' status for null remarks
UPDATE remarks
SET description = 'Grade Pending'
WHERE description IS NULL;

-- 4. Fix typo if any
UPDATE remarks
SET description = 'Passed'
WHERE description = 'Pasded';

-- 5. Add suffix to 'Passed' like 'Passed with Distinction'
UPDATE remarks
SET description = 'Passed with Distinction'
WHERE description = 'Passed'
AND EXISTS (
  SELECT 1 FROM academic_records WHERE remarks_id = remarks.remarks_id AND grade <= 1.5
);

-- DELETE statements for remarks
-- 1. Delete remarks not referenced by any academic records
DELETE FROM remarks
WHERE remarks_id NOT IN (
  SELECT DISTINCT remarks_id FROM academic_records
);

-- 2. Delete remarks with null description
DELETE FROM remarks
WHERE description IS NULL;

-- 3. Delete obsolete remarks like 'Pending'
DELETE FROM remarks
WHERE description LIKE '%Pending%';

-- 4. Delete test remarks
DELETE FROM remarks
WHERE description LIKE '%Test%';

-- 5. Delete remarks with no linked records
DELETE FROM remarks
WHERE description = 'Inc' AND remarks_id NOT IN (
  SELECT DISTINCT remarks_id FROM academic_records
);

--------------------------------------------------------

-- 7. PROGRAMS TABLE --

-- UPDATE statements for programs
-- 1. Rename program 'Bachelor of Science in Information Systems' to 'BS Information Systems'
UPDATE programs
SET program_name = 'BS Information Systems'
WHERE program_name = 'Bachelor of Science in Information Systems';

-- 2. Correct a typo in program name
UPDATE programs
SET program_name = 'Bachelor of Science in Computer Science'
WHERE program_name = 'Bachlor of Science in Computer Science';

-- 3. Update multiple programs to add prefix 'Undergrad: '
UPDATE programs
SET program_name = CONCAT('Undergrad: ', program_name)
WHERE program_name LIKE 'Bachelor of Science%';

-- 4. Remove prefix 'Undergrad: ' from programs
UPDATE programs
SET program_name = REPLACE(program_name, 'Undergrad: ', '')
WHERE program_name LIKE 'Undergrad: %';

-- 5. Update program name for branding
UPDATE programs
SET program_name = 'Bachelor of Science in Data Science'
WHERE program_name = 'Bachelor of Science in Computer Science';

-- DELETE statements for programs
-- 1. Delete programs with no enrollments
DELETE FROM programs
WHERE program_id NOT IN (
  SELECT DISTINCT program_id FROM enrollments
);

-- 2. Delete programs with name containing 'Test'
DELETE FROM programs
WHERE program_name LIKE '%Test%';

-- 3. Delete obsolete programs
DELETE FROM programs
WHERE program_name LIKE '%Obsolete%';

-- 4. Delete programs with null name
DELETE FROM programs
WHERE program_name IS NULL;

-- 5. Delete programs with very low enrollment (less than 3 students)
DELETE FROM programs
WHERE program_id IN (
  SELECT p.program_id
  FROM programs p
  LEFT JOIN enrollments e ON p.program_id = e.program_id
  GROUP BY p.program_id
  HAVING COUNT(e.enrollment_id) < 3
);

--------------------------------------------------------

-- 8. PROFESSORS TABLE --

-- UPDATE statements for professors
-- 1. Update a professor's email
UPDATE professors
SET email = 'john.newemail@mcst.edu.ph'
WHERE professor_id = 1;

-- 2. Assign a professor to a different program
UPDATE professors
SET program_id = 2
WHERE professor_id = 5;

-- 3. Change professor's middle name where missing
UPDATE professors
SET middle_name = 'Z'
WHERE middle_name IS NULL AND professor_id = 3;

-- 4. Correct a professor's last name spelling
UPDATE professors
SET last_name = 'Smithson'
WHERE professor_id = 1;

-- 5. Change gender entry for a professor
UPDATE professors
SET gender = 'Female'
WHERE professor_id = 14;

-- DELETE statements for professors
-- 1. Delete all professors assigned to a specific program
DELETE FROM professors
WHERE program_id = 10;

-- 2. Delete a specific professor by ID
DELETE FROM professors
WHERE professor_id = 30;

-- 3. Delete professors who have the email domain 'example.com' (hypothetical)
DELETE FROM professors
WHERE email LIKE '%@example.com';

-- 4. Delete professors without middle names (hypothetically)
DELETE FROM professors
WHERE middle_name IS NULL;

-- 5. Delete professors born before year 1980
DELETE FROM professors
WHERE birthdate < '1980-01-01';
-- courses table
CREATE TABLE courses (
    course_id INT AUTO_INCREMENT PRIMARY KEY,
    course_name VARCHAR(100) NOT NULL,
    professor_id INT NOT NULL,
    FOREIGN KEY (professor_id) REFERENCES professors (professor_id) ON DELETE SET NULL
);

--------------------------------------------------------

-- 9. COURSES TABLE --

-- UPDATE statements for courses
-- 1. Rename course 'Introduction to Programming' to 'Programming Fundamentals'
UPDATE courses
SET course_name = 'Programming Fundamentals'
WHERE course_name = 'Introduction to Programming';

-- 2. Update course name to add '(Updated)'
UPDATE courses
SET course_name = CONCAT(course_name, ' (Updated)')
WHERE course_name = 'Data Structures and Algorithms';

-- 3. Fix typo in course name
UPDATE courses
SET course_name = 'Computer Networks'
WHERE course_name = 'Computer Network';

-- 4. Shorten course name for display
UPDATE courses
SET course_name = 'AI Basics'
WHERE course_name = 'Artificial Intelligence';

-- 5. Append year to course names
UPDATE courses
SET course_name = CONCAT(course_name, ' 2024')
WHERE course_name LIKE 'Bachelor of Science%';

-- DELETE statements for courses
-- 1. Delete courses not used in any academic records
DELETE FROM courses
WHERE course_id NOT IN (
  SELECT DISTINCT course_id FROM academic_records
);

-- 2. Delete courses containing 'Test'
DELETE FROM courses
WHERE course_name LIKE '%Test%';

-- 3. Delete obsolete courses
DELETE FROM courses
WHERE course_name LIKE '%Obsolete%';

-- 4. Delete courses with NULL names
DELETE FROM courses
WHERE course_name IS NULL;

-- 5. Delete courses with very low enrollment (less than 2 students with grades)
DELETE FROM courses
WHERE course_id IN (
  SELECT c.course_id
  FROM courses c
  LEFT JOIN academic_records ar ON c.course_id = ar.course_id
  GROUP BY c.course_id
  HAVING COUNT(ar.enrollment_id) < 2
);