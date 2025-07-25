-- Get the average duration of assistance requests for each cohort.

-- Select the cohort's name and the average assistance request time.
-- Order the results from shortest average to longest.
SELECT cohorts.name as cohorts_name , AVG(assistance_requests.completed_at - assistance_requests.started_at) as average_assistance_request_time
FROM assistance_requests
JOIN students ON students.id = assistance_requests.student_id
JOIN cohorts ON cohorts.id = students.cohort_id
GROUP BY cohorts.name
ORDER BY AVG(assistance_requests.completed_at - assistance_requests.started_at) ASC;