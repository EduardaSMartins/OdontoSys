CREATE TABLE usuario(
    id INT PRIMARY KEY,
    username VARCHAR(45) NOT NULL,
    email VARCHAR(100) NOT NULL,
    password VARCHAR(45) NOT NULL,
    isRoot BOOLEAN NOT NULL DEFAULT false,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE pessoa(
    id INT PRIMARY KEY,
    idUsuario INT, 
    cpf VARCHAR(14) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    dataNascimento DATE NOT NULL,
    sexo ENUM('feminino', 'masculino'),
    tipoSanguineo ENUM('A+','A-','B+','B-','AB+','AB-','O+','O-'),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idUsuario) REFERENCES id ON usuario
);

CREATE TABLE telefone(
    id INT PRIMARY KEY,
    idPessoa INT NOT NULL,
    numero VARCHAR(15) NOT NULL,
    tipo ENUM('celular','whatsapp','fixo') NOT NULL,
    observacao VARCHAR(45),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPessoa) REFERENCES id ON pessoa
);

CREATE TABLE estado(
    id INT PRIMARY KEY,
    nome VARCHAR(30) NOT NULL,
    uf VARCHAR(2) NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE cidade(
    id INT PRIMARY KEY,
    idEstado INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    codigoIbge VARCHAR(15) NOT NULL,
    ddd VARCHAR(2),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idEstado) REFERENCES id ON estado
);

CREATE TABLE bairro(
    id INT PRIMARY KEY,
    idCidade INT NOT NULL,
    nome VARCHAR(100) NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME

    FOREIGN KEY (idCidade) REFERENCES id ON cidade
);

CREATE TABLE endereco(
    id INT PRIMARY KEY,
    idBairro INT NOT NULL,
    idPessoa INT NOT NULL,
    cep VARCHAR(10),
    logradouro VARCHAR(100) NOT NULL,
    numero VARCHAR(15),
    complemento VARCHAR(45), 
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idBairro) REFERENCES id ON bairro,
    FOREIGN KEY (idPessoa) REFERENCES id ON pessoa
);

CREATE TABLE paciente(
    id INT PRIMARY KEY,
    idPessoa INT NOT NULL,
    altura INT,
    peso FLOAT(3, 3),
    temConvenio BOOLEAN
    alimentacao VARCHAR(45),
    observacao TEXT,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPessoa) REFERENCES id ON pessoa
);

CREATE TABLE funcionario(
    id INT PRIMARY KEY,
    idPessoa INT NOT NULL,
    idCargo INT NOT NULL,
    idDepartamento INT NOT NULL,
    idTurno INT NOT NULL,
    dataAdmissao DATE NOT NULL,
    dataDemissao DATE, 
    numeroCtps VARCHAR(15) NOT NULL, -- revisar
    salario FLOAT(10, 2)
    contrato ENUM('efetivo','estagio','pj','freelancer','substituto')
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPessoa) REFERENCES id ON pessoa,
    FOREIGN KEY (idCargo) REFERENCES id ON cargo,
    FOREIGN KEY (idDepartamento) REFERENCES id ON departamento,
    FOREIGN KEY (idTurno) REFERENCES id ON turno
);

CREATE TABLE enfermeiro(
    id INT PRIMARY KEY,
    idFuncionario INT NOT NULL,
    coren VARCHAR(9) NOT NULL,
    nivel ENUM('iniciante','intermediário','avançado','chefe') NOT NULL,
    responsavelTecnico BOOLEAN NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idFuncionario) REFERENCES id ON funcionario
);

CREATE TABLE medico(
    id INT PRIMARY KEY,
    idFuncionario INT NOT NULL,
    crm VARCHAR(9) NOT NULL,
    nivel ENUM('interno','residente','clínico','especialista') NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idFuncionario) REFERENCES id ON funcionario
);

CREATE TABLE farmaceutico(
    id INT PRIMARY KEY,
    idFuncionario INT NOT NULL,
    crf VARCHAR(10) NOT NULL,
    responsavelTecnico BOOLEAN NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idFuncionario) REFERENCES id ON funcionario
);

