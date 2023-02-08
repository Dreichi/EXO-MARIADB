-- Exo 4
-- Requêtes avec jointure « many to one » et « one to many »

-- Exo 4.1
-- Listez tous les students avec leurs projects
-- Note : les students sans projets doivent aussi apparaître dans les résultats

SELECT *
FROM student s
LEFT JOIN project p ON s.id = p.student_id;

-- Exo 4.2
-- Listez le student dont l'id est `2` avec son project

SELECT *
FROM student s
LEFT JOIN project p ON s.id = p.student_id
WHERE s.id = 2;

-- Exo 4.3
-- Listez tous les projects avec leurs students
-- Note : les projets sans studets ne doivent pas apparaître dans les résultats

SELECT *
FROM student s
RIGHT JOIN project p ON s.id = p.student_id;

-- Exo 4.4
-- Listez le project dont l'id est `3` avec ses students

SELECT *
FROM student s
RIGHT JOIN project p ON s.id = p.student_id
WHERE p.id = 3;
