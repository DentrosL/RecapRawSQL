-- IN filtra registros cujo valor aparece em uma lista.

-- RAs de alunos com idade 18, 20 ou 22 anos
-- EXEMPLO: selecionando alunos com idade 18, 20 ou 22 anos.
SELECT ra, nome, idade
FROM dbo.Aluno
WHERE idade IN (18, 20, 22);

-- Alunos que moram em SC ou SP
-- EXEMPLO: selecionando alunos que moram em SC ou SP.
SELECT ra, nome, uf
FROM dbo.Aluno
WHERE uf IN ('SC', 'SP');

-- SITUACAO 1:
-- SITUACAO: a secretaria deseja consultar alunos de Curitiba ou Joinville.
SELECT ra, nome, cidade
FROM dbo.Aluno
WHERE cidade IN ('Curitiba', 'Joinville');
