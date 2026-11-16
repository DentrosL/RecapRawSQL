-- DROP TABLE remove uma tabela; remova dependencias antes da tabela referenciada.
-- EXEMPLO: removendo a tabela de exemplo, se ela existir.
-- SITUACAO: remover uma tabela sem gerar erro se ela nao existir.
DROP TABLE IF EXISTS dbo.ExemploRestricoes;

-- Exemplo: para remover Matricula do esquema principal:
-- DROP TABLE IF EXISTS dbo.Matricula;

