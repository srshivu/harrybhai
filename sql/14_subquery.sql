CREATE TABLE employees (
    emp_id INT PRIMARY KEY AUTO_INCREMENT,
    emp_name VARCHAR(100),
    department VARCHAR(50),
    position VARCHAR(50),
    salary DECIMAL(10,2),
    hire_date DATE,
    manager_id INT,
    city VARCHAR(50)
);

INSERT INTO employees (emp_name, department, position, salary, hire_date, manager_id, city)
VALUES
('Alice Johnson', 'IT', 'Software Engineer', 75000, '2021-02-10', 4, 'Bangalore'),
('Bob Smith', 'IT', 'System Analyst', 68000, '2022-06-15', 4, 'Bangalore'),
('Carol Davis', 'Finance', 'Accountant', 55000, '2020-09-20', 6, 'Mumbai'),
('David Wilson', 'IT', 'Project Manager', 90000, '2019-03-12', NULL, 'Bangalore'),
('Eva Brown', 'HR', 'HR Executive', 50000, '2023-03-18', 7, 'Pune'),
('Frank Taylor', 'Finance', 'Finance Manager', 95000, '2018-01-25', NULL, 'Mumbai'),
('Grace Lee', 'Sales', 'Sales Executive', 60000, '2021-07-30', 8, 'Delhi'),
('Henry Adams', 'Sales', 'Regional Manager', 85000, '2017-05-15', NULL, 'Delhi'),
('Isabel Clark', 'IT', 'DevOps Engineer', 78000, '2021-09-10', 4, 'Hyderabad'),
('Jack White', 'HR', 'Recruiter', 48000, '2022-10-01', 7, 'Pune');
SELECT * FROM EMPLOYEES;
-- Find employees earning above the average salary of their department
select emp_name , department from employees e where salary>(select avg(salary) from employees where department=e.department);
select * from employees where salary>20000;  -- showing the employees whose abouve the 2000