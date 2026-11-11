-- OPERATORS
-- Serve para comparar valores e filtrar registros.
-- =, !=, >, <, >=, <=
-- AND, OR, NOT

-- EXEMPLO: selecionando ra de alunos com idade IGUAL a 20 anos
SELECT ra
FROM dbo.Aluno
WHERE idade = 20;

-- EXEMPLO: selecionando ra de alunos com idade DIFERENTE de 20 anos
SELECT ra
FROM dbo.Aluno
WHERE idade != 20;

-- EXEMPLO: selecionando ra de alunos com idade MAIOR que 18 anos
SELECT ra
FROM dbo.Aluno
WHERE idade > 18;

-- EXEMPLO: selecionando ra de alunos com idade MENOR que 30 anos
SELECT ra
FROM dbo.Aluno
WHERE idade < 30;

-- EXEMPLO: selecionando ra de alunos com idade MAIOR ou IGUAL a 18 anos
SELECT ra
FROM dbo.Aluno
WHERE idade >= 18;

-- EXEMPLO: selecionando ra de alunos com idade MENOR ou IGUAL a 30 anos
SELECT ra
FROM dbo.Aluno
WHERE idade <= 30;