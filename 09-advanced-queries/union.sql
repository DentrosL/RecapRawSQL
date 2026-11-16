-- UNION combina resultados compativeis e remove duplicatas.
-- EXEMPLO: combinar cidades e estados sem repetir valores.
SELECT cidade AS localidade FROM dbo.Aluno WHERE cidade IS NOT NULL
UNION
SELECT uf FROM dbo.Aluno WHERE uf IS NOT NULL;

-- UNION ALL preserva duplicatas.
-- SITUACAO: listar os estados mantendo duplicatas com UNION ALL.
SELECT uf AS estado FROM dbo.Aluno WHERE uf IS NOT NULL
UNION ALL
SELECT uf FROM dbo.Aluno WHERE uf IS NOT NULL;
