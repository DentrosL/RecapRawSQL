-- SELF JOIN relaciona uma tabela com ela mesma usando aliases.
-- EXEMPLO: pares de alunos diferentes que moram na mesma cidade.
SELECT a.nome AS aluno_1, b.nome AS aluno_2, a.cidade
FROM dbo.Aluno AS a
INNER JOIN dbo.Aluno AS b ON a.cidade = b.cidade AND a.ra < b.ra
WHERE a.cidade IS NOT NULL;

-- SITUACAO: encontrar alunos diferentes que moram no mesmo estado.
SELECT a.nome AS aluno_1, b.nome AS aluno_2, a.uf
FROM dbo.Aluno AS a
INNER JOIN dbo.Aluno AS b ON a.uf = b.uf AND a.ra < b.ra
WHERE a.uf IS NOT NULL;
