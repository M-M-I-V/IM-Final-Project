CREATE ROLE students;
CREATE ROLE registrar_staffs;
CREATE ROLE professors;
CREATE ROLE admins;

GRANT SELECT ON student_record_management_snippet.students TO students;
GRANT SELECT, INSERT, UPDATE ON student_record_management_snippet.enrollments TO registrar_staffs;
GRANT SELECT ON student_record_management_snippet.academic_records TO professors;
GRANT ALL PRIVILEGES ON student_record_management_snippet.* TO admins WITH GRANT OPTION;

CREATE USER 'student'@'localhost' IDENTIFIED BY 'student';
CREATE USER 'registrar_staff'@'localhost' IDENTIFIED BY 'registrar';
CREATE USER 'professor'@'localhost' IDENTIFIED BY 'professor';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';

GRANT students TO 'student'@'localhost';
GRANT registrar_staffs TO 'registrar_staff'@'localhost';
GRANT professors TO 'professor'@'localhost';
GRANT admins TO 'admin'@'localhost';

SET DEFAULT ROLE students TO 'student'@'localhost';
SET DEFAULT ROLE registrar_staffs TO 'registrar_staff'@'localhost';
SET DEFAULT ROLE professors TO 'professor'@'localhost';
SET DEFAULT ROLE admins TO 'admin'@'localhost';

FLUSH PRIVILEGES;