-- Constraints garantem regras para os dados.
-- EXEMPLO: criando tabela com PRIMARY KEY, UNIQUE, CHECK e DEFAULT.
-- SITUACAO: codigo deve ser unico e quantidade nao pode ser negativa.
CREATE TABLE dbo.ExemploRestricoes (
    id INT IDENTITY(1,1) PRIMARY KEY,
    codigo VARCHAR(20) NOT NULL UNIQUE,
    descricao VARCHAR(100) NOT NULL,
    quantidade INT NOT NULL CHECK (quantidade >= 0),
    ativo BIT NOT NULL DEFAULT 1
);

-- A tabela Matricula demonstra FOREIGN KEY em create-and-populate.sql.
