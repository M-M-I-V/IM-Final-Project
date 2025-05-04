CREATE USER 'student'@'localhost' IDENTIFIED BY 'student';
GRANT SELECT ON student_record_management_snippet.students TO 'student'@'localhost';

CREATE USER 'professor'@'localhost' IDENTIFIED BY 'professor';
GRANT SELECT ON student_record_management_snippet.academic_records TO 'professor'@'localhost';