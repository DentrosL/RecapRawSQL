-- MERGE insere ou atualiza linhas conforme correspondencia na origem.
-- EXEMPLO: atualizar uma turma existente ou inserir uma nova turma.
-- SITUACAO: cadastrar ou atualizar as turmas informadas pela secretaria.
MERGE dbo.Turma AS destino
USING (VALUES
    (1, 'Banco de Dados', 'Noturno', 2026),
    (6, 'Introducao a SQL', 'Matutino', 2026)
) AS origem (id_turma, nome, periodo, ano)
ON destino.id_turma = origem.id_turma
WHEN MATCHED THEN
    UPDATE SET nome = origem.nome, periodo = origem.periodo, ano = origem.ano
WHEN NOT MATCHED BY TARGET THEN
    INSERT (id_turma, nome, periodo, ano)
    VALUES (origem.id_turma, origem.nome, origem.periodo, origem.ano);
