-- UPDATE altera linhas existentes. Use WHERE para limitar as linhas afetadas.
-- EXEMPLO: atualizar a idade de um aluno especifico.
UPDATE dbo.Aluno
SET idade = 21
WHERE ra = '2024001';

-- Atualizando mais de uma coluna para um registro especifico
-- SITUACAO: corrigir cidade e estado de um aluno.
UPDATE dbo.Aluno
SET cidade = 'Sao Paulo', uf = 'SP'
WHERE ra = '2024002';
