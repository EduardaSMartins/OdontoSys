#### Odontosys
 
O sistema a ser implementado tem por objetivo principal atender às necessidades diárias de controle de agendamentos, financeiro, dentistas que compõem a clínica, pacientes, histórico de pacientes, exames e laudos dos mesmos. Para isso temos os requisitos e consequentemente as histórias de usuário e seus respectivos critérios de aceitação.

### Requisitos
- Login
- Cadastro de Clínica
- Cadastro de Dentista
- Cadastro de Paciente
- Cadastro de Especialidade
- Agendamentos
- Atestados e declarações de acompanhantes
- Procedimentos (descrever os instrumentais utilizados)
- Cadastro de Tratamentos 
- Exames e laudos
- Convênios 
- CID Odontologia e Estomatologia
- Histórico de Pacientes
- Financeiro

### Fluxo Principal
Login -> Agenda -> Entrar no atendimento -> Anotações -> Exames, laudos e procedimentos realizados -> Gerar atestado/declarações -> Salvar -> Retorna para agenda

### Histórias de Usuário 
## Template 
COMO UM 
EU QUERO 
PARA QUE 

# Login #
COMO UM dentista ou funcionário
EU QUERO acessar o sistema 
PARA QUE possa realizar minhas tarefas diárias

# Clínica #
COMO UM dentista
EU QUERO cadastrar minha clínica no sistema
PARA QUE possa facilitar meus atendimentos

# Dentista #
# Paciente #
# Especialidade #
# Agendamento #
# Atestados, declarações #
# Receitas #

### Critérios de Aceitação
## Template
DADO QUE 
QUANDO 
ENTÃO

## Telas
- Login 
- Cadastro de Clínica
- Cadastro de Dentista
- Cadastro de Funcionários
- Cadastro de Tipo de Funcionário 
- Cadastro de Agenda
- Cadastro de Horários 
- Cadastro de Procedimentos (tempo médio)
- Cadastro de Especialidades
- Cadastro de Convênios
- Cadastro de Despesas e Receitas
- Cadastro de Doenças
- Perfil
- Atendimento 
- Cadastro de Produtos e Equipamentos
- Permissões
- Modal de Agendamento

## Modelagem do Banco de Dados
usuário, permissão, clínica, dentista, funcionário, agenda, agendamentos, pessoa, paciente, relação (funcionário, paciente, fornecedor), horários, procedimentos, especialidades, convênios, contas, doenças, estado, cidade, bairro, logradouro, produtos, equipamentos, modelos de documentos (declaração, atestado, receita), anexos (imagens, documentos)

## Especificação das Entidades
O timestamps referencia os atributos: created at, updated at e deleted at

- Usuário
    - Atributos: id, nickname, email, senha, tipo (paciente, funcionário, dentista), timestamps
- Permissão
    - Atributos: id, tenant, nome, timestamps
- Usuário-Permissão
    - Atributos: id, id usuário, id permissão, status, timestamps
- Clínica (tenant)
    - Atributos: id, id logradouro, código, nome, status (ativo, inativo), timestamps
- Dentista
    - Atributos: id, CRO, CFO, formação, status (ativo, inativo, afastado), timestamps
- Funcionário
    - Atributos: id, id pessoa, cargo, data de admissão, data de demissão, salário, método de pagamento (pix, dinheiro, depósito), tipo de contrato (CLT, PJ, estágio), jornada de trabalho, horários, timestamps
- Agenda
    - Atributos: id, id dentista, nome, <horários>, timestamps
- Agendamentos
    - Atributos: id, id agenda, id paciente, timestamps
- Agendamento-Procedimentos
    - Atributos: id, id agendamento, id procedimento, valor, duração, timestamps
- Pessoa
    - Atributos: id, id logradouro, avatar, nome, cpf/cnpj, data de nascimento, data da primeira consulta, timestamps
- Telefone
    - Atributos: id, id pessoa, número, tipo (fixo, celular, whatsapp), observação, timestamps
- Doenças (CID e CID OB)
    - Atributos: id, código, descrição, tipo (CID ou CID OB)
- Paciente
    - Atributos: id, id pessoa, primeiro atendimento, último atendimento, histórico familiar, observações, medicamentos contínuos, alergias, timestamps
- Paciente-Doenças
    - Atributos: id, id paciente, id doença, observação, timestamps
- Relação (funcionário, paciente, fornecedor)
    - Atributos: id, descrição, timestamps
- Horários (referentes à agenda)
    - Atributos: <em aberto>
- Procedimentos
    - Atributos: id, descrição, duração, valor, timestamps
- Especialidades
    - Atributos: id, nome, descrição, timestamps
- Dentista-Especialidades
    - Atributos: id, id dentista, id especialidade, observação, timestamps
- Convênios
    - Atributos: id, nome, descrição, timestamps
- Dentista-Convênios
    - Atributos: id, id dentista, id convênio, observação, timestamps
- Paciente-Convênios
    - Atributos: id, id paciente, id convênio, número da carteirinha, observação, timestamps
- Contas
    - Atributos: id, tipo (a pagar, a receber), método de pagamento (cartão de crédito, cartão de débito, pix, depósito, cheque, dinheiro), valor, desconto, multa, descrição, devedor, beneficiário, anexos
- Estado
    - Atributos: id, nome, sigla
- Cidade
    - Atributos: id, id estado, nome
- Bairro
    - Atributos: id, id cidade, nome
- Logradouro
    - Atributos: id, id bairro, descrição, número, complemento, timestamps
- Produtos
    - Atributos: id, nome, descrição, lote, fabricação, vencimento, quantidade em estoque, timestamps
- Equipamentos
    - Atributos: id, nome, descrição, especificações, timestamps
- Modelos de documentos (declaração, atestado, receita)
    - Atributos: id, nome, modelo (TEXT), tipo (declaração, atestado, receita, outro), timestamps
- Anexos (imagens, documentos)
    - Atributos: id, url, tipo, tamanho, timestamps