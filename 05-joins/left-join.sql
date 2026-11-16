-- LEFT JOIN mantem todas as linhas da tabela a esquerda.
-- Alunos sem matricula aparecem com colunas de Matricula nulas.
-- EXEMPLO: consultando todos os alunos, inclusive sem matricula.
SELECT a.ra, a.nome, m.id_matricula, m.id_turma
FROM dbo.Aluno AS a
LEFT JOIN dbo.Matricula AS m ON m.ra_aluno = a.ra;

-- SITUACAO: listar todas as turmas, mesmo sem matriculados.
SELECT t.id_turma, t.nome AS turma, m.ra_aluno, m.nota
FROM dbo.Turma AS t
LEFT JOIN dbo.Matricula AS m ON m.id_turma = t.id_turma;
