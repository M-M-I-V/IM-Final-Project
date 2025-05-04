CREATE USER 'student'@'localhost' IDENTIFIED BY 'student';
GRANT SELECT ON student_record_management_snippet.students TO 'student'@'localhost';

CREATE USER 'registrar_staff'@'localhost' IDENTIFIED BY 'registrar';
GRANT SELECT, INSERT, UPDATE ON student_record_management_snippet.enrollments TO 'registrar_staff'@'localhost';

CREATE USER 'professor'@'localhost' IDENTIFIED BY 'professor';
GRANT SELECT ON student_record_management_snippet.academic_records TO 'professor'@'localhost';

CREATE USER 'admin'@'localhost' IDENTIFIED BY 'admin';
GRANT ALL PRIVILEGES ON student_record_management_snippet.* TO 'admin'@'localhost' WITH GRANT OPTION;

FLUSH PRIVILEGES;