CREATE TABLE convenio(
    id INT PRIMARY KEY,
    descricao VARCHAR(45) NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE departamento(
    id INT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    sigla VARCHAR(5),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE cargo(
    id INT PRIMARY KEY,
    idDepartamento INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    descricao VARCHAR(100),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idDepartamento) REFERENCES id ON departamento
);

CREATE TABLE especialidade(
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE medicamento(
    id INT PRIMARY KEY,
    nome VARCHAR(255),
    classeTerapeutica VARCHAR(45),
    empresaDetentoraRegistro VARCHAR(45),
    dose VARCHAR(45),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE prescricao(
    id INT PRIMARY KEY,
    idMedico INT NOT NULL,
    idPaciente INT NOT NULL,
    data DATE NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idMedico) REFERENCES id ON medico,
    FOREIGN KEY (idPaciente) REFERENCES id ON paciente
);

CREATE TABLE anotacao(
    id INT PRIMARY KEY,
    idProntuario INT NOT NULL,
    idResponsavel INT NOT NULL,
    idTipo INT NOT NULL,
    pressao FLOAT(2,2),
    saturacao INT,
    temperatura FLOAT(2,1)
    queixas TEXT,
    observacao TEXT,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idProntuario) REFERENCES id ON prontuario,
    FOREIGN KEY (idResponsavel) REFERENCES id ON usuario,
    FOREIGN KEY (idTipo) REFERENCES id ON tipoAnotacao
);

CREATE TABLE tipoAnotacao(
    id INT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    observacao VARCHAR(100),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE internamento(
    id INT PRIMARY KEY,
    idMedico INT NOT NULL,
    idProntuario INT NOT NULL,
    idResponsavelAlta INT NOT NULL,
    dataInternacao DATE, 
    dataAlta DATE,
    motivo VARCHAR(255),
    queixas TEXT,
    observacao TEXT,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idMedico) REFERENCES id ON medicamento,
    FOREIGN KEY (idProntuario) REFERENCES id ON prontuario,
    FOREIGN KEY (idResponsavelAlta) REFERENCES id ON medico
);

CREATE TABLE prontuario(
    id INT PRIMARY KEY,
    idPaciente INT NOT NULL,
    dataInicio DATE,
    dataFim DATE,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPaciente) REFERENCES id ON paciente
);

CREATE TABLE procedimento(
    id INT PRIMARY KEY,
    nome VARCHAR(45) NOT NULL,
    descricao VARCHAR(100),
    duracao VARCHAR(45),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE exame(
    id INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE avaliacao(
    id INT PRIMARY KEY,
    idPaciente INT NOT NULL,
    idMedico INT NOT NULL,
    observacao TEXT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPaciente) REFERENCES id ON paciente,
    FOREIGN KEY (idMedico) REFERENCES id ON medico
);

CREATE TABLE turno(
    id INT PRIMARY KEY,
    nome VARCHAR(20),
    horarioInicio TIME NOT NULL,
    horarioFim TIME NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE escala(
    id INT PRIMARY KEY,
    dataInicio DATE NOT NULL,
    dataFim DATE NOT NULL,
    horarioInicio TIME NOT NULL,
    horarioFim TIME NOT NULL,
    observacao VARCHAR(255)
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE diagnostico(
    id INT PRIMARY KEY,
    idPaciente INT NOT NULL,
    idMedico INT NOT NULL,
    descricao VARCHAR(100) NOT NULL,
    observacao VARCHAR(255),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPaciente) REFERENCES id ON paciente,
    FOREIGN KEY (idMedico) REFERENCES id ON medico
);

CREATE TABLE comorbidade(
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255), 
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE doenca(
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255), 
    codigo VARCHAR(10) NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE alergia(
    id INT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    descricao VARCHAR(255),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME
);

CREATE TABLE anexos(
    id INT PRIMARY KEY,
    idUsuario INT NOT NULL,
    idEntidade INT NOT NULL,
    mimeType VARCHAR(15) NOT NULL,
    nome VARCHAR(100) NOT NULL,
    tamanho VARCHAR(15) NOT NULL,
    url TEXT,
    tipoEntidade VARCHAR(20),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idUsuario) REFERENCES id ON usuario
);

-- Tabelas de relacionamentos N-N
CREATE TABLE pacienteConvenio(
    id INT PRIMARY KEY,
    idPaciente INT NOT NULL,
    idConvenio INT NOT NULL,
    numeroCarteirinha VARCHAR(30) NOT NULL,
    observacao VARCHAR(100),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPaciente) REFERENCES id ON paciente,
    FOREIGN KEY (idConvenio) REFERENCES id ON convenio
);

