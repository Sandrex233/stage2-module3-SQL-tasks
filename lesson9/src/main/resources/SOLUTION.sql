SELECT s.id, s.name
FROM student s
         INNER JOIN (SELECT student_id, AVG(mark) AS avg_mark FROM mark WHERE subject_id = 2 GROUP BY student_id) m
                    ON s.id = m.student_id
WHERE m.avg_mark > 8;

SELECT s.id, s.name
FROM student s
         INNER JOIN (SELECT student_id, MIN(mark) AS min_mark FROM mark GROUP BY student_id) m
                    ON s.id = m.student_id
WHERE m.min_mark > 7;

SELECT s.id, s.name
FROM student s
         INNER JOIN (SELECT student_id, COUNT(*) AS num_payments FROM payment WHERE YEAR(payment_date) = 2019 GROUP BY student_id) p
                    ON s.id = p.student_id
WHERE p.num_payments > 2;
