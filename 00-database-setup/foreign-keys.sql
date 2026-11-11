-- FOREIGN KEY (CHAVE ESTRANGEIRA)
-- Serve para relacionar tabelas e garantir que um registro
-- referenciado realmente exista na tabela de origem.

-- A FK normalmente referencia uma PRIMARY KEY de outra tabela.
-- Uma tabela pode possuir várias FKs.

-- EXEMPLO: definindo FKs durante a criacao da tabela
CREATE TABLE dbo.Matricula (
    id_matricula INT IDENTITY(1,1) PRIMARY KEY,
    ra_aluno VARCHAR(10) NOT NULL,
    id_turma INT NOT NULL,

    CONSTRAINT FK_Matricula_Aluno
        FOREIGN KEY (ra_aluno)
        REFERENCES dbo.Aluno(ra),

    CONSTRAINT FK_Matricula_Turma
        FOREIGN KEY (id_turma)
        REFERENCES dbo.Turma(id_turma)
);

-- EXEMPLO: adicionando uma FK em uma tabela existente
ALTER TABLE dbo.Matricula
ADD CONSTRAINT FK_Matricula_Aluno
FOREIGN KEY (ra_aluno)
REFERENCES dbo.Aluno(ra);

-- SITUACAO 1:
-- Uma matricula tenta referenciar um aluno que nao existe.
-- O SQL Server rejeita a insercao por violacao da FK.
INSERT INTO dbo.Matricula (ra_aluno, id_turma, data_matricula, nota)
VALUES ('9999999', 1, '2026-03-01', 8.00);


-- SITUACAO 2:
-- Uma turma possui matriculas vinculadas.
-- Tentar excluir essa turma pode ser impedido pela FK.
DELETE FROM dbo.Turma
WHERE id_turma = 1;