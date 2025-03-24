CREATE DATABASE in_class_18;
USE in_class_18;

-- Create students table
CREATE TABLE students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gpa DECIMAL(3,2) NOT NULL,
    major VARCHAR(100) NOT NULL
);

CREATE TABLE studentComments (
    comment_id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    comment_text TEXT NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE
);

-- Insert test students
INSERT INTO students (name, gpa, major) VALUES
('Mahir Asef', 3.2, 'Computer Science'),
('Valeria Garcia', 3.3, 'Mechanical Engineering'),
('John Lee', 3.5, 'Biology'),
('David Smith', 3.9, 'Business Administration');

-- test comments
INSERT INTO studentComments (student_id, comment_text) VALUES
(1, 'Mahir is doing okay in Data Structures.'),
(1, 'Mahir participated in a hackathon to improve his coding skills.'),
(2, 'Valeria is doing very well in physics.'),
(3, 'John is improving in organic chemistry.');

-- Query to return all users and their comments, if they have comments or not (part a).
SELECT students.student_id, students.name, students.gpa, students.major, studentComments.comment_text
FROM students
LEFT JOIN studentComments ON students.student_id = studentComments.student_id;

-- Query to return all users and their comments only if they have comments (part b)
SELECT students.student_id, students.name, students.gpa, students.major, studentComments.comment_text
FROM students
INNER JOIN studentComments ON students.student_id = studentComments.student_id;

