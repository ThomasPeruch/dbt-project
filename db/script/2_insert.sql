INSERT INTO UNIFIED.paciente
(id_origem, fl_origem, dt_origem, nome, cpf, data_nascimento, sexo, nome_mae,dt_system, email, telefone) VALUES
(100, 'N', '2025-11-07 15:40:00','Gauris Pitichester', '12259925883', '2018-03-08', 'Masculino', 'Nicole', NOW() ,'senhorpinscher@email.com', NULL);

INSERT INTO RAW.paciente_norte 
(id_origem, dt_origem, nome, cpf, data_nascimento, sexo, nome_mae, dt_system, telefone, email) VALUES
(3, '2025-01-10 08:15:22', 'João da Silva', '12345678900', NULL, 'maculino', 'Maria da Silva', NOW(), '(41) 99876-5432', 'joao.silva@email.com'),
(78, '2025-02-15 14:32:10', 'ANA PEREIRA', '987.654.321-00', '1992-07-05', 'mulher', 'Lucia Pereira', NOW(), '(41) 99876-1111', 'ana.pereira@email.com'),
(89, '2025-03-20 11:47:55', 'Carlos Oliveira', '111.222.333-44', '1978-12-22', 'M', 'Rita Oliveira', NOW(), '(55) 98876-2222', 'carlos.oliveira@email.com'),
(540, '2025-03-25 09:20:31', 'João Oliveira', '00000000000', '1988-12-12', 'M', NULL, NOW(), '(55) 92456-2222', NULL),
(110, '2025-04-01 07:59:18', 'Guilherme Dutra', '24673906431', '1999-09-01', 'homem', NULL, NOW(), '(55) 91376-4422', 'dutragui@hotmail.com'),
(22, '2025-04-18 12:04:09', 'sandro sampaio', NULL, '1988-02-27', NULL, NULL, NOW(), '(55) 98446-1322', NULL),
(99, '2025-04-30 15:44:42', 'João Costa', '', '1988-12-12', 'M', NULL, NOW(), '(55) 98876-2222', 'jcosta@email.com'),
(190, '2025-05-05 10:10:05', 'Susana', '96312575410', '1963-12-12', 'F', 'Helena', NOW(), '(55) 98876-4328', 'susana1963@email.com'),
(1, '2025-06-10 13:59:33', 'Nicole', '86311245678', '1995-12-01', 'Feminino', 'Susana', NOW(), '(55) 93502-8715', 'ni95@email.com'),
(3, '2025-07-22 17:45:00', 'Osvaldo Lobo', '09560025003', '1999-08-08', 'Maculino', NULL, NOW(), NULL, 'lobosvaldo@email.com');

INSERT INTO RAW.paciente_sul
(id_origem, dt_origem, nome, cpf, data_nascimento, sexo, nome_mae, dt_system, telefone, email) VALUES
(18, '2025-01-15 08:32:00', 'Nicolas', '86656601662', NULL, 'maculino', 'Zilma de Lourdes', NOW(), NULL, 'nicolas@email.com'),
(23, '2025-02-10 09:00:11', 'Thomas', '87787654321', '1995-12-21', 'homem', 'Zilma de Lourdes', NOW(), NULL, 'thomas@email.com'),
(12, '2025-03-01 10:47:59', 'Monique', '20245572100', '1986-06-12', 'mulher', 'Zilma de Lourdes', NOW(), NULL, 'monique@email.com'),
(4, '2025-03-05 11:21:43', 'Zilma de Lourdes', '82936974285', '1956-11-23', 'Feminino', 'Suzana da Silva', NOW(), NULL, NULL),
(9, '2025-03-10 15:15:15', 'Thiago Luz', '20115545199', '1999-09-01', 'homem', 'Monique', NOW(), NULL, 'thiagolight@hotmail.com'),
(140, '2025-04-01 09:33:50', 'Mariana Lopes', '123.456.789-01', '1989-05-10', 'F', 'Lúcia Lopes', NOW(), '(41) 98877-1122', 'mariana.lopes@email.com'),
(127, '2025-04-12 13:05:26', 'JOSE CARLOS', ' 98765432100 ', '1975-03-22', 'M', 'Maria José', NOW(), '(47) 98455-9922', 'jose.carlos@email.com'),
(113, '2025-05-20 10:00:00', 'Ana', '24673906431', '1992-11-05', 'mulher', NULL, NOW(), '(48) 98822-4455', 'ana@email.com'),
(112, '2025-06-15 16:48:27', 'Rogério da Silva', '00000000000', NULL, 'Maculino', 'Célia da Silva', NOW(), '(49) 98221-3344', 'rogerio.silva'),
(199, '2025-07-03 08:59:59', 'Beatriz Souza', 'abc1234567x', '2000-01-20', 'Feminino', 'maria souza', NOW(), '(42) 98765-1020', 'bia.souza@email.com');

