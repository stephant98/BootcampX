SELECT teachers.name, students.name, assignments.name, (assistance_requests.completed_at - assistance_requests.started_at) as duration
FROM assistance_requests
JOIN teachers ON teacher_id = teachers.id
JOIN students ON assistance_requests.student_id = students.id
JOIN assignments ON assistance_requests.assignment_id = assignments.id
ORDER BY duration;