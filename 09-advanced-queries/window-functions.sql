-- Window functions calculam valores sobre um conjunto de linhas sem agrupa-las.
-- EXEMPLO: comparar nota individual com media e posicao na turma.
SELECT ra_aluno, id_turma, nota,
       AVG(nota) OVER (PARTITION BY id_turma) AS media_da_turma,
       RANK() OVER (PARTITION BY id_turma ORDER BY nota DESC) AS posicao_na_turma
FROM dbo.Matricula;

-- Total acumulado de matriculas por data.
-- SITUACAO: exibir o total acumulado de matriculas por data.
SELECT id_matricula, data_matricula,
       COUNT(*) OVER (ORDER BY data_matricula, id_matricula
                      ROWS BETWEEN UNBOUNDED PRECEDING AND CURRENT ROW) AS total_acumulado
FROM dbo.Matricula;
