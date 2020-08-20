SELECT DISTINCT teachers.name as teacher, cohorts.name as cohort, count(assistance_requests.*)
FROM teachers
JOIN assistance_requests ON teacher_id = teachers.id
JOIN students ON student_id = students.id
JOIN cohorts ON cohort_id = cohorts.id
group by teacher, cohort
having cohorts.name = 'JUL02'
ORDER BY teacher;