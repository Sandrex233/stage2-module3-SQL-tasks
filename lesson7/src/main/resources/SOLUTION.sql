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

SELECT DISTINCT student.*
FROM student
         JOIN payment ON student.id = payment.student_id
WHERE payment.amount > 1000
ORDER BY student.birthday ASC;
