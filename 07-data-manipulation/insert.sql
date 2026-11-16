-- INSERT INTO adiciona novas linhas a uma tabela.
-- RAs exclusivos permitem executar novamente apenas com outros valores.
-- EXEMPLO: inserindo um aluno.
INSERT INTO dbo.Aluno (ra, nome, idade, cidade, uf)
VALUES ('2024991', 'Joao Silva', 20, 'Sao Paulo', 'SP');

-- Insercao de varias linhas
-- SITUACAO: cadastrar tres alunos de uma vez.
INSERT INTO dbo.Aluno (ra, nome, idade, cidade, uf)
VALUES
('2024992', 'Maria Souza', 22, 'Curitiba', 'PR'),
('2024993', 'Carlos Oliveira', 19, 'Joinville', 'SC'),
('2024994', 'Ana Costa', 21, 'Blumenau', 'SC');
