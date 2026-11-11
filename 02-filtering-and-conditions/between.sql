-- BETWEEN ... AND ...
-- Serve para filtrar registros dentro de um intervalo de valores.

-- EXEMPLO: selecionando ra de alunos com idade entre 18 e 30 anos
SELECT ra
FROM dbo.Aluno
WHERE idade BETWEEN 18 AND 30;

-- SITUACAO 1:
-- A secretaria deseja consultar todos os alunos com idade entre 18 e 30 anos e retornar o total de alunos.
SELECT *, COUNT(*) AS total_alunos
FROM dbo.Aluno
WHERE idade BETWEEN 18 AND 30;

-- SITUACAO 2:
-- A secretaria deseja consultar todos os alunos com idade entre 18 e 20 anos, ordenando por idade e nome, e retornar o total de alunos.
SELECT *, COUNT(*) AS total_alunos
FROM dbo.Aluno
WHERE idade BETWEEN 18 AND 20
ORDER BY idade, nome;