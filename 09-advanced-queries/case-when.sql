-- CASE WHEN retorna um valor conforme condicoes.
-- EXEMPLO: classificando os alunos por faixa etaria.
SELECT ra, nome, idade,
       CASE
           WHEN idade IS NULL THEN 'Idade nao informada'
           WHEN idade < 18 THEN 'Menor de idade'
           ELSE 'Maior de idade'
       END AS faixa_etaria
FROM dbo.Aluno;

-- Classifica notas das matriculas
-- SITUACAO: classificar matriculas conforme a nota.
SELECT ra_aluno, nota,
       CASE WHEN nota >= 7 THEN 'Aprovado'
            WHEN nota IS NULL THEN 'Sem nota'
            ELSE 'Em recuperacao' END AS situacao
FROM dbo.Matricula;
