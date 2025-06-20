CREATE DATABASE odontosys;
USE DATABASE odontosys;

-- Modelagem de tabelas e relacionamentos 1:1
CREATE TABLE tenant (
    id INT NOT NULL PRIMARY KEY,
    id_pessoa INT NOT NULL,
    nome VARCHAR(100) NOT NULL, 
    codigo VARCHAR(45) NOT NULL,
    cnpj VARCHAR(18) NOT NULL,
    email VARCHAR(100) NOT NULL,
    horario VARCHAR(100),
    observação VARCHAR(255),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_pessoa) REFERENCES ON pessoa(id)
);

CREATE TABLE usuario ();
    id INT NOT NULL PRIMARY KEY,
    id_tenant INT NOT NULL,
    username VARCHAR(45) NOT NULL,
    password VARCHAR(45) NOT NULL,
    email VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_tenant) REFERENCES ON tenant(id)

CREATE TABLE permissao(
    id INT NOT NULL PRIMARY KEY,
    id_tenant INT NOT NULL, 
    nome VARCHAR(100)
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_tenant) REFERENCES ON tenant(id)
);

CREATE TABLE relacao_pessoa (
    id INT NOT NULL PRIMARY KEY,
    descricao VARCHAR(45) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE pessoa (
    id INT NOT NULL PRIMARY KEY,
    id_tenant INT NOT NULL,
    id_usuario INT,
    nome VARCHAR(100) NOT NULL
    nif VARCHAR(20) NOT NULL,
    data_nascimento DATE,
    tipo ENUM('fisica', 'juridica') NOT NULL,
    sexo ENUM('masculino', 'feminino'),
    peso DECIMAL(3,3),
    altura DECIMAL(1,2),
    tipo_sanguineo ENUM('A+','A-','AB+','AB-','O+','O-'),
    alergias VARCHAR(255),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_tenant) REFERENCES ON tenant(id),
    FOREIGN KEY (id_usuario) REFERENCES ON usuario(id)
);

CREATE TABLE telefone (
    id INT NOT NULL PRIMARY KEY,
    id_pessoa INT NOT NULL,
    numero VARCHAR(25) NOT NULL,
    tipo ENUM('celular', 'fixo') NOT NULL DEFAULT 'celular',
    observacao VARCHAR(100),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_pessoa) REFERENCES ON pessoa(id)
);

CREATE TABLE pais (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(45),
    moeda VARCHAR(10),
    iso2 VARCHAR(2),
    iso3 VARCHAR(3)
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,
);

CREATE TABLE estado (
    id INT NOT NULL PRIMARY KEY,
    id_pais INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    sigla VARCHAR(3) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_pais) REFERENCES ON pais(id)
);

CREATE TABLE cidade (
    id INT NOT NULL PRIMARY KEY,
    id_estado INT NOT NULL,
    nome VARCHAR(45),
    codigo_ibge VARCHAR(10),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_estado) REFERENCES ON estado(id)
);

CREATE TABLE bairro (
    id INT NOT NULL PRIMARY KEY,
    id_cidade INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_cidade) REFERENCES ON cidade(id)
);

CREATE TABLE logradouro (
    id INT NOT NULL PRIMARY KEY,
    id_bairro INT NOT NULL,
    id_pessoa INT NOT NULL,
    logradouro VARCHAR(255) NOT NULL,
    numero VARCHAR(20),
    complemento VARCHAR(50),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_bairro) REFERENCES ON bairro(id),
    FOREIGN KEY (id_pessoa) REFERENCES ON pessoa(id)
);

CREATE TABLE funcionario (
    id INT NOT NULL PRIMARY KEY,
    id_pessoa INT NOT NULL,
    data_admissao DATE NOT NULL,
    data_demissao DATE,
    salario DECIMAL(10,2),
    forma_pagamento ENUM('pix', 'depósito', 'dinheiro'),
    contrato ENUM('PJ', 'CLT', 'estágio') NOT NULL,
    carga_horaria VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_pessoa) REFERENCES ON pessoa(id)
);

CREATE TABLE funcao (
    id INT NOT NULL PRIMARY KEY,
    id_tenant INT NOT NULL, 
    descricao VARCHAR(45) NOT NULL,
    observacao VARCHAR(255),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_tenant) REFERENCES ON tenant(id)
);

CREATE TABLE dentista (
    id INT NOT NULL PRIMARY KEY,
    id_pessoa INT NOT NULL,
    cro VARCHAR(7) NOT NULL,
    data_formacao DATE,
    universidade VARCHAR(100),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_pessoa) REFERENCES ON pessoa(id)
);

CREATE TABLE paciente (
    id INT NOT NULL PRIMARY KEY,
    id_pessoa INT NOT NULL,
    data_primeira_consulta DATE,
    historico_familiar TEXT,
    doencas TEXT,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_pessoa) REFERENCES ON pessoa(id)
);

