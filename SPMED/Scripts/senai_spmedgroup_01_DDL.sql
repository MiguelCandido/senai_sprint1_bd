CREATE DATABASE SPMED_BD
GO

USE SPMED_BD
GO

CREATE TABLE tipoUser (
idTipoUser int PRIMARY KEY IDENTITY (0,1),
nomeTipoUser varchar(20)
);
GO

CREATE TABLE usuarios (
idUsuario int PRIMARY KEY IDENTITY (0,1),
idTipoUser int FOREIGN KEY REFERENCES tipoUser(idTipoUser),
nomeUsuario varchar(50),
email varchar(60)
);
GO

CREATE TABLE Clinica (
idClinica int PRIMARY KEY IDENTITY (0,1),
nomeClinica varchar(50),
CNPJ varchar(20),
razaoSocial varchar(35),
endereco varchar(100)
);
GO

CREATE TABLE especialidade (
idEspecialidade int PRIMARY KEY IDENTITY (0,1),
nomeEspecialidade varchar(30)
);
GO

CREATE TABLE medico (
idMedico int PRIMARY KEY IDENTITY (0,1),
idUsuario int FOREIGN KEY REFERENCES usuarios(idUsuario),
idEspecialidade int FOREIGN KEY REFERENCES especialidade(idEspecialidade),
idClinica int FOREIGN KEY REFERENCES Clinica(idClinica),
CRM varchar(10)
);
GO

CREATE TABLE paciente (
idPaciente int PRIMARY KEY IDENTITY (0,1),
idUsuario int FOREIGN KEY REFERENCES usuarios(idUsuario),
CPF varchar(20),
RG varchar(20),
dataNascimento DATE,
enderecoPaciente varchar(100)
);
GO

CREATE TABLE telefone (
idTelefone int PRIMARY KEY IDENTITY (0,1),
idPaciente int FOREIGN KEY REFERENCES paciente(idPaciente),
numeroTelefone varchar(30)
);
GO

CREATE TABLE prontuario (
idProntuario int PRIMARY KEY IDENTITY (0,1),
idPaciente int FOREIGN KEY REFERENCES paciente(idPaciente),
);
GO

CREATE TABLE consulta (
idConsulta int PRIMARY KEY IDENTITY (0,1),
idMedico int FOREIGN KEY REFERENCES medico(idMedico),
idPaciente int FOREIGN KEY REFERENCES paciente(idPaciente),
Situacao varchar(20) DEFAULT 'Agendada',
DataConsulta smalldatetime
);
GO