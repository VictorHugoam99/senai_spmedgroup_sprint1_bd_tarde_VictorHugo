CREATE DATABASE SpMedGroupTarde

USE SpMedGroupTarde

CREATE TABLE Endereco (
IdEndereco	INT PRIMARY KEY IDENTITY,
Endereco	VARCHAR (150),
Bairro		VARCHAR (150),
CEP			CHAR (9),
Complemento	VARCHAR(50)

);

CREATE TABLE Clinica (
IdClinica	INT PRIMARY KEY IDENTITY,
NomeClinica	VARCHAR(100)NOT NULL,
CNPJ		VARCHAR(100)NOT NULL,
RazaoSocial	VARCHAR(100)NOT NULL,
IdEndereco	INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
);

CREATE TABLE Administrador (
IdAdmin INT PRIMARY KEY IDENTITY,
Nome			VARCHAR(100)NOT NULL,
Email			VARCHAR(100)NOT NULL,
Senha			VARCHAR(20) NOT NULL
);

CREATE TABLE Pacientes (
IdPaciente		INT PRIMARY KEY IDENTITY,
Nome			VARCHAR(100) NOT NULL,
Email			VARCHAR(100) NOT NULL,
Data_Nascimento	DATE NOT NULL,
Telefone		VARCHAR(10) NOT NULL,
RG				VARCHAR(50) NOT NULL,
CPF				VARCHAR(50),
IdEndereco		INT FOREIGN KEY REFERENCES Endereco (IdEndereco)
);

CREATE TABLE Especialidades (
IdEspecialidade	INT PRIMARY KEY IDENTITY,
NomeEspecialidade	VARCHAR(100) NOT NULL
);

CREATE TABLE Medicos (
IdMedico		INT PRIMARY KEY IDENTITY,
Crm				VARCHAR(100)NOT NULL,
Nome			VARCHAR(100) NOT NULL,
Email			VARCHAR(100)NOT NULL,
IdEspecialidade	INT FOREIGN KEY REFERENCES Especialidades (IdEspecialidade),
IdClinica		INT FOREIGN KEY REFERENCES Clinica (IdClinica)
);

CREATE TABLE SituacaoConsultas (
IdSituacaoConsulta	INT PRIMARY KEY IDENTITY,
Situacao			VARCHAR(100) NOT NULL
);

CREATE TABLE Consultas (
IdConsulta			INT PRIMARY KEY IDENTITY,
Data_Consulta		DATE,
Descricao_Paciente	VARCHAR(200),
IdPaciente			INT FOREIGN KEY REFERENCES Pacientes (IdPaciente),
IdSituacaoPaciente	INT FOREIGN KEY REFERENCES SituacaoConsultas (IdSituacaoConsulta),
IdMedico			INT FOREIGN KEY REFERENCES Medicos (IdMedico)
);