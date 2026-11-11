-- ORDER BY
-- permite ordenar os registros retornados por uma ou mais colunas.
-- ASC e DESC definem a ordem crescente ou decrescente, respectivamente.

-- EXEMPLO: ordenando por uma coluna
SELECT ra, nome, idade
FROM dbo.Aluno
ORDER BY idade;

-- EXEMPLO: ordenando por mais de uma coluna
SELECT ra, nome, idade
FROM dbo.Aluno
ORDER BY idade, nome;

-- EXEMPLO: ordenando em ordem decrescente
SELECT * 
FROM dbo.Aluno
ORDER BY idade DESC;

-- EXEMPLO: ordenando em ordem crescente
SELECT * 
FROM dbo.Aluno
ORDER BY idade ASC;

-- SITUACAO 1:
-- A secretaria deseja consultar todos os alunos, ordenando por idade.
SELECT *
FROM dbo.Aluno
ORDER BY idade;

-- SITUACAO 2:
-- A secretaria deseja consultar todos os alunos, ordenando por idade e nome.
SELECT *
FROM dbo.Aluno
ORDER BY idade, nome;

-- SITUACAO 3:
-- A secretaria deseja consultar todos os alunos, ordenando por idade em ordem decrescente.
SELECT *
FROM dbo.Aluno
ORDER BY idade DESC;