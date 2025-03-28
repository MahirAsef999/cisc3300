-- Question 5

-- a. Create and use the homework_8 database
CREATE DATABASE IF NOT EXISTS homework_8;
USE homework_8;

-- b. Create a students table
CREATE TABLE IF NOT EXISTS students (
    student_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    gpa DECIMAL(3,2) NOT NULL,
    major VARCHAR(100) NOT NULL
);

-- b. Create a notes table related to students
CREATE TABLE IF NOT EXISTS notes (
    id INT(11) NOT NULL AUTO_INCREMENT,
    student_id INT NOT NULL,
    title VARCHAR(80) NOT NULL,
    description TEXT NOT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (student_id) REFERENCES students(student_id) ON DELETE CASCADE
);


-- Question 6

-- a. Insert some data (student data)
INSERT INTO students (name, gpa, major) VALUES
('Mahir Asef', 3.2, 'Computer Science'),
('Valeria Garcia', 3.3, 'Mechanical Engineering'),
('John Lee', 3.5, 'Biology'),
('David Smith', 3.9, 'Business Administration'),
('James Turner', 3.6, 'Electrical Engineering'),
('Fahim Jawad', 2.9, 'Physics'),
('Lily Jasmine', 3.8, 'Mathematics'),
('Lucas Allen', 3.0, 'Chemistry');



-- a. Insert some data (notes/descriptions) 
INSERT INTO notes (student_id, title, description) VALUES
(1, 'Data Structures Feedback', 'Mahir is improving in Data Structures.'),
(2, 'Physics Feedback', 'Valeria is excelling in physics and is on track to graduate early.'),
(3, 'Biology Project', 'John is working on a biology project about cell structures.'),
(4, 'Business Project', 'David has shown leadership skills during the business group project.'),
(5, 'Electrical Engineering Project Feedback', 'James is doing well but needs more practice in circuit designs.'),
(6, 'Physics Exam Feedback', 'Fahim needs to work on thermodynamics.'),
(7, 'Mathematics Seminar Feedback', 'Lily is excelling but she should participate more.'),
(8, 'Chemistry Lab Feedback', 'Lucas is careless with lab reports and does not put materials back.');

-- b. Update Mahir's note
UPDATE notes
SET description = 'Mahir has improved significantly in Data Structures, but he still needs to work on binary search tree.'
WHERE title = 'Data Structures Feedback' AND student_id = 1;

-- c. Delete David's note
DELETE FROM notes
WHERE title = 'Business Project' AND student_id = 4;

-- Question 7: Queries

-- a. Select all notes ordered by title in reverse alphabetical order
SELECT * FROM notes
ORDER BY title DESC;

-- b. Select the second note only (unknown ID)
SELECT * FROM notes
LIMIT 1 OFFSET 1;

-- c. Select notes where the description contains vowels
SELECT * FROM notes
WHERE description REGEXP '[aeiouAEIOU]';
