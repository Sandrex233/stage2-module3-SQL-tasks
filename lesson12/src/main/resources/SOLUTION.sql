DELETE FROM student
WHERE id IN (
    SELECT id
    FROM student
    WHERE grade > 4
);

DELETE FROM student_subject
WHERE student_id IN (
    SELECT id
    FROM student
    WHERE grade > 4
);


DELETE FROM student
WHERE id IN (
    SELECT DISTINCT student_id
    FROM mark
    WHERE mark < 4
);

DELETE FROM student_subject
WHERE student_id IN (
    SELECT DISTINCT student_id
    FROM mark
    WHERE mark < 4
);

DELETE FROM mark
WHERE mark < 4;


DELETE FROM payment
WHERE type_id = (
    SELECT id
    FROM paymenttype
    WHERE name = 'Daily'
);

DELETE FROM paymenttype
WHERE name = 'Daily';


DELETE FROM mark
WHERE mark < 7;
