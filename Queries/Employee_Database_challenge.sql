-- 1) Retrieve the emp_no, first_name, and last_name columns from the Employees table.
SELECT emp_no, first_name, last_name 
FROM employees;

-- 2) Retrieve the title, from_date, and to_date columns from the Titles table.
SELECT title, from_date, to_date 
FROM titles;

-- 3) Create a new table using the INTO clause.
SELECT e.emp_no,
    e.first_name,
    e.last_name,
    ti.title,
    ti.from_date,
    ti.to_date
INTO retirement_titles
FROM employees as e
    INNER JOIN titles as ti
-- 4) Join both tables on the primary key.
        ON (e.emp_no = ti.emp_no)
-- 5) Filter the data on the birth_date column to retrieve the employees 
--    who were born between 1952 and 1955. Then, order by the employee number.
    WHERE (e.birth_date BETWEEN '1952-01-01' AND '1955-12-31')
    ORDER BY e.emp_no;

-- Creating unique titles table (Steps 8, 9, 10, 11, 12 and 13)
SELECT DISTINCT ON (emp_no) emp_no,
first_name,
last_name,
title

INTO unique_titles
FROM retirement_titles
WHERE (to_date = '9999-01-01')
ORDER BY emp_no, to_date DESC;

-- Create a query to retrieve the number of employees by their most recent job title who 
-- are about to retire
SELECT COUNT (title), title
INTO retiring_titles
FROM unique_titles
GROUP BY title
ORDER BY count DESC;


