-- DISTINCT
-- Serve para remover valores duplicados do resultado de uma consulta.

-- EXEMPLO: selecionando todos os estados cadastrados, sem repetir os valores.
SELECT DISTINCT uf
FROM dbo.Aluno;

-- SITUACAO 1:
-- A secretaria deseja consultar todos os estados cadastrados, SEM repetir os valores e ordenar por ordem alfabética.
SELECT DISTINCT uf
FROM dbo.Aluno
ORDER BY uf ASC;

-- SITUACAO 2:
-- A secretaria deseja consultar todos os estados cadastrados, SEM repetir os valores e ordenar por ordem alfabética decrescente, mas sem pegar os valores nulos.
SELECT DISTINCT uf
FROM dbo.Aluno
WHERE uf IS NOT NULL
ORDER BY uf DESC;