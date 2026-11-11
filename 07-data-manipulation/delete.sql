-- DELETE FROM ... WHERE ...
-- O comando DELETE é usado para remover linhas de uma tabela com base em uma condição especificada na cláusula WHERE. Ele permite excluir uma ou mais linhas de uma tabela.
-- Sintaxe básica do DELETE:
-- DELETE FROM nome_da_tabela
-- WHERE condicao;

-- EXEMPLO: deletando um aluno específico da tabela Alunos
DELETE FROM dbo.Alunos
WHERE id_aluno = 1;