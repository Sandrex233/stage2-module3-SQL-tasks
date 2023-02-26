SELECT *
FROM subject
WHERE grade > (SELECT AVG(grade) FROM subject)

SELECT id, name
FROM student
WHERE id IN (SELECT student_id
             FROM payment
             GROUP BY student_id
             HAVING SUM(amount) < (SELECT AVG(amount) FROM payment))
