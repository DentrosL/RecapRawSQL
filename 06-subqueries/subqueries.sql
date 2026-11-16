-- SUBQUERIES: consultas aninhadas em outra consulta.
-- EXEMPLO: selecionando alunos com nota acima da media geral.
SELECT a.ra, a.nome
FROM dbo.Aluno AS a
WHERE a.ra IN (
    SELECT m.ra_aluno
    FROM dbo.Matricula AS m
    WHERE m.nota > (SELECT AVG(nota) FROM dbo.Matricula)
);

-- SITUACAO: consultar matriculas com nota acima da media da turma.
SELECT m.ra_aluno, m.id_turma, m.nota
FROM dbo.Matricula AS m
WHERE m.nota > (
    SELECT AVG(m2.nota) FROM dbo.Matricula AS m2
    WHERE m2.id_turma = m.id_turma
);
