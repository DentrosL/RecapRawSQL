-- DELETE remove linhas. Chaves estrangeiras podem impedir a exclusao.
-- Exclua primeiro a matricula dependente.
-- EXEMPLO: excluir uma matricula para liberar a chave estrangeira.
DELETE FROM dbo.Matricula
WHERE id_matricula = 5;

-- Agora o aluno sem matriculas pode ser removido.
-- SITUACAO: excluir o aluno que ficou sem matriculas.
DELETE FROM dbo.Aluno
WHERE ra = '2024005';
