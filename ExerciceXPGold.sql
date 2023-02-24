/*
	EXERCICEXP + CONTINUED"

	SELECT
	For the following questions, you have to fetch the first_names, last_names and birth_dates of the students.
*/

-- 1) Fetch the first four students. You have to order the four students alphabetically by last_name.
SELECT students.first_name, students.last_name, students.birth_date
FROM students
ORDER BY students.last_name ASC
LIMIT 4

-- 2) Fetch the details of the youngest student.
SELECT students.first_name, students.last_name, students.birth_date
FROM students
WHERE students.birth_date = (SELECT MAX(students.birth_date) FROM students)

-- 3) Fetch three students skipping the first two students.
SELECT students.first_name, students.last_name, students.birth_date
FROM students
LIMIT 3 OFFSET 2