CREATE TABLE avaliacao (
    id INT NOT NULL PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_dentista INT NOT NULL,
    data DATE NOT NULL, 
    status ENUM('pendente', 'realizada', 'cancelada'),
    valor DECIMAL(10,2),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_paciente) REFERENCES ON paciente(id),
    FOREIGN KEY (id_dentista) REFERENCES ON dentista(id)
);

CREATE TABLE especialidade (
    id INT NOT NULL PRIMARY KEY,
    id_tenant INT NOT NULL, 
    nome VARCHAR(45),
    observacao VARCHAR(255),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_tenant) REFERENCES ON tenant(id)
);

CREATE TABLE convenio (
    id INT NOT NULL PRIMARY KEY,
    id_tenant INT NOT NULL,
    nome VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_tenant) REFERENCES ON tenant(id)
);

CREATE TABLE tratamento (
    id INT NOT NULL PRIMARY KEY,
    id_tenant INT NOT NULL,
    nome VARCHAR(45) NOT NULL,
    descricao VARCHAR(255),
    duracao_media VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_tenant) REFERENCES ON tenant(id)
);

CREATE TABLE procedimento (
    id INT NOT NULL PRIMARY KEY,
    id_tenant INT NOT NULL,
    codigo VARCHAR(5),
    nome VARCHAR(45) NOT NULL,
    descricao VARCHAR(255),
    precisa_auxiliar BOOLEAN
    duracao VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_tenant) REFERENCES ON tenant(id)
);

CREATE TABLE tipo_modelo_documento (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE modelo_documento (
    id INT NOT NULL PRIMARY KEY,
    id_dentista INT NOT NULL,
    id_tipo_modelo INT NOT NULL,
    html TEXT
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,
    
    FOREIGN KEY (id_tipo_modelo) REFERENCES ON tipo_modelo_documento(id)
);

CREATE TABLE atestado (
    id INT NOT NULL PRIMARY KEY,
    id_paciente INT NOT NULL,
    html TEXT NOT NULL,
    duracao VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_paciente) REFERENCES ON paciente(id)
);

CREATE TABLE declaracao (
    id INT NOT NULL PRIMARY KEY,
    html TEXT NOT NULL,
    dono VARCHAR(100) NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,
);

CREATE TABLE termo (
    id INT NOT NULL PRIMARY KEY,
    html TEXT NOT NULL,
    assinado BOOLEAN
    observacao VARCHAR(255),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE medicamento (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(255),
    dose VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE prescricao (
    id INT NOT NULL PRIMARY KEY,
    html TEXT NOT NULL, 
    emitida BOOLEAN
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE cid (
    id INT NOT NULL PRIMARY KEY,
    nome VARCHAR(45),
    descricao VARCHAR(100),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE agenda (
    id INT NOT NULL PRIMARY KEY,
    id_dentista INT NOT NULL, 
    id_funcionario INT NOT NULL,
    nome VARCHAR(45),
    principal BOOLEAN,
    cor VARCHAR(10),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_dentista) REFERENCES ON dentista(id),
    FOREIGN KEY (id_funcionario) REFERENCES ON funcionario(id)
);

CREATE TABLE agendamento (
    id INT NOT NULL PRIMARY KEY,
    id_agenda INT NOT NULL,
    horario TIME NOT NULL, 
    -- procedimentos: relação
    duracao VARCHAR(15),
    status ENUM('pendente', 'iniciado', 'cancelado', 'finalizado')
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_agenda) REFERENCES ON agenda(id)
);

CREATE TABLE atendimento (
    id INT NOT NULL PRIMARY KEY,
    id_agendamento INT NOT NULL,
    status ENUM('pendente', 'iniciado', 'cancelado', 'finalizado'),
    anotacoes TEXT,
    queixas VARCHAR(255),
    valor_total DECIMAL(10,2),
    observacao VARCHAR(255),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_agendamento) REFERENCES ON agendamento(id)
);

CREATE TABLE conta (
    id INT NOT NULL PRIMARY KEY,
    id_devedor INT NOT NULL, 
    id_beneficiario INT NOT NULL,
    valor_liquido DECIMAL(10,2),
    valor_bruto DECIMAL(10,2),
    quantidade_parcelas INT,
    desconto DECIMAL(10,2),
    data_emissao DATE,
    periodicidade ENUM('mensal','quinzenal','semanal','semestral','anula'),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_devedor) REFERENCES ON pessoa(id),
    FOREIGN KEY (id_beneficiario) REFERENCES ON pessoa(id)
);

CREATE TABLE parcela (
    id INT NOT NULL PRIMARY KEY,
    id_conta INT NOT NULL, 
    data_vencimento DATA,
    multa DECIMAL(10,2),
    desconto DECIMAL(10,2),
    valor_parcela DECIMAL(10,2),
    forma_pagamento ENUM('dinheiro', 'PIX', 'cartão crédito', 'cartão débito', 'boleto', 'cheque'),
    paga BOOLEAN,
    numero_parcela INT,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

CREATE TABLE anexo (
    id INT NOT NULL PRIMARY KEY,
    url VARCHAR(250) NOT NULL,
    tamanho VARCHAR(10),
    formato VARCHAR(10),
    nome VARCHAR(45),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME
);

-- Modelagem de Relacionamentos
CREATE TABLE usuario_permissao(
    id INT NOT NULL PRIMARY KEY,
    id_usuario INT NOT NULL,
    id_permissao INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_usuario) REFERENCES ON usuario(id),
    FOREIGN KEY (id_permissao) REFERENCES ON permissao(id)
);

