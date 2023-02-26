SELECT id, name
FROM student
WHERE id IN (
    SELECT student_id
    FROM mark
    GROUP BY student_id
    HAVING AVG(mark) > 8
);

SELECT id, name
FROM student
WHERE id IN (
    SELECT student_id
    FROM mark
    GROUP BY student_id
    HAVING MIN(mark) > 7
);

SELECT s.id, s.name
FROM student s
         INNER JOIN (
    SELECT student_id, COUNT(*) as num_payments
    FROM payment
    WHERE YEAR(payment_date) = 2019
    GROUP BY student_id
    HAVING COUNT(*) > 2
) p ON s.id = p.student_id;
