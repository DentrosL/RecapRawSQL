-- FULL OUTER JOIN mantem todas as linhas das duas tabelas.
-- EXEMPLO: consultando alunos e matriculas, com ou sem correspondencia.
SELECT a.ra, a.nome, m.id_matricula, m.id_turma
FROM dbo.Aluno AS a
FULL OUTER JOIN dbo.Matricula AS m ON m.ra_aluno = a.ra;

-- SITUACAO: visualizar todas as turmas e matriculas.
SELECT t.id_turma, t.nome AS turma, m.id_matricula, m.ra_aluno, m.nota
FROM dbo.Turma AS t
FULL OUTER JOIN dbo.Matricula AS m ON m.id_turma = t.id_turma;
