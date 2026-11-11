-- IS NULL & IS NOT NULL
-- Serve para filtrar registros que possuem valores nulos ou não nulos.

-- EXEMPLO: selecionando nome de alunos que possuem idade nula
SELECT nome
FROM dbo.Aluno
WHERE idade IS NULL;

-- EXEMPLO: selecionando nome de alunos que possuem idade não nula
SELECT nome
FROM dbo.Aluno
WHERE idade IS NOT NULL;