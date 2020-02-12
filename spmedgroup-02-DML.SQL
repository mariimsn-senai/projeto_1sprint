use SpMedGroup;

--DML
SELECT * FROM Usuario;
SELECT * FROM TiposDeUsuarios;
SELECT * FROM Medico;
SELECT * FROM Especialistas;
SELECT * FROM Clinica;
SELECT * FROM Consulta;
SELECT * FROM Prontuario;
SELECT * FROM StatusDeConsulta;

INSERT INTO Usuario (IdTipo, Email, Senha)
VALUES (1,'Fernanda@hotmail.com', '123'),
		(2,'Helena@hotmail.com','132'),
		(2,'Roberto@bool.com','321'),
		(2,'Ricardo@bool.com','231'),
		(3,'mariana@outlook.com','345'),
		(3,'alexandre@gmail.com','543'),
		(3,'fernando@gmail.com','441'),
		(3,'henrique@gmail.com','555'),
		(3,'ligia@gmail.com','676'),
		(3,'joao@hotmail.com','989');

INSERT INTO TiposDeUsuarios (Classificacao)
VALUES ('ADM'),
		('Medico'),
		('Paciente');

INSERT INTO Medico (NomeMedico, IdEspecialistas, IdUsuario, IdClinica, CRM)
VALUES ('Helena', '2', '4', '1', '65463-SP'),
		('Roberto', '3', '5', '1', '53452-SP'),
		('Ricardo', '4', '6', '1', '54356-SP');

		SELECT * FROM Usuario

INSERT INTO Especialistas (Especialistas)
VALUES ('Acupuntura'),
('Anestesiologia'),
( 'Psiquiatria'), 
('Pediatria'), 
('Radioterapia');

SELECT * FROM Clinica

INSERT INTO Clinica (CEP, Rua, HorarioDeFuncionalidade, CNPJ, NomeFantasma ,RazaoSocial)
VALUES ('88731827','Av. Barão Limeira, 532, São Paulo, SP','10:00:00', '87213837', 'Clinica Possarle', 'SP Medical Group');

INSERT INTO Consulta (IdProntuario, IdMedico, IdStatusDeConsulta, DataDeConsulta, Descricao)
VALUES (1, 8, 1, '10/03/2019', 'Dor de cabeça'),
		(2, 9, 2, '11/02/2020', 'X'),
		(3, 9, 1, '20/03/2020', 'Bipolaridade'),
		(2, 9, 1, '12/03/2020', 'Dor no peito'),
		(6, 10, 2, '20/20/2020', 'X'),
		(1, 8, 3, '21/20/2020', 'X'),
		(6, 10, 3, '23/20/2021', 'X');

Insert Into Prontuario (IdUsuario, NomeDoPaciente, CPF, RG, EnderecoDoPaciente, Telefone,DataDeNascimento)
VALUES (5, 'Mariana', '21733729379', '54566266-8', '11 95436-8769', 'R Sao Antonio, 232 - Vila Universal, Barueri - SP, 06407-140', '05/03/2018'),
		(6, 'Alexandre', '73556944057', '32654345-7', '11 98765-6543', 'Av. Paulista, 1578 - Bela Vista, São Paulo - SP, 01310-200', '23/07/2001'),
		(7, 'Fernando', '16839338002', '54636525-3', '11 97208-4453', 'Av. Ibirapuera - Indianópolis, 2927,  São Paulo - SP, 04029-200', '10/10/1978'),
		(8,'Henrique', '14332654765', '54366362-5', '11 3456-6543', 'R. Vitória, 120 - Vila Sao Jorge, Barueri - SP, 06402-030', '13/10/1985'),
		(9,'Ligia', '94839859000', '43522543-5', '11 3456-7654', 'Rua Estado de Israel 240, São Paulo, Estado de São Paulo, 04022-000', '13/10/1983'),
		(10, 'joao', '91305348010', 't32544444-1', '11 7656-6377', 'R. Ver. Geraldo de Camargo, 66 - Santa Luzia, Ribeirão Pires - SP, 09405-380', '27/08/1975');

INSERT INTO StatusDeConsulta (Tutulo)
values ('REALIZADA'),
		('CANCELADA'),
		('AGENDADA');