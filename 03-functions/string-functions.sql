-- STRING FUNCTIONS
-- As funções de string são usadas para manipular e processar valores de texto em consultas SQL. Elas permitem realizar operações como concatenação, extração de substrings, substituição de caracteres, conversão de maiúsculas/minúsculas, entre outras.
-- Exemplos de funções de string:
-- CONCAT: Concatena duas ou mais strings em uma única string.
-- SUBSTRING: Extrai uma parte de uma string com base em uma posição inicial e um comprimento especificado.
-- REPLACE: Substitui uma parte de uma string por outra string.
-- UPPER: Converte todos os caracteres de uma string para maiúsculas.
-- LOWER: Converte todos os caracteres de uma string para minúsculas.

-- Exemplo de uso das funções de string:
-- EXEMPLO: formatando e transformando textos dos dados dos alunos.
SELECT CONCAT(nome, ' - ', cidade, '/', uf) AS aluno_localidade,
       SUBSTRING(nome, 1, 5) AS inicio_nome,
       REPLACE(cidade, 'a', 'A') AS cidade_modificada,
       UPPER(cidade) AS cidade_maiuscula,
       LOWER(nome) AS nome_minusculo,
       LEN(nome) AS quantidade_caracteres
FROM dbo.Aluno;

-- SITUACAO: a secretaria deseja consultar os nomes em letras maiusculas.
SELECT ra, UPPER(nome) AS nome_maiusculo
FROM dbo.Aluno;
