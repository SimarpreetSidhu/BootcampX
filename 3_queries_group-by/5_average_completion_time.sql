-- Get currently enrolled students' average assignment completion time.

-- Select the students name and average time from assignment submissions.
-- Order the results from greatest duration to least greatest duration.
-- A student will have a null end_date if they are currently enrolled

SELECT students.name as student_name, AVG(assignment_submissions.duration) as average_time
FROM assignment_submissions
JOIN students ON students.id = assignment_submissions.student_id
WHERE end_date IS NULL
GROUP BY student_name
ORDER BY average_time DESC;
