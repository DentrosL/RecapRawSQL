-- EXISTS verifica se a subconsulta retorna ao menos uma linha.
-- EXEMPLO: consultando alunos que possuem matricula.
SELECT a.ra, a.nome
FROM dbo.Aluno AS a
WHERE EXISTS (
    SELECT 1 FROM dbo.Matricula AS m WHERE m.ra_aluno = a.ra
);

-- SITUACAO: consultar alunos que ainda nao possuem matricula.
SELECT a.ra, a.nome
FROM dbo.Aluno AS a
WHERE NOT EXISTS (
    SELECT 1 FROM dbo.Matricula AS m WHERE m.ra_aluno = a.ra
);
