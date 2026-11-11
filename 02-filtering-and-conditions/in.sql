-- IN
-- O operador IN é utilizado para filtrar registros que possuem um valor específico dentro de uma lista de valores.

-- EXEMPLO: selecionando ra de alunos que possuem idade 18, 20 ou 22 anos
SELECT ra
FROM dbo.Aluno
WHERE idade IN (18, 20, 22);

-- ... 