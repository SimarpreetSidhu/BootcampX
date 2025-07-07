-- Get all cohorts with 18 or more students.

-- Select the cohort name and the total students.
-- Order by total students from smallest to greatest.

SELECT cohorts.name, count(students.name) as total_students
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
GROUP BY cohorts.name
HAVING count(students.name) >=18
ORDER BY total_students ASC;