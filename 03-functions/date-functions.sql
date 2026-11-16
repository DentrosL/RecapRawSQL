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
-- EXEMPLO: consultando partes e calculando datas relativas a matricula.
SELECT GETDATE() AS data_hora_atual,
       YEAR(data_matricula) AS ano_matricula,
       MONTH(data_matricula) AS mes_matricula,
       DAY(data_matricula) AS dia_matricula,
       DATEADD(YEAR, 1, data_matricula) AS data_mais_um_ano,
       DATEADD(MONTH, -1, data_matricula) AS data_menos_um_mes
FROM dbo.Matricula;

-- SITUACAO: a secretaria deseja calcular quantos dias se passaram desde cada matricula.
SELECT id_matricula, DATEDIFF(DAY, data_matricula, CAST(GETDATE() AS DATE)) AS dias_desde_matricula
FROM dbo.Matricula;