CREATE TABLE medicoConvenio(
    id INT PRIMARY KEY,
    idMedico INT NOT NULL,
    idConvenio INT NOT NULL,
    observacao VARCHAR(100),
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idMedico) REFERENCES id ON medico,
    FOREIGN KEY (idConvenio) REFERENCES id ON convenio
);

CREATE TABLE prescricaoMedicamento(
    id INT PRIMARY KEY,
    idPrescricao INT NOT NULL,
    idMedicamento INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPrescricao) REFERENCES id ON prescricao,
    FOREIGN KEY (idMedicamento) REFERENCES id ON medicamento
);

CREATE TABLE pacienteProcedimento(
    id INT PRIMARY KEY,
    idPaciente INT NOT NULL,
    idProcedimento INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPaciente) REFERENCES id ON paciente,
    FOREIGN KEY (idProcedimento) REFERENCES id ON procedimento
);

CREATE TABLE medicoEspecialidade(
    id INT PRIMARY KEY,
    idMedico INT NOT NULL,
    idEspecialidade INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idMedico) REFERENCES id ON medico,
    FOREIGN KEY (idEspecialidade) REFERENCES id ON especialidade
);

CREATE TABLE procedimentoDiagnostico(
    id INT PRIMARY KEY,
    idProcedimento INT NOT NULL,
    idDiagnostico INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idProcedimento) REFERENCES id ON procedimento,
    FOREIGN KEY (idDiagnostico) REFERENCES id ON diagnostico
);

CREATE TABLE exameDiagnostico(
    id INT PRIMARY KEY,
    idExame INT NOT NULL,
    idDiagnostico INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idExame) REFERENCES id ON exame,
    FOREIGN KEY (idDiagnostico) REFERENCES id ON diagnostico
);

CREATE TABLE pacienteExame(
    id INT PRIMARY KEY,
    idPaciente INT NOT NULL,
    idExame INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPaciente) REFERENCES id ON paciente,
    FOREIGN KEY (idExame) REFERENCES id ON exame
);

CREATE TABLE procedimentoEquipe(
    id INT PRIMARY KEY,
    idProcedimento INT NOT NULL,
    idFuncionario INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idProcedimento) REFERENCES id ON procedimento,
    FOREIGN KEY (idFuncionario) REFERENCES id ON funcionario
);

CREATE TABLE escalaEquipe(
    id INT PRIMARY KEY,
    idEscala INT NOT NULL,
    idFuncionario INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idEscala) REFERENCES id ON escala,
    FOREIGN KEY (idFuncionario) REFERENCES id ON funcionario
);

CREATE TABLE turnoFuncionario(
    id INT PRIMARY KEY,
    idTurno INT NOT NULL,
    idFuncionario INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idTurno) REFERENCES id ON turno,
    FOREIGN KEY (idFuncionario) REFERENCES id ON funcionario
);

CREATE TABLE pacienteAlergia(
    id INT PRIMARY KEY,
    idPaciente INT NOT NULL,
    idAlergia INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPaciente) REFERENCES id ON paciente,
    FOREIGN KEY (idAlergia) REFERENCES id ON alergia
);

CREATE TABLE pacienteComorbidade(
    id INT PRIMARY KEY,
    idPaciente INT NOT NULL,
    idComorbidade INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPaciente) REFERENCES id ON paciente,
    FOREIGN KEY (idComorbidade) REFERENCES id ON comorbidade
);

CREATE TABLE pacienteDoenca(
    id INT PRIMARY KEY,
    idPaciente INT NOT NULL,
    idDoenca INT NOT NULL,
    createdAt DATETIME NOT NULL,
    updatedAt DATETIME NOT NULL, 
    deletedAt DATETIME,

    FOREIGN KEY (idPaciente) REFERENCES id ON paciente,
    FOREIGN KEY (idDoenca) REFERENCES id ON doenca
);

