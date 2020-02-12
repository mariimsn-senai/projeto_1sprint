CREATE DATABASE SpMedGroup;
use SpMedGroup;

--DDL

CREATE TABLE Usuario (
IdUsuario INT PRIMARY KEY IDENTITY,
IdTipo INT FOREIGN KEY REFERENCES TiposDeUsuarios (IdTipo),
Email VARCHAR(200) UNIQUE,
Senha VARCHAR(200)
);

CREATE TABLE TiposDeUsuarios (
IdTipo INT PRIMARY KEY IDENTITY,
Classificacao VARCHAR(200)
);

CREATE TABLE Medico (
IdMedico INT PRIMARY KEY IDENTITY,
IdClinica INT FOREIGN KEY REFERENCES Clinica (IdClinica),
IdEspecialistas INT FOREIGN KEY REFERENCES Especialistas (IdEspecialistas),
IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
NomeMedico VARCHAR(200)
);

CREATE TABLE Especialistas (
IdEspecialistas INT PRIMARY KEY IDENTITY,
Especialistas VARCHAR(200)
);

CREATE TABLE Clinica (
IdClinica INT PRIMARY KEY IDENTITY,
CEP VARCHAR(200),
Rua VARCHAR(200),
HorarioDeFuncionalidade VARCHAR(200),
CNPJ VARCHAR(200) UNIQUE,
NomeFantasma Varchar(200),
RazaoSocial VARCHAR(200)
);

CREATE TABLE Consulta ( 
IdConsulta INT PRIMARY KEY IDENTITY,
IdProntuario INT FOREIGN KEY REFERENCES Prontuario (IdProntuario),
IdMedico INT FOREIGN KEY REFERENCES Medico (IdMedico),
IdStatusDeConsulta INT FOREIGN KEY REFERENCES StatusDeConsulta (IdStatusDeConsulta),
DataDeConsulta VARCHAR(200)
);

CREATE TABLE Prontuario(
IdProntuario INT PRIMARY KEY IDENTITY,
IdUsuario INT FOREIGN KEY REFERENCES Usuario (IdUsuario),
NomeDoPaciente VARCHAR (200),
CPF VARCHAR (200) UNIQUE,
RG VARCHAR (200) UNIQUE,
EnderecoDoPaciente VARCHAR (200),
Telefone VARCHAR (200),
DataDeNascimento Date 
);

CREATE TABLE StatusDeConsulta(
IdStatusDeConsulta INT PRIMARY KEY IDENTITY,
Tutulo VARCHAR (200)
);
