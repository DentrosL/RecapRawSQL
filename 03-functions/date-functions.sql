-- DATE FUNCTIONS
-- As funções de data são usadas para manipular e processar valores de data e hora em consultas SQL. Elas permitem realizar operações como extração de partes da data, cálculo de diferenças entre datas, formatação de datas, entre outras.
-- Exemplos de funções de data:
-- CURRENT_DATE: Retorna a data atual do sistema.
-- EXTRACT: Extrai uma parte específica de uma data, como ano, mês ou dia.
-- DATE_ADD: Adiciona um intervalo de tempo a uma data.
-- DATE_SUB: Subtrai um intervalo de tempo de uma data.

-- YEAR: Retorna o ano de uma data.
-- MONTH: Retorna o mês de uma data.
-- DAY: Retorna o dia de uma data.

-- Exemplo de uso das funções de data:
SELECT CURRENT_DATE AS data_atual,
       EXTRACT(YEAR FROM data_nascimento) AS ano_nascimento,
       EXTRACT(MONTH FROM data_nascimento) AS mes_nascimento,
       EXTRACT(DAY FROM data_nascimento) AS dia_nascimento,
       DATE_ADD(data_nascimento, INTERVAL 1 YEAR) AS data_mais_um_ano,
       DATE_SUB(data_nascimento, INTERVAL 1 MONTH) AS data_menos_um_mes
FROM tabela_exemplo;