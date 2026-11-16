-- ALTER TABLE modifica a estrutura de uma tabela existente.
-- EXEMPLO: adicionando uma coluna de email.
ALTER TABLE dbo.Aluno ADD email VARCHAR(150) NULL;
ALTER TABLE dbo.Aluno ADD CONSTRAINT UQ_Aluno_Email UNIQUE (email);
-- SITUACAO: ampliar o tamanho permitido para o email.
ALTER TABLE dbo.Aluno ALTER COLUMN email VARCHAR(200) NULL;
