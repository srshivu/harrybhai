-- ===========================
-- 1️⃣ Drop and create database
-- ===========================
DROP DATABASE IF EXISTS harryjoins;
CREATE DATABASE harryjoins;
USE harryjoins;

-- ===========================
-- 2️⃣ Create students table
-- ===========================
CREATE TABLE college_students (
    id INT PRIMARY KEY,
    name VARCHAR(50)
);

-- Insert students
INSERT INTO college_students (id, name) VALUES
(1, 'Rohan'),
(2, 'Aakash'),
(3, 'Priya'),
(4, 'Sneha'),
(5, 'Rahul'),
(6, 'Anjali'),
(7, 'Vikram'),
(8, 'Simran'),
(9, 'Karan'),
(10, 'Neha'),
(11, 'Harry'),
(12, 'Lakshayraj Dash'),
(13, 'Ishita'),
(14, 'Amit'),
(15, 'Meena');

-- ===========================
-- 3️⃣ Create marks table
-- ===========================
CREATE TABLE marks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    student_id INT,
    subject VARCHAR(30),
    score INT,
    FOREIGN KEY (student_id) REFERENCES college_students(id)
);

-- Insert marks
INSERT INTO marks (student_id, subject, score) VALUES
(1, 'Math', 92),
(1, 'Science', 88),
(2, 'Math', 81),
(2, 'English', 79),
(3, 'Math', 75),
(3, 'Science', 73),
(4, 'Science', 85),
(5, 'English', 78),
(5, 'Math', 80),
(6, 'Science', 66),
(6, 'English', 68),
(7, 'Math', 55),
(8, 'English', 74),
(10, 'Science', 89),
(10, 'Math', 83),
(12, 'Math', 77),
(12, 'Science', 79),
(13, 'English', 60),
(14, 'Science', 69),
(14, 'English', 72);

-- ===========================
-- 4️⃣ INNER JOIN
-- ===========================
-- Only students with marks
SELECT college_students.name, marks.subject, marks.score
FROM college_students
INNER JOIN marks
ON college_students.id = marks.student_id;

-- ===========================
-- 5️⃣ LEFT JOIN
-- ===========================
-- All students, even if they have no marks
SELECT college_students.name, marks.subject, marks.score
FROM college_students
LEFT JOIN marks
ON college_students.id = marks.student_id;

-- ===========================
-- 6️⃣ RIGHT JOIN
-- ===========================
-- All marks, even if student record missing
SELECT college_students.name, marks.subject, marks.score
FROM college_students
RIGHT JOIN marks
ON college_students.id = marks.student_id;

-- ===========================
-- 7️⃣ FULL OUTER JOIN (Simulated in MySQL)
-- ===========================
-- Shows all students and all marks
SELECT college_students.name, marks.subject, marks.score
FROM college_students
LEFT JOIN marks
ON college_students.id = marks.student_id

UNION

SELECT college_students.name, marks.subject, marks.score
FROM college_students
RIGHT JOIN marks
ON college_students.id = marks.student_id;

-- ===========================
-- 8️⃣ CROSS JOIN
-- ===========================
-- Example: Assign every student to every project
-- First, create projects table
CREATE TABLE projects (
    project_id INT PRIMARY KEY,
    project_name VARCHAR(50)
);

-- Insert projects
INSERT INTO projects (project_id, project_name) VALUES
(101, 'AI Chatbot'),
(102, 'Weather App'),
(103, 'Stock Predictor');

-- CROSS JOIN query
SELECT college_students.name, projects.project_name
FROM college_students
CROSS JOIN projects;

-- Optional: Pair every student with every subject in marks tabl