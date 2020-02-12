USE SpMedGroupTarde

INSERT INTO Endereco (Endereco, CEP)
VALUES	('Av. Barão Limeira 532','04022-000'),
		('Av. Paulista 1578','01310-200'),
		('Av. Ibirapuera 2927','04029-200'),
		('R. Vitória, 120', '06402-030'),
		('R. Ver. Geraldo de Camargo 66','09405-380'),
		('Alameda dos Arapanés 945','04524-001'),
		('R Sao Antonio 232','06407-140'),
		('Rua Estado de Israel 240','53059-000');

INSERT INTO Medicos (Crm, Nome, Email, IdEspecialidade,IdClinica)
VALUES	('54356-SP','Ricardo Lemos','ricardo.lemos@spmedicalgroup.com.br','2','1'),
		('53452-SP','Roberto Possarle',	'roberto.possarle@spmedicalgroup.com.br','17','1'),
		('65463-SP','Helena Strada','helena.souza@spmedicalgroup.com.br','16','1');

INSERT INTO Pacientes (Nome, Email, Data_Nascimento, Telefone, RG, CPF, IdEndereco)
VALUES	('Ligia','ligia@gmail.com','13/10/1983','3456-7654','43522543-5','94839859000','1'),
		('Alexandre','alexandre@gmail.com','23/07/2001','98765-6543','32654345-7','73556944057','2'),
		('Fernando','fernando@gmail.com','10/10/1978','97208-4453','54636525-3','16839338002','3'),
		('Henrique','henrique@gmail.com','13/10/1985','3456-6543','54366362-5','14332654765','4'),
		('João','joao@hotmail.com','27/08/1975','7656-6377','32544444-1','91305348010','5'),
		('Bruno','bruno@gmail.com','21/03/1972','95436-8769','54566266-7','79799299004','6'),
		('Mariana','mariana@outlook.com','05/03/2018','94533-8790','54566266-8','13771913039','7');

INSERT INTO Administrador (Nome, Email, Senha)
VALUES	('ADM','adm@email.com','adm123');

INSERT INTO Clinica(NomeClinica,CNPJ,RazaoSocial,IdEndereco)
VALUES	('Clinica Possarle','86.400.902/0001-30','SpMedicalGroup','1');

INSERT INTO Especialidades (NomeEspecialidade)
VALUES	('Acupuntura'),
		('Anestesiologia'),
		('Angiologia'),
		('Cardiologia'),
		('Cirurgia Cardiovascular'),
		('Cirurgia da Mão'),
		('Cirurgia do Aparelho Digestivo'),
		('Cirurgia Geral'),
		('Cirurgia Pediátrica'),
		('Cirurgia Plástica'),
		('Cirurgia Torácica'),
		('Cirurgiai Vascular'),
		('Dermatologia'),
		('Radioterapia'),
		('Urologia'),
		('Pediatria'),
		('Psiquiatria');

INSERT INTO Consultas (IdPaciente,IdMedico,Data_Consulta,IdSituacaoPaciente)
VALUES	('9','6','05/01/2020','1'),
		('4','5','06/01/2020','3'),
		('5','5','07/02/2020','1'),
		('4','5','27/12/2019','1'),
		('6','4','07/02/2020','3'),
		('9','6','25/03/2020','2'),
		('6','4','09/03/2020','2');

INSERT INTO SituacaoConsultas (Situacao)
VALUES	('Agendada'),
		('Confirmada'),
		('Cancelado');

SELECT*FROM SituacaoConsultas
SELECT*FROM Clinica
SELECT*FROM Consultas
SELECT*FROM Medicos
SELECT*FROM Pacientes
SELECT*FROM Endereco
SELECT*FROM Administrador
SELECT*FROM Especialidades