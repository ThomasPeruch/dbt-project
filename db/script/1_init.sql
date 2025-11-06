CREATE SCHEMA IF NOT EXISTS RAW;

CREATE TABLE IF NOT EXISTS RAW.paciente (
    id_paciente SERIAL PRIMARY KEY,
    nome VARCHAR(150),
    cpf VARCHAR(20) UNIQUE,
    data_nascimento DATE,
    sexo CHAR(8),
    nome_mae VARCHAR(150),
    telefone VARCHAR(20),
    email VARCHAR(100)
);

CREATE TABLE IF NOT EXISTS RAW.profissional_saude (
    id_profissional SERIAL PRIMARY KEY,
    cpf VARCHAR(30),
    nome VARCHAR(150),
    cbo VARCHAR(100),
    registro_conselho VARCHAR(30),
    especialidade VARCHAR(100)
);


CREATE TABLE IF NOT EXISTS RAW.atendimento (
    id_atendimento SERIAL PRIMARY KEY,
    id_paciente INT,
    id_profissional INT,
    data_atendimento TIMESTAMP,
    tipo INT, -- 1:'Ambulatorial' 2:'Emergência' 3:'Internação',
    diagnostico_principal VARCHAR(200),
    observacoes TEXT
);

CREATE TABLE IF NOT EXISTS RAW.prescricao (
    id_prescricao SERIAL PRIMARY KEY,
    id_atendimento INT,
    medicamento VARCHAR(150),
    dosagem VARCHAR(100),
    frequencia VARCHAR(100),
    duracao VARCHAR(100),
    observacoes TEXT
);