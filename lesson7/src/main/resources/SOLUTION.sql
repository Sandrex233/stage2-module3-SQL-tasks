SELECT *
FROM mark
WHERE mark > 6
ORDER BY mark DESC;

SELECT *
FROM payment
WHERE amount < 300
ORDER BY amount ASC;

SELECT *
FROM paymenttype
ORDER BY name ASC;

SELECT *
FROM student
ORDER BY name DESC;

SELECT DISTINCT s.id, s.name, s.birthday
FROM student s
         INNER JOIN payment p ON s.id = p.student_id
WHERE p.amount > 1000
ORDER BY s.birthday ASC;