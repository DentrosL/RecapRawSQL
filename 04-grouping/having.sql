-- HAVING
-- o comando HAVING é usado em consultas SQL para filtrar os resultados de uma consulta que utiliza o GROUP BY. Ele permite aplicar condições aos grupos de resultados, semelhante ao WHERE, mas para grupos.

-- EXEMPLO: agrupando pelo id_turma e filtrando para mostrar apenas turmas com média de nota maior que 7
SELECT id_turma, AVG(nota) AS media_nota
FROM dbo.Matricula
Group By id_turma
HAVING AVG(nota) > 7;