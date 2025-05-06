-- Drop existing roles and users
DROP USER IF EXISTS 'student'@'localhost';
DROP USER IF EXISTS 'registrar_staff'@'localhost';
DROP USER IF EXISTS 'professor'@'localhost';
DROP USER IF EXISTS 'admin'@'localhost';

DROP ROLE IF EXISTS students;
DROP ROLE IF EXISTS registrar_staffs;
DROP ROLE IF EXISTS professors;
DROP ROLE IF EXISTS admins;

-- Create roles
CREATE ROLE students;
CREATE ROLE registrar_staffs;
CREATE ROLE professors;
CREATE ROLE admins;

-- Grant specific privileges
GRANT SELECT ON student_record_management_snippet.* TO students;
GRANT SELECT, INSERT, UPDATE ON student_record_management_snippet.* TO registrar_staffs;
GRANT SELECT ON student_record_management_snippet.* TO professors;
GRANT ALL PRIVILEGES ON student_record_management_snippet.* TO admins WITH GRANT OPTION;

-- Grant SHOW DATABASES
GRANT SHOW DATABASES ON *.* TO students, registrar_staffs, professors, admins;

-- Create users with stronger passwords
CREATE USER 'student'@'localhost' IDENTIFIED BY 'student';
CREATE USER 'registrar_staff'@'localhost' IDENTIFIED BY 'registrar';
CREATE USER 'professor'@'localhost' IDENTIFIED BY 'professor';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';

-- Assign roles to users
GRANT students TO 'student'@'localhost';
GRANT registrar_staffs TO 'registrar_staff'@'localhost';
GRANT professors TO 'professor'@'localhost';
GRANT admins TO 'admin'@'localhost';

FLUSH PRIVILEGES;

-- ACCESSING USING ROLES
-- sudo /opt/lampp/bin/mysql -u student -p
-- student
-- SELECT CURRENT_ROLE();
-- SET ROLE students;
-- SHOW DATABASES;
-- USE student_record_management_snippet;

-- SETTING DEFAULT ROLE
-- sudo /opt/lampp/bin/mysql -u root
-- SET DEFAULT ROLE students TO 'student'@'localhost';