-- =========================================
-- Projeto: Clínica Médica
-- Banco: SQL Server
-- Descrição:
-- Script acadêmico com criação de banco e tabela,
-- inserção de dados e uso de funções de string
-- =========================================

-- Criação do banco de dados
CREATE DATABASE atividade8;

-- Seleciona o banco para uso
USE atividade8;

-- =========================================
-- Criação da tabela MEDICOS
-- Armazena dados cadastrais dos médicos
-- =========================================
CREATE TABLE medicos (
    idMedico        INT IDENTITY PRIMARY KEY, -- Identificador único do médico
    nome            VARCHAR(40) NOT NULL,     -- Nome do médico
    sobrenome       VARCHAR(20) NOT NULL,     -- Sobrenome do médico
    inicias         VARCHAR(1) NOT NULL,      -- Inicial do nome
    cpf             VARCHAR(20) NULL,         -- CPF (opcional)
    especialidade   VARCHAR(50) NOT NULL,     -- Especialidade médica
    cidade          VARCHAR(30) NOT NULL,     -- Cidade de atuação
    telefone        VARCHAR(20) NULL,         -- Telefone de contato
    email           VARCHAR(50) NULL,         -- E-mail de contato
    salario         DECIMAL(10,2) NOT NULL    -- Salário
);

-- =========================================
-- Inserção de dados na tabela MEDICOS
-- =========================================
INSERT INTO medicos VALUES (' João ','augusto','J','12345678901','Cardiologia','Agudos',NULL,'joao.silva@hospital.com',2300);
INSERT INTO medicos VALUES ('Ana ','Ribeiro','A',NULL,'Ortopedia','Bauru','11988887777',NULL,900);
INSERT INTO medicos VALUES (' CARLOS ','Bueno','C','45678912300','Ortopedia','Lençois Paulista','11977776666','carlos.pereira@hospital.com',1900);
INSERT INTO medicos VALUES ('Maria ','Souza','M','78945612300','Pediatria','São Paulo',NULL,'mariaolivei@gmail.com',3200);
INSERT INTO medicos VALUES ('Paulo ','costa','P',NULL,'Dermatologia','Avaré',NULL,'paulo.costa@hospital.com',4000);
INSERT INTO medicos VALUES (' FERNANDA','Lima','F','65432198700','Cardiologia','Bauru','11944443333','fernanda.lima@hospital.com',3764);

-- =========================================
-- Consultas básicas
-- =========================================

-- Retorna todos os registros da tabela
SELECT * FROM medicos;

-- Retorna o nome em letras maiúsculas
SELECT UPPER(nome) FROM medicos;

-- Retorna o sobrenome em letras minúsculas
SELECT LOWER(sobrenome) FROM medicos;

-- =========================================
-- Atualizações e limpeza de dados
-- =========================================

-- Atualiza o sobrenome para letras maiúsculas
UPDATE medicos
SET sobrenome = UPPER(sobrenome); -- alteração definitiva

-- Lista os médicos ordenados pelo nome
SELECT * 
FROM medicos
ORDER BY nome;

-- Remove espaços em branco antes e depois do nome
UPDATE medicos
SET nome = TRIM(nome);

-- Retorna a primeira letra da especialidade
SELECT SUBSTRING(especialidade,1,1) AS 'iniciais da especialidade'
FROM medicos;

-- Altera o tamanho da coluna inicias
ALTER TABLE medicos
ALTER COLUMN inicias VARCHAR(5) NOT NULL;

-- Atualiza as iniciais com base na especialidade
UPDATE medicos
SET inicias = SUBSTRING(especialidade,1,4);

-- Exibe os dados atualizados
SELECT * FROM medicos;

-- =========================================
-- Exemplos de funções de string
-- =========================================

-- Exemplo da função REPLACE
SELECT REPLACE('carlos','s','s');

-- Substitui o nome 'carlos' por 'Ursolino' na tabela
UPDATE medicos
SET nome = REPLACE(nome,'carlos','Ursolino');

-- Substitui todo o sobrenome por 'Urso'
UPDATE medicos
SET sobrenome = REPLACE(sobrenome,sobrenome,'Urso');

SELECT * FROM medicos;

-- Exemplos adicionais de funções
SELECT UPPER(nome) FROM medicos;
SELECT LOWER(nome) FROM medicos;
SELECT LTRIM(RTRIM(nome)) FROM medicos;

-- Atualizações finais
UPDATE medicos SET inicias = SUBSTRING(especialidade,1,4);
UPDATE medicos SET sobrenome = REPLACE(sobrenome,sobrenome,'URSO');

-- Exemplo da função STUFF
SELECT STUFF('carlos',1,5,'Marcio');