-- Armazenar quais relações da pessoa no sistema: paciente, funcionário, dentista, fornecedor, terceiro
CREATE TABLE pessoa_relacao(
    id INT NOT NULL PRIMARY KEY,
    id_pessoa INT NOT NULL,
    id_relacao INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_pessoa) REFERENCES ON pessoa(id),
    FOREIGN KEY (id_relacao) REFERENCES ON relacao_pessoa(id)
);

CREATE TABLE funcionario_funcao(
    id INT NOT NULL PRIMARY KEY,
    id_funcionario INT NOT NULL,
    id_funcao INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_funcionario) REFERENCES ON funcionario(id),
    FOREIGN KEY (id_funcao) REFERENCES ON funcao(id)
);

CREATE TABLE dentista_paciente(
    id INT NOT NULL PRIMARY KEY,
    id_dentista INT NOT NULL,
    id_paciente INT NOT NULL,
    data_primeiro_atendimento DATE,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_dentista) REFERENCES ON dentista(id),
    FOREIGN KEY (id_paciente) REFERENCES ON paciente(id)
);

CREATE TABLE dentista_especialidade(
    id INT NOT NULL PRIMARY KEY,
    id_dentista INT NOT NULL,
    id_especialidade INT NOT NULL,
    observacao VARCHAR(255),
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_dentista) REFERENCES ON dentista(id),
    FOREIGN KEY (id_especialidade) REFERENCES ON especialidade(id)
);

CREATE TABLE dentista_convenio(
    id INT NOT NULL PRIMARY KEY,
    id_dentista INT NOT NULL,
    id_convenio INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_dentista) REFERENCES ON dentista(id),
    FOREIGN KEY (id_convenio) REFERENCES ON convenio(id)
);

CREATE TABLE tenant_funcionario(
    id INT NOT NULL PRIMARY KEY,
    id_tenant INT NOT NULL,
    id_funcionario INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_tenant) REFERENCES ON tenant(id),
    FOREIGN KEY (id_funcionario) REFERENCES ON funcionario(id)
);

CREATE TABLE dentista_tratamento(
    id INT NOT NULL PRIMARY KEY,
    id_dentista INT NOT NULL,
    id_tratamento INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_dentista) REFERENCES ON dentista(id),
    FOREIGN KEY (id_tratamento) REFERENCES ON tratamento(id)
);

CREATE TABLE paciente_tratamento(
    id INT NOT NULL PRIMARY KEY,
    id_paciente INT NOT NULL,
    id_tratamento INT NOT NULL,
    data_inicio DATE, 
    data_fim DATE,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_paciente) REFERENCES ON paciente(id),
    FOREIGN KEY (id_tratamento) REFERENCES ON tratamento(id)
);

CREATE TABLE dentista_procedimento(
    id INT NOT NULL PRIMARY KEY,
    id_dentista INT NOT NULL,
    id_procedimento INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_dentista) REFERENCES ON dentista(id),
    FOREIGN KEY (id_procedimento) REFERENCES ON procedimento(id)
);

CREATE TABLE agendamento_procedimento(
    id INT NOT NULL PRIMARY KEY,
    id_agendamento INT NOT NULL,
    id_procedimento INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_agendamento) REFERENCES ON agendamento(id),
    FOREIGN KEY (id_procedimento) REFERENCES ON procedimento(id)
);

CREATE TABLE prescricao_medicamento(
    id INT NOT NULL PRIMARY KEY,
    id_prescricao INT NOT NULL,
    id_medicamento INT NOT NULL,
    duracao INT,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_) REFERENCES ON (id),
    FOREIGN KEY (id_) REFERENCES ON (id)
);

CREATE TABLE atestado_cid(
    id INT NOT NULL PRIMARY KEY,
    id_atestado INT NOT NULL,
    id_cid INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_atestado) REFERENCES ON (id),
    FOREIGN KEY (id_cid) REFERENCES ON (id)
);

CREATE TABLE agenda_agendamento(
    id INT NOT NULL PRIMARY KEY,
    id_agenda INT NOT NULL,
    id_agendamento INT NOT NULL,
    created_at DATETIME NOT NULL,
    updated_at DATETIME NOT NULL,
    deleted_at DATETIME,

    FOREIGN KEY (id_agenda) REFERENCES ON agenda(id),
    FOREIGN KEY (id_agendamento) REFERENCES ON agendamento(id)
);

-- Falta a relação de agenda e horário, anexo com [atendimento,pessoa,funcionario,dentista,conta]