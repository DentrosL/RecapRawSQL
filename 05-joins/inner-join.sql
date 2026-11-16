-- INNER JOIN retorna somente linhas com correspondencia nas duas tabelas.
-- EXEMPLO: consultando matriculas com os dados do aluno e da turma.
SELECT m.id_matricula, a.ra, a.nome, t.nome AS turma, m.nota
FROM dbo.Matricula AS m
INNER JOIN dbo.Aluno AS a ON a.ra = m.ra_aluno
INNER JOIN dbo.Turma AS t ON t.id_turma = m.id_turma;
