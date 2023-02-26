SELECT birthday
FROM student
ORDER BY birthday DESC LIMIT 1;

SELECT payment_date
FROM payment
ORDER BY payment_date ASC LIMIT 1;

SELECT AVG(mark)
FROM mark
WHERE subject_id = (SELECT id FROM subject WHERE name = 'Math');

SELECT MIN(amount)
FROM payment
WHERE type_id = (SELECT id FROM paymenttype WHERE name = 'WEEKLY');

