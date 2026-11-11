-- GROUP BY
-- o comando GROUP BY é usado em consultas SQL para agrupar linhas com valores iguais em colunas especificadas. Ele é frequentemente usado em conjunto com funções agregadas para calcular valores resumidos para cada grupo.

-- EXEMPLO: agrupando pelo id_turma
SELECT id_turma
FROM dbo.Matricula
GROUP BY id_turma;

-- EXEMPLO: agrupando pelo id_turma e contando o número de alunos em cada turma
SELECT id_turma, COUNT(*) AS total_alunos
FROM dbo.Matricula
GROUP BY id_turma;

-- EXEMPLO: agrupando pelo id_turma e calculando a média de nota dos alunos em cada turma e ordenando pelo resultado da média de nota em ordem crescente
SELECT id_turma, AVG(nota) AS media_nota
FROM dbo.Matricula
GROUP BY id_turma
ORDER BY media_nota ASC;

-- SITUACAO 1:
-- A secretaria deseja consultar o total de alunos EM CADA turma, ordenando pelo total de alunos em ordem decrescente.
SELECT id_turma, COUNT(*) AS total_alunos
FROM dbo.Matricula
GROUP BY id_turma
ORDER BY total_alunos DESC;

-- SITUACAO 2:
-- A secretaria deseja consultar a média de nota dos alunos EM CADA turma, ordenando pelo resultado da média de nota em ordem crescente e limitando o resultado a 5 primeiras turmas.
SELECT TOP(5) id_turma, AVG(nota) AS media_nota
FROM dbo.Matricula
GROUP BY id_turma
ORDER BY media_nota ASC;
-- ou
SELECT id_turma, AVG(nota) AS media_nota
FROM dbo.Matricula
GROUP BY id_turma
ORDER BY media_nota ASC
LIMIT 5;