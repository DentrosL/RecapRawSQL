-- CREATE TABLE cria uma tabela com colunas e restricoes.
-- EXEMPLO: criando uma tabela Curso com chave primaria e restricoes.
-- SITUACAO: a instituicao precisa armazenar cursos e suas cargas horarias.
CREATE TABLE dbo.Curso (
    id_curso INT IDENTITY(1,1) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    carga_horaria INT NOT NULL CHECK (carga_horaria > 0),
    ativo BIT NOT NULL DEFAULT 1
);
