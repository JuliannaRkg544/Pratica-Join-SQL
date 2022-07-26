--PRATICA SQL

--Atividade 1

SELECT u.id, u.name, c.name AS city FROM users u
JOIN cities c ON u."cityId" = c.id
WHERE c.name = 'Rio de Janeiro';

--Atividade 2

SELECT t.id, u1.name AS writer, u2.name AS recipient, message FROM testimonials t
JOIN users u1 ON t."writerId" = u1.id
JOIN users u2 ON t."recipientId" = u2.id;


--Atividade 3

SELECT u.id AS id, u.name AS name, c.name AS course, s.name AS school, e."endDate" as "endDate"
FROM educations e
JOIN users u ON e."userId" = u.id
JOIN courses c ON e."courseId" = c.id
JOIN schools s ON e."schoolId" = s.id
WHERE u.id = 30;

