-- UPDATE ... SET ... WHERE
-- O comando UPDATE é usado para modificar os dados existentes em uma tabela. Ele permite atualizar uma ou mais colunas de uma ou mais linhas, com base em uma condição especificada na cláusula WHERE.
-- Sintaxe básica do UPDATE:
-- UPDATE nome_da_tabela
-- SET coluna1 = valor1, coluna2 = valor2, ...
-- WHERE condicao;

-- EXEMPLO: atualizando o email de um aluno específico na tabela Alunos
UPDATE dbo.Alunos
SET idade = 21
WHERE id_aluno = 1;

-- EXEMPLO: atualizando o email de todos os alunos com idade maior que 20 na tabela Alunos
UPDATE dbo.Alunos
SET email = 'novo.email@example.com'
WHERE idade > 20;