-- Profissionais
INSERT INTO RAW.profissional_saude (cpf, nome, cbo, registro_conselho, especialidade)
VALUES
('21122687087','Fernanda Souza', '2251-25', 'CRM-PR 12345', 'Clínica Geral'),
('77312463029', 'Ricardo Lima', '2252-70', 'CRM-RS 56789', null),
('00000000000','Juliana Alves', '2235-05', 'COREN-PR 223344', 'Enfermagem'),
('           ','Julio', '2235-05', 'COREN-PR 223344', 'Enfermagem'),
('82159569046','Cléber Souza', '2251-25', 'CRM-RJ 25021', 'Clínica Geral'),
('39597230089','Leonardo Dantas', '2251-25', 'CRM-SP 28544', 'Clínica Geral'),
('66961247059','Jurandir Paiva', '2251-20', 'CRM-RS 31045', 'Cardiologista'),
('78248080099','Miriam Ribeiro', '2251-27', 'CRM-SC 32788', 'Pneumologista');

-- Atendimentos
INSERT INTO RAW.atendimento 
(id_paciente, id_profissional, data_atendimento, tipo, diagnostico_principal, observacoes)
VALUES
(1, 1, '2025-11-04 09:30:00', 1, 'gripe comum', 'paciente relata dor de cabeça e febre.'),
(2, 2, '2025-11-03 22:15:00', 2, 'crise de asma', 'uso de bombinha de emergência.'),
(3, 2, '2025-11-02 14:50:00', 3, 'fratura no braço esquerdo', 'queda em casa.'),
(4, 1, '2099-11-05 10:00:00', 1, 'dor no estomago', 'provável intoxicação alimentar.'),
(5, 6, '2025-10-29 16:20:00', NULL, 'febre alta', 'sem outros sintomas.'),
(6, 3, '2025-11-01 07:45:00', 2, 'pressão alta', 'paciente diz sentir tontura.'),
(7, 4, '2025-11-04 11:10:00', 99, 'mal estar', 'sem diagnóstico definido.'),
(8, 7, '1010-01-01 00:00:00', 1, NULL, 'erro no sistema, sem diagnóstico.'),
(9, null, NULL, 3, 'parto normal', 'nascimento de bebê saudável.'),
(10, 8, '2025-10-31 18:40:00', 2, 'tosse persistente', 'possível bronquite.'),
(1, 5, '2025-10-15 13:30:00', 1, 'dor de garganta', 'relata dificuldade para engolir.'),
(2, 5, '2025-09-22 08:10:00', 3, 'quebra de perna', 'paciente caiu da escada.'),
(3, 6, '2025-07-01 10:00:00', 1, 'resfriado comum', 'sem febre, sintomas leves.'),
(4, 5, '2025-11-01 19:00:00', 2, 'crise de ansiedade', 'encaminhado para avaliação psicológica.'),
(5, 8, '2025-08-12 11:11:00', 3, 'hipertensão', 'pressão arterial 17x11, uso de medicamento.'),
(6, 2, '2025-04-30 17:55:00', 1, 'dor nas costas', 'relata dor lombar há 2 semanas.'),
(7, 2, '2025-05-09 06:00:00', 2, 'queda da própria altura', 'sem fraturas aparentes.'),
(8, 8, '2025-11-05 02:30:00', 3, 'pneumonia', 'tosse seca há 10 dias.'),
(9, 1, '2025-11-02 23:59:00', 1, 'infecção urinária', 'ardência ao urinar.'),
(10, 1, '2025-11-05 09:00:00', 2, 'alergia alimentar', 'coceira após comer frutos do mar.'),
(3, 3, '2025-10-29 09:30:00', 4, 'gripe', null),
(1, 8, '2023-11-10 10:10:00', 1, 'gripe forte', null),
(2, 4, '2025-02-25 10:10:00', 2, 'dengue', 'não'),
(5, 2, '2024-11-01 09:30:00', 2, '', 'SEM OBSERVAÇÕES.'),
(6, 8, '2025-11-04 09:30:00', 1, 'pressao alt', 'ENCAMINHAR ESPECIALISTA');

INSERT INTO RAW.prescricao 
(id_atendimento, medicamento, dosagem, frequencia, duracao, observacoes)
VALUES
(1, 'Paracetamol 500mg', '1 comprimido', 'a cada 8 horas', '5 dias', 'tomar após refeições'),
(2, 'Salbutamol Inalatório', '2 jatos', 'a cada 6 horas', '7 dias', 'usar conforme necessidade'),
(3, 'Cefalexina 500mg', '1 cápsula', 'a cada 6 horas', '10 dias', 'antibiótico'),
(4, 'omeprazol', NULL, '1x ao dia', '7 dias', 'antes do café da manhã'),
(5, 'Dipirona 500mg', '1 comprimido', 'a cada 4 horas', NULL, NULL),
(6, 'losartana 50mg', '1 comprimido', NULL, '30 dias', 'controle de pressão'),
(7, 'vitamina c', '', 'a cada 8 horas', '5 dias', 'sem prescrição médica'),
(8, 'antibiótico desconhecido', '2 comprimidos', '???', '5', 'registro manual incorreto'),
(9, 'ibuprofeno 600mg', '1 cp', 'a cada 8 hrs', '3 dias', 'pós-parto'),
(10, NULL, '1 comprimido', 'a cada 12 horas', '5 dias', 'erro de digitação, medicamento ausente');