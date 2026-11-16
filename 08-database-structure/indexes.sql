-- Indices podem acelerar buscas e joins, com custo adicional em escritas.
-- EXEMPLO: criando indice para buscas pela turma.
CREATE INDEX IX_Matricula_IdTurma ON dbo.Matricula (id_turma);
CREATE INDEX IX_Aluno_UF_Idade ON dbo.Aluno (uf, idade) INCLUDE (nome);

-- SITUACAO: consultar os indices existentes em Matricula.
SELECT name, type_desc
FROM sys.indexes
WHERE object_id = OBJECT_ID('dbo.Matricula');
