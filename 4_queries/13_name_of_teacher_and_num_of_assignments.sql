-- We need to know which teachers actually assisted students during any cohort, and how many assistances they did for that cohort.
-- Perform the same query as before, but include the number of assistances as well.
SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests) as total_assistances
FROM teachers
JOIN assistance_requests On teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN cohorts ON cohorts.id = students.cohort_id
WHERE cohorts.name = 'JUL02'
GROUP BY teachers.name, cohorts.name
ORDER BY teacher;
