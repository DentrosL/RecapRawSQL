-- INSERT INTO
-- O comando INSERT INTO é usado para inserir novos registros em uma tabela existente no banco de dados. Ele permite adicionar uma ou mais linhas de dados, especificando os valores para cada coluna da tabela.
-- Sintaxe básica do INSERT INTO:
-- INSERT INTO nome_da_tabela (coluna1, coluna2, coluna3, ...)
-- VALUES (valor1, valor2, valor3, ...);

-- EXEMPLO: inserindo um novo registro na tabela Alunos
INSERT INTO Alunos (id_aluno, nome, idade, email)
VALUES (1, 'João Silva', 20, 'joao.silva@example');

-- EXEMPLO: inserindo múltiplos registros na tabela Alunos
INSERT INTO Alunos (id_aluno, nome, idade, email)
VALUES 
(2, 'Maria Souza', 22, 'maria.souza@example'),
(3, 'Carlos Oliveira', 19, 'carlos.oliveira@example'),
(4, 'Ana Costa', 21, 'ana.costa@example');