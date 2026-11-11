-- STRING FUNCTIONS
-- As funções de string são usadas para manipular e processar valores de texto em consultas SQL. Elas permitem realizar operações como concatenação, extração de substrings, substituição de caracteres, conversão de maiúsculas/minúsculas, entre outras.
-- Exemplos de funções de string:
-- CONCAT: Concatena duas ou mais strings em uma única string.
-- SUBSTRING: Extrai uma parte de uma string com base em uma posição inicial e um comprimento especificado.
-- REPLACE: Substitui uma parte de uma string por outra string.
-- UPPER: Converte todos os caracteres de uma string para maiúsculas.
-- LOWER: Converte todos os caracteres de uma string para minúsculas.

-- Exemplo de uso das funções de string:
SELECT CONCAT(primeiro_nome, ' ', ultimo_nome) AS nome_completo,
       SUBSTRING(email, 1, 10) AS email_parcial,
       REPLACE(endereco, 'Rua', 'Av.') AS endereco_modificado,
       UPPER(cidade) AS cidade_maiuscula,
       LOWER(pais) AS pais_minusculo
FROM tabela_exemplo;