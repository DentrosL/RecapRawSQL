-- AGGREGATE FUNCTIONS
-- São funções que realizam cálculos em um conjunto de valores e retornam um único valor.
-- Exemplos de funções agregadas:
-- COUNT: Conta o número de linhas em um conjunto de resultados.
-- SUM: Calcula a soma de um conjunto de valores.
-- AVG: Calcula a média de um conjunto de valores.
-- MIN: Retorna o valor mínimo de um conjunto de valores.
-- MAX: Retorna o valor máximo de um conjunto de valores.

-- Exemplo de uso das funções agregadas:
-- EXEMPLO: calculando quantidade, soma, media, menor e maior nota.
SELECT COUNT(*) AS total_matriculas, SUM(nota) AS soma_notas,
       AVG(nota) AS media_notas, MIN(nota) AS menor_nota,
       MAX(nota) AS maior_nota
FROM dbo.Matricula;

-- SITUACAO: a secretaria deseja comparar matriculas com notas preenchidas.
SELECT COUNT(*) AS total_matriculas, COUNT(nota) AS matriculas_com_nota
FROM dbo.Matricula;
