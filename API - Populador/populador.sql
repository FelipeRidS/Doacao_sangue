USE SistemaDoacao;

INSERT INTO TiposSanguineos (nomeTipoSang, totalDisponivel) VALUES
('A+', 100),
('A-', 50),
('B+', 100),
('B-', 50),
('AB+', 100),
('AB-', 50),
('O+', 100),
('O-', 50);

INSERT INTO Funcionarios (cpf, email, nome, profissao) VALUES
('12345678901', 'funcionario1@example.com', 'João Silva', 'Enfermeiro'),
('10987654321', 'funcionario2@example.com', 'Maria Oliveira', 'Médico');

INSERT INTO Doadores (nome, sobrenome, cpf, telefone, codTipoSanguineo, endereco) VALUES
('Carlos', 'Santos', '98765432100', '123456789', 1, 'Rua A, 123'),
('Ana', 'Costa', '12345678900', '987654321', 2, 'Rua B, 456');

INSERT INTO CentrosDoacao (nomeLocal, endereco) VALUES
('Centro A', 'Rua Principal, 100'),
('Centro B', 'Rua Secundária, 200');

INSERT INTO Doacoes (codDoador, codFuncionario, codCentroDoacao, data, mlSangue) VALUES
(1, 1, 1, '2024-01-01', 500),
(2, 2, 2, '2024-01-02', 450);

INSERT INTO RetiradasSangue (codTipoSanguineo, mlSangue) VALUES
(1, 500),
(2, 450);
