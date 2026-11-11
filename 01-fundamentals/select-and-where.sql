-- SELECT
-- Utilizado para consultar dados de uma tabela.
-- SELECT * retorna todas as colunas.
-- SELECT coluna retorna apenas as colunas escolhidas.
-- WHERE permite filtrar os registros retornados.
-- AS permite renomear colunas no resultado da consulta.

-- EXEMPLO: selecionando todas as colunas
SELECT *
FROM dbo.Aluno;

-- EXEMPLO: selecionando colunas especificas
SELECT ra, nome, idade
FROM dbo.Aluno;

-- EXEMPLO: filtrando registros com WHERE
SELECT ra, nome, idade
FROM dbo.Aluno
WHERE idade >= 18;

-- EXEMPLO: renomeando colunas com AS
SELECT ra AS matricula, nome AS aluno, idade AS idade_aluno
FROM dbo.Aluno;

-- SITUACAO 1:
-- A secretaria precisa consultar o RA, nome e cidade de todos os alunos.
SELECT ra, nome, cidade
FROM dbo.Aluno;

-- SITUACAO 2:
-- A secretaria deseja consultar todos os estados cadastrados,
-- sem repetir os valores.
SELECT DISTINCT uf
FROM dbo.Aluno;

-- SITUACAO 3:
-- A secretaria deseja consultar todos os alunos maiores de idade.  
SELECT ra, nome, idade
FROM dbo.Aluno
WHERE idade >= 18;

-- SITUACAO 4:
-- A secretaria deseja consultar todos os alunos que moram em SP e sejam maiores de idade.
SELECT *
FROM dbo.Aluno
WHERE uf = 'SP'
AND idade >= 18;

-- SITUACAO 5:
-- A secretaria deseja consultar todos os alunos que moram em SP ou RJ e sejam maiores de idade, retornando o total de alunos.
SELECT *, COUNT(*) AS total_alunos
FROM dbo.Aluno
WHERE (uf = 'SP' OR uf = 'RJ')
AND idade >= 18;