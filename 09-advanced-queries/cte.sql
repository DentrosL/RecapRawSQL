-- CTE (Common Table Expression) nomeia um resultado temporario da consulta.
-- EXEMPLO: calcular a media por turma usando uma CTE.
-- SITUACAO: a secretaria deseja ordenar as turmas pela media de nota.
WITH MediaPorTurma AS (
    SELECT id_turma, AVG(nota) AS media_nota
    FROM dbo.Matricula
    GROUP BY id_turma
)
SELECT t.id_turma, t.nome AS turma, m.media_nota
FROM MediaPorTurma AS m
INNER JOIN dbo.Turma AS t ON t.id_turma = m.id_turma
ORDER BY m.media_nota DESC;
