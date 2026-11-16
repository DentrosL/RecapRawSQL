-- LIKE filtra textos por padrao: % representa zero ou mais caracteres;
-- _ representa exatamente um caractere.

-- Nomes que comecam com A
-- EXEMPLO: selecionando nomes que comecam com A.
SELECT ra, nome FROM dbo.Aluno WHERE nome LIKE 'A%';

-- Cidades que terminam com a
-- EXEMPLO: selecionando cidades que terminam com a.
SELECT nome, cidade FROM dbo.Aluno WHERE cidade LIKE '%a';

-- Alunos cujo nome contem Souza
-- SITUACAO 1: a secretaria deseja consultar nomes que contenham Souza.
SELECT ra, nome FROM dbo.Aluno WHERE nome LIKE '%Souza%';

-- Alunos cujo RA tem exatamente sete caracteres
-- SITUACAO 2: a secretaria deseja consultar alunos cujo RA tenha sete caracteres.
SELECT ra, nome FROM dbo.Aluno WHERE ra LIKE '_______';
