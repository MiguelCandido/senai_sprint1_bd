USE SPMED_BD
GO

INSERT INTO tipoUser(nomeTipoUser) 
VALUES ('Admin'),('Medico'),('Paciente')

INSERT INTO usuarios(idTipoUser,nomeUsuario,email) 
VALUES 
(2,'Ricardo Lemos','ricardo.lemos@spmedicalgroup.com.br'),
(2,'Roberto Possarle','roberto.possarle@spmedicalgroup.com.br'),
(2,'Helena Strada','helena.souza@spmedicalgroup.com.br'),
(3,'Ligia','ligia@gmail.com'), (3,'Alexandre','alexandre@gmail.com'),
(3,'Fernando','fernando@gmail.com'), (3,'Henrique','henrique@gmail.com'),
(3,'João','joao@hotmail.com'), (3,'Bruno','bruno@gmail.com'),
(3,'Mariana','mariana@outlook.com')

INSERT INTO Clinica(nomeClinica,CNPJ,razaoSocial,endereco)
VALUES ('Clínica Possarle','86.400.902/0001-30','SP Medical Group', 'Av. Barão Limeira, 532, São Paulo, SP')

INSERT INTO especialidade(nomeEspecialidade)
VALUES ('Acupuntura'),('Anestesiologia'),('Angiologia'),('Cardiologia'),('Cirurgia Cardiovascular'),('Cirurgia da Mão'),
('Cirurgia do Aparelho Digestivo'),('Cirurgia Geral'),('Cirurgia Pediátrica'), ('Cirurgia Plástica'),('Cirurgia Torácica'),('Cirurgia Vascular'),
('Dermatologia'),('Radioterapia'),('Urologia'),('Pediatria'),('Psiquiatria')

INSERT INTO medico(idUsuario,idEspecialidade,idClinica,CRM)
VALUES (0,1,0,'54356-SP'),(1,16,0,'53452-SP'),(2,15,0,'65463-SP')

INSERT INTO paciente(idUsuario,CPF,RG,dataNascimento,enderecoPaciente)
VALUES 
(3, '94839859000','43522543-5',DATEFROMPARTS(1983,10,13),'Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000'),
(4, '73556944057','32654345-7',DATEFROMPARTS(2001,07,23),'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200'),
(5, '16839338002','54636525-3',DATEFROMPARTS(1978,10,10),'Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200'),
(6, '14332654765','54366362-5',DATEFROMPARTS(1985,10,13),'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030'),
(7, '91305348010','53254444-1',DATEFROMPARTS(1975,08,27),'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380'),
(8, '79799299004','54566266-7',DATEFROMPARTS(1972,03,21),'Alameda dos Arapanés, 945 - Indianópolis, São Paulo - SP, 04524-001'),
(9, '13771913039','54566266-8',DATEFROMPARTS(2018,03,05),'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140')

INSERT INTO telefone(idPaciente,numeroTelefone)
VALUES (0,'11 3456-7654'), (1,'11 98765-6543'), (2,'11 97208-4453'), (3,'11 3456-6543'), (4,'11 7656-6377'), (5,'11 95436-8769')

INSERT INTO prontuario (idPaciente)
VALUES (0),(1),(2),(3),(4),(5),(6)

INSERT INTO consulta(idMedico,idPaciente,Situacao,DataConsulta)
VALUES 
(2,6, 'Realizada', SMALLDATETIMEFROMPARTS(2020, 01, 20, 15, 00 )),
(1,1, 'Cancelada', SMALLDATETIMEFROMPARTS(2020, 01, 06, 10, 00 )),
(1,2, 'Realizada', SMALLDATETIMEFROMPARTS(2020, 02, 07, 11, 00 )),
(1,1, 'Realizada', SMALLDATETIMEFROMPARTS(2018, 02, 06, 10, 00 )),
(0,3, 'Cancelada', SMALLDATETIMEFROMPARTS(2019, 02, 07, 11, 00 )),
(2,6, 'Agendada', SMALLDATETIMEFROMPARTS(2020, 03, 08, 15, 00 )),
(0,3, 'Agendada', SMALLDATETIMEFROMPARTS(2020, 03, 09, 11, 00 ))