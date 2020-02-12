USE SpMedGroupTarde

--PACIENTES E SUAS CONSULTAS

SELECT Pacientes.Nome,Consultas.Data_Consulta, Pacientes.Email, Pacientes.Data_Nascimento, Pacientes.CPF 
FROM Consultas
INNER JOIN Pacientes ON Pacientes.IdPaciente = Consultas.IdPaciente;



--PACIENTES, SUAS CONSULTAS E SEUS MÉDICOS
SELECT Pacientes.Nome AS Paciente, Pacientes.CPF ,Pacientes.Data_Nascimento,Consultas.Data_Consulta, Medicos.Nome AS NomeMedico, Especialidades.NomeEspecialidade AS EspecialidadeMedica 
FROM Consultas
INNER JOIN Pacientes ON Pacientes.IdPaciente = Consultas.IdPaciente
INNER JOIN Medicos ON Medicos.IdMedico = Consultas.IdMedico
INNER JOIN Especialidades ON Especialidades.IdEspecialidade = Medicos.IdEspecialidade;


--MÉDICOS E SUAS ESPECIALIDADES

SELECT Medicos.Crm, Medicos.Nome, Especialidades.NomeEspecialidade AS EspecialidadeMedica 
FROM Medicos
INNER JOIN Especialidades ON Especialidades.IdEspecialidade = Medicos.IdEspecialidade;



--MÉDICOS, SUAS ESPECIALIDADES E CLÍNICA DE ATUAÇÃO

SELECT Medicos.Crm, Medicos.Nome, Especialidades.NomeEspecialidade AS EspecialidadeMedica, Clinica.NomeClinica AS ClinicaDeAtuação, Clinica.IdEndereco 
FROM Medicos
INNER JOIN Especialidades ON Especialidades.IdEspecialidade = Medicos.IdEspecialidade
INNER JOIN Clinica ON Clinica.IdClinica = Medicos.IdClinica;



---IDADE DOS PACIENTES

SELECT Pacientes.Nome, Pacientes.Data_Nascimento, 
CASE WHEN
DATEPART(MONTH,Pacientes.Data_Nascimento)<= DATEPART(MONTH,GETDATE()) AND
DATEPART(DAY,Pacientes.Data_Nascimento)<= DATEPART(DAY,GETDATE())
THEN
(DATEDIFF(YEAR,Pacientes.Data_Nascimento,GETDATE()))
ELSE
(DATEDIFF(YEAR,Pacientes.Data_Nascimento,GETDATE()))- 1
 END AS IDADEATUAL
from Pacientes;






--STORED PROCEDURE CALCULO IDADE
CREATE PROCEDURE CalcularIdade
AS
SELECT Pacientes.Nome, Pacientes.Data_Nascimento, 
CASE WHEN
DATEPART(MONTH,Pacientes.Data_Nascimento)<= DATEPART(MONTH,GETDATE()) AND
DATEPART(DAY,Pacientes.Data_Nascimento)<= DATEPART(DAY,GETDATE())
THEN
(DATEDIFF(YEAR,Pacientes.Data_Nascimento,GETDATE()))
ELSE
(DATEDIFF(YEAR,Pacientes.Data_Nascimento,GETDATE()))- 1
 END AS IDADEATUAL
from Pacientes
ORDER BY IDADEATUAL;
EXEC CalcularIdade;