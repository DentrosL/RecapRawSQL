-- NUMERIC FUNCTIONS
-- As funções numéricas são usadas para realizar operações matemáticas em valores numéricos em consultas SQL. Elas permitem realizar cálculos como arredondamento, obtenção de valor absoluto, cálculo de potência, entre outras.
-- Exemplos de funções numéricas:
-- ROUND: Arredonda um valor numérico para um número especificado de casas decimais.
-- ABS: Retorna o valor absoluto de um número.
-- POWER: Calcula a potência de um número elevado a outro.
-- SQRT: Retorna a raiz quadrada de um número.

-- CAST: Converte um valor de um tipo de dado para outro, como de string para número ou de número para string.
-- CAST + DECIMAL: Converte um valor para o tipo de dado decimal, permitindo especificar a precisão e a escala do número.

-- Exemplo de uso das funções numéricas:
SELECT ROUND(valor, 2) AS valor_arredondado,
       ABS(valor) AS valor_absoluto,
       POWER(valor, 2) AS valor_ao_quadrado,
       SQRT(valor) AS raiz_quadrada_valor,
       CAST(valor AS DECIMAL(10, 2)) AS valor_decimal
FROM tabela_exemplo;

-- DIFERENÇA entre Round e Cast + Decimal:
-- ROUND: Arredonda um valor numérico para um número especificado de casas decimais. Por exemplo, ROUND(3.14159, 2) retornará 3.14060.
-- CAST + DECIMAL: Converte um valor para o tipo de dado decimal, permitindo especificar a precisão e a escala do número. Por exemplo, CAST(3.14159 AS DECIMAL(10, 2)) retornará 3.14, mas o valor será armazenado como um número decimal com precisão e escala definidas.