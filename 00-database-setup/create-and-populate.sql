DROP TABLE IF EXISTS dbo.Matricula;
DROP TABLE IF EXISTS dbo.Aluno;
DROP TABLE IF EXISTS dbo.Turma;

CREATE TABLE dbo.Aluno (
    ra VARCHAR(10) PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    idade INT,
    cidade VARCHAR(60),
    uf CHAR(2)
);

CREATE TABLE dbo.Turma (
    id_turma INT PRIMARY KEY,
    nome VARCHAR(80) NOT NULL,
    periodo VARCHAR(20),
    ano INT
);

CREATE TABLE dbo.Matricula (
    id_matricula INT IDENTITY(1,1) PRIMARY KEY,
    ra_aluno VARCHAR(10) NOT NULL,
    id_turma INT NOT NULL,
    data_matricula DATE NOT NULL,
    nota DECIMAL(5,2),

    CONSTRAINT FK_Matricula_Aluno
        FOREIGN KEY (ra_aluno)
        REFERENCES dbo.Aluno(ra),

    CONSTRAINT FK_Matricula_Turma
        FOREIGN KEY (id_turma)
        REFERENCES dbo.Turma(id_turma)
);

INSERT INTO dbo.Aluno (ra, nome, idade, cidade, uf)
VALUES
('2024001', 'Ana Souza', 20, 'Joinville', 'SC'),
('2024002', 'Bruno Lima', 22, 'Curitiba', 'PR'),
('2024003', 'Carla Mendes', 19, 'Florianopolis', 'SC'),
('2024004', 'Diego Alves', 24, 'Sao Paulo', 'SP'),
('2024005', 'Eduarda Costa', 21, 'Blumenau', 'SC');

INSERT INTO dbo.Turma (id_turma, nome, periodo, ano)
VALUES
(1, 'Banco de Dados', 'Noturno', 2026),
(2, 'Programacao Web', 'Matutino', 2026),
(3, 'Estrutura de Dados', 'Noturno', 2026),
(4, 'Engenharia de Software', 'Vespertino', 2026),
(5, 'Algoritmos', 'Matutino', 2026);

INSERT INTO dbo.Matricula
    (ra_aluno, id_turma, data_matricula, nota)
VALUES
('2024001', 1, '2026-02-10', 8.50),
('2024002', 1, '2026-02-11', 7.00),
('2024003', 2, '2026-02-12', 9.25),
('2024004', 3, '2026-02-13', 6.50),
('2024005', 5, '2026-02-14', 8.00);

SELECT * FROM dbo.Aluno;
SELECT * FROM dbo.Turma;
SELECT * FROM dbo.Matricula;
