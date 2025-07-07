-- Get the total number of assignment submissions for each cohort.

-- Select the cohort name and total submissions.
-- Order the results from greatest to least submissions

SELECT cohorts.name as cohort_name, count(assignment_submissions.*) as total_submissions
FROM cohorts
JOIN students ON students.cohort_id = cohorts.id
JOIN assignment_submissions ON assignment_submissions.student_id = students.id
GROUP BY cohort_name
ORDER BY total_submissions DESC;