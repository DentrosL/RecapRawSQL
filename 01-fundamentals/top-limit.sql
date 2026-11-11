-- TOP(n)
-- Serve para limitar a quantidade de registros retornados.

-- EXEMPLO: selecionando os 5 primeiros registros
SELECT TOP(5) *
FROM dbo.Aluno;

-- SITUACAO 1:
-- A secretaria deseja consultar os 10 primeiros alunos cadastrados.
SELECT TOP(10) *
FROM dbo.Aluno;

-- SITUACAO 2:
-- A secretaria deseja consultar os 5 primeiros alunos cadastrados, ordenando por idade entre 18 e 30 anos.
SELECT TOP(5) *
FROM dbo.Aluno
WHERE idade BETWEEN 18 AND 30
ORDER BY idade;