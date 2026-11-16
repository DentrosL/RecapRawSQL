-- Transacao agrupa comandos para confirmar todos (COMMIT) ou desfazer (ROLLBACK).
-- EXEMPLO: atualizar nota dentro de transacao e desfazer a alteracao.
-- SITUACAO: testar uma alteracao sem deixa-la gravada usando ROLLBACK.
BEGIN TRANSACTION;

UPDATE dbo.Matricula
SET nota = nota + 0.5
WHERE id_matricula = 1;

-- Confira a alteracao antes de confirmar.
SELECT id_matricula, nota
FROM dbo.Matricula
WHERE id_matricula = 1;

-- Escolha COMMIT para confirmar ou ROLLBACK para desfazer.
ROLLBACK TRANSACTION;
