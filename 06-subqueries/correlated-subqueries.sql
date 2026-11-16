-- Subconsulta correlacionada: consulta externa e interna compartilham m.id_turma.
-- EXEMPLO: consultando matriculas com nota acima da media da propria turma.
SELECT m.ra_aluno, m.id_turma, m.nota
FROM dbo.Matricula AS m
WHERE m.nota > (
    SELECT AVG(m2.nota) FROM dbo.Matricula AS m2
    WHERE m2.id_turma = m.id_turma
);

-- SITUACAO: consultar alunos que possuem nota acima da media geral.
SELECT a.ra, a.nome
FROM dbo.Aluno AS a
WHERE EXISTS (
    SELECT 1 FROM dbo.Matricula AS m
    WHERE m.ra_aluno = a.ra
      AND m.nota > (SELECT AVG(nota) FROM dbo.Matricula)
);
