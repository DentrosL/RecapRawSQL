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
-- EXEMPLO: aplicando funcoes numericas sobre as notas das matriculas.
SELECT ROUND(nota, 1) AS nota_arredondada,
       ABS(nota - 7) AS distancia_da_media,
       POWER(nota, 2) AS nota_ao_quadrado,
       SQRT(nota) AS raiz_quadrada_nota,
       CAST(nota AS DECIMAL(10, 2)) AS nota_decimal
FROM dbo.Matricula
WHERE nota >= 0;

-- SITUACAO: a secretaria deseja exibir as notas arredondadas para uma casa decimal.
SELECT id_matricula, ROUND(nota, 1) AS nota_arredondada
FROM dbo.Matricula;

-- DIFERENÇA entre Round e Cast + Decimal:
-- ROUND: Arredonda um valor numérico para um número especificado de casas decimais. Por exemplo, ROUND(3.14159, 2) retornará 3.14060.
-- CAST + DECIMAL: Converte um valor para o tipo de dado decimal, permitindo especificar a precisão e a escala do número. Por exemplo, CAST(3.14159 AS DECIMAL(10, 2)) retornará 3.14, mas o valor será armazenado como um número decimal com precisão e escala definidas.
