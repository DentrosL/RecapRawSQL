-- AGGREGATE FUNCTIONS
-- São funções que realizam cálculos em um conjunto de valores e retornam um único valor.
-- Exemplos de funções agregadas:
-- COUNT: Conta o número de linhas em um conjunto de resultados.
-- SUM: Calcula a soma de um conjunto de valores.
-- AVG: Calcula a média de um conjunto de valores.
-- MIN: Retorna o valor mínimo de um conjunto de valores.
-- MAX: Retorna o valor máximo de um conjunto de valores.

-- Exemplo de uso das funções agregadas:
SELECT COUNT(*) AS total_linhas_consulta,
        SUM(valor) AS soma_valores,
        AVG(valor) AS media_valores,
        MIN(valor) AS valor_minimo,
        MAX(valor) AS valor_maximo
FROM tabela_exemplo;