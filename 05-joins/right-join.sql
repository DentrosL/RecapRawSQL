-- RIGHT JOIN mantem todas as linhas da tabela a direita.
-- EXEMPLO: consultando todas as matriculas e os alunos correspondentes.
SELECT a.ra, a.nome, m.id_matricula, m.id_turma
FROM dbo.Aluno AS a
RIGHT JOIN dbo.Matricula AS m ON m.ra_aluno = a.ra;

-- SITUACAO: listar todas as turmas, inclusive as sem matriculas.
SELECT t.id_turma, t.nome AS turma, m.ra_aluno, m.nota
FROM dbo.Matricula AS m
RIGHT JOIN dbo.Turma AS t ON t.id_turma = m.id_turma;
