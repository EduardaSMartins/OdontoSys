# Odontosys
 
O sistema a ser implementado tem por objetivo principal atender às necessidades diárias de controle de agendamentos, financeiro, dentistas que compõem a clínica, pacientes, histórico de pacientes, exames e laudos dos mesmos. Para isso temos os requisitos e consequentemente as histórias de usuário e seus respectivos critérios de aceitação. A implementação será realizada totalmente por mim, Eduarda Martins, a fim de aplicar conhecimentos adquiridos na graduação e também em cursos secundários. 

* Observação: o presente projeto tem por objetivo passar por todas as fases que um projeto real teria de passar, a fim de demonstrar como seria o desenvolvimento total de um projeto de sistema web com a aplicação de metodologia ágil.

* Passos a serem seguidos

- Entrevista (Realizada dia 12/06/2025)

- Histórias de usuário (Realizada dia 13/06/2025)

- Critérios de aceitação (Realizada dia 13/06/2025)

- Definir funcionalidades (Realizada dias 13/06/2025 e 16/06/2025)

- Precificar (Realizada dia 16/06/2025)

- Modelagem de banco de dados (Pendente)

- Protótipo de telas (Pendente)

- Backlog de produto (Pendente)

- Planning poker

- Entrega 

* Os passos de planning poker e entregas são feitas de forma constante, por isso terá um documento específico apenas para documentar esse processo.

## Tecnologias Utilizadas

- Prototipação de Telas: Figma

- Banco de Dados: MySQL, Docker

- Backend: Laravel

- Frontend: Vue.js, Nuxt, Axios, Element, Tailwind

## Requisitos do MVP
- Login

- Cadastro de Clínica

- Cadastro de Dentista

- Cadastro de Paciente

- Cadastro de Especialidade

- Gerenciamento de Agendamento

- Cadastro de Modelo de Documento

- Gerar Atestado e Declaração de Acompanhantes

- Gerar Termo de Consentimento

- Gerar prescrição

- Cadastro de Procedimento (descrever os instrumentais utilizados)

- Cadastro de Tratamento

- Cadastro Exames e Laudos na Ficha do Paciente

- Cadastro de Convênio

- Cadastro do CID Odontologia e Estomatologia

- Histórico do Paciente

- Gerenciamento do Financeiro

- Cadastro de Usuário

- Gerenciamento do Perfil

- Gerenciamento de Atendimento


## Fluxo Principal

Login -> Agenda -> Entrar no atendimento -> Anotações -> Exames, laudos e procedimentos realizados -> Gerar atestado/declarações -> Salvar -> Retorna para agenda


## Histórias de Usuário 

As histórias de usuário representam requisitos que se tornarão funcionalidades em um sistema, e é a forma que o cliente consegue se comunicar com o time de forma que todos entendam o que está sendo solicitado, de forma breve porém que detalha o que precisa ser feito, por quem deve ser feito e qual o objetivo dessa funcionalidade. 

## Template 
COMO UM <usuário> EU QUERO <ação/objetivo> PARA QUE <porque, resultado, objetivo>

### Login
COMO UM dentista ou funcionário
EU QUERO acessar o sistema 
PARA QUE possa realizar minhas tarefas diárias

### Clínica
COMO UM dentista
EU QUERO cadastrar minha clínica no sistema
PARA QUE possa facilitar meus atendimentos

### Dentista
COMO UM usuário administrador
EU QUERO cadastrar um novo dentista
PARA QUE possa aumentar a quantidade de profissionais que atendem na clínica

### Paciente
COMO UM dentista
OU funcionário
EU QUERO adicionar um novo paciente 
PARA QUE eu possa criar agendamentos para ele e realizar demais operações dentro do sistema em seu nome

### Especialidade
COMO UM dentista
OU funcionário
EU QUERO adicionar uma especialidade na listagem de 
PARA QUE eu possa atribuir ela a um dos dentistas da clínica a qual pertenço

### Agendamento
COMO UM dentista
OU funcionário
EU QUERO adicionar um agendamento para um paciente
PARA QUE sejam lembrados quais pacientes possuem um agendamento para cada dia

### Modelo de Documento
COMO UM dentista
EU QUERO personalizar os modelos de documentos que gero atestados, declarações e prescriçãos para meus pacientes
PARA QUE gerem documentos para os pacientes com a logo da clínica, meu nome, nome do paciente e demais informações necessárias

### Atestado e Declaração
COMO UM dentista
EU QUERO imprimir atestados e declarações para meus pacientes e seus acompanhantes
PARA QUE hajam provas de que eles estiveram sob meus cuidados em determinado dia e horário

### Termo de Consentimento
COMO UM dentista
EU QUERO imprimir termo de consentimento para procedimentos em que a assinatura do paciente ou de seu responsável 
PARA QUE esse documento seja arquivado como prova do consentimento do procedimento por parte do paciente

### Prescrição
COMO UM dentista
EU QUERO gerar prescrição de medicamentos indicados após a realização de determinados procedimentos a meus pacientes
PARA QUE eles tenham um lembrete e liberação para comprar e utilizar aqueles medicamentos

### Procedimento
COMO UM dentista
OU funcionário
EU QUERO adicionar um procedimento à lista de procedimentos
PARA QUE eles estejam disponíveis no momento do atendimento dos pacientes

### Tratamento
COMO UM dentista
EU QUERO adicionar um novo tratamento à lista daqueles já existentes
PARA QUE eu especifique quais tratamentos eu faço

COMO UM funcionário
EU QUERO adicionar um novo tratamento à lista daqueles já existentes
PARA QUE no ato do agendamento para um paciente as recepcionistas saibam quais tratamentos cada um dos dentistas da clínica fazem

### Exames e Laudos do Paciente
COMO UM dentista
EU QUERO anexar imagens de exames e documentos dos laudos na ficha do paciente
PARA QUE eu tenha como acessar o histórico do tratamento 

### Convênio
COMO UM dentista
EU QUERO adicionar um convênio à lista daqueles já existentes no meu cadastro
PARA QUE saibam que atendo por ele

### CID de Odontologia e Estomatologia
COMO UM dentista
EU QUERO adicionar um CID no atendimento de um paciente 
PARA QUE o atestado seja gerado com o CID correto e também fique armazenado no histórico do paciente que nesse atendimento ele estava com esse problema

### Atendimento
COMO UM dentista 
EU QUERO iniciar o atendimento referente a um agendamento de um paciente a fim de preencher o prontuário, informar os procedimentos realizados, o tempo utilizado, adicionar demais observações e finalizar o atendimento gerando uma conta a receber daquele paciente
PARA QUE possa ser salvo no histórico do paciente aquele atendimento e também controlar a parte financeira do atendimento

### Financeiro
COMO UM funcionário 
OU dentista
EU QUERO acompanhar a parte de contas a pagar e a receber referentes à clínica no geral
PARA QUE esteja ciente do que será recebido e o que deve ser pago

### Usuário
COMO UM dentista
EU QUERO organizar as permissões do que cada um dos usuários poderá ver e acessar no sistema
PARA QUE eu tenha controle do que cada funcionário pode acessar

### Perfil
COMO UM usuário do sistema
EU QUERO acessar meu perfil
PARA QUE possa alterar minhas informações


## Critérios de Aceitação

## Template
DADO QUE <cenário> QUANDO <ação> ENTÃO <resultado>

### Login
* HU

COMO UM dentista ou funcionário
EU QUERO acessar o sistema 
PARA QUE possa realizar minhas tarefas diárias

* CAs

DADO QUE eu estou na página de login
QUANDO eu preencho o formulário e os dados estão corretos
ENTÃO meu login é feito e posso acessar as funcionalidades do sistema

### Clínica
* HU

COMO UM dentista 
EU QUERO cadastrar minha clínica no sistema
PARA QUE possa facilitar meus atendimentos

* CAs

DADO QUE eu estou logado no sistema
QUANDO eu clico na página de clínica que está no menu superior
ENTÃO devo ser redirecionado para a tela de editar as informações da clínica

DADO QUE eu estou na tela de edição de dados da clínica
QUANDO eu clico no botão de "Salvar"
ENTÃO as informações são salvas e a tela é recarregada

### Dentista
* HU

COMO UM usuário administrador
EU QUERO cadastrar um novo dentista
PARA QUE possa aumentar a quantidade de profissionais que atendem na clínica

* CAs

DADO QUE estou logado no sistema
QUANDO eu clico na página de listagem de "Dentistas" que está no menu superior
ENTÃO devo ser redirecionado para a tela de listagem de dentistas 

DADO QUE estou na página de listagem de dentistas
QUANDO eu clico no botão de "Novo"
ENTÃO sou redirecionado para o formulário de dados de dentistas

DADO QUE estou na página de listagem de dentistas
QUANDO eu clico no botão de "Editar" de um dos itens da lista
ENTÃO sou redirecionado para o formulário de dados de dentistas

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Salvar" no canto direito inferior 
ENTÃO os dados devem ser salvos e deve ter um redirecionamento para a tela de listagem de dentistas

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Cancelar" no canto direito inferior 
ENTÃO devo ser redirecionado para a tela de listagem de dentistas

### Paciente
* HU

COMO UM dentista
OU funcionário
EU QUERO adicionar um novo paciente 
PARA QUE eu possa criar agendamentos para ele e realizar demais operações dentro do sistema em seu nome

* CAs

DADO QUE estou logado no sistema
QUANDO eu clico na página de listagem de "Pacientes" que está no menu superior
ENTÃO devo ser redirecionado para a tela de listagem de pacientes

DADO QUE estou na página de listagem de pacientes
QUANDO eu clico no botão de "Novo"
ENTÃO sou redirecionado para o formulário de dados de pacientes

DADO QUE estou na página de listagem de pacientes
QUANDO eu clico no botão de "Editar" de um dos itens da lista
ENTÃO sou redirecionado para o formulário de dados de pacientes

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Salvar" no canto direito inferior 
ENTÃO os dados devem ser salvos e deve ter um redirecionamento para a tela de listagem de pacientes

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Cancelar" no canto direito inferior 
ENTÃO devo ser redirecionado para a tela de listagem de pacientes

### Especialidade
* HU

COMO UM dentista
OU funcionário
EU QUERO adicionar uma especialidade na listagem de 
PARA QUE eu possa atribuir ela a um dos dentistas da clínica a qual pertenço

* CAs

DADO QUE estou logado no sistema
QUANDO eu clico na página de listagem de "Especialidades" que está no menu superior
ENTÃO devo ser redirecionado para a tela de listagem de especialidades

DADO QUE estou na página de listagem de especialidades
QUANDO eu clico no botão de "Novo"
ENTÃO sou redirecionado para o formulário de dados de especialidades

DADO QUE estou na página de listagem de especialidades
QUANDO eu clico no botão de "Editar" de um dos itens da lista
ENTÃO sou redirecionado para o formulário de dados de especialidades

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Salvar" no canto direito inferior 
ENTÃO os dados devem ser salvos e deve ter um redirecionamento para a tela de listagem de especialidades

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Cancelar" no canto direito inferior 
ENTÃO devo ser redirecionado para a tela de listagem de especialidades

### Agendamento
* HU

COMO UM dentista
OU funcionário
EU QUERO adicionar um agendamento para um paciente
PARA QUE sejam lembrados quais pacientes possuem um agendamento para cada dia

* CAs

DADO QUE estou na tela inicial do sistema, que é a agenda
QUANDO clicar no botão "+" e abrirá um diálogo com os campos básicos para adicionar um novo agendamentos
ENTÃO após preencher os campos e clicar no botão "Salvar" os dados serão salvos e o novo agendamento deverá ser incluído na agenda

DADO QUE estou na tela inicial do sistema
QUANDO clicar no botão "Atender" que estará sobre o paciente 
ENTÃO serei redirecinado para a tela de atendimento

DADO QUE estou na tela inicial do sistema
QUANDO clicar em cima de um dos agendamentos e abrir o diálogo com os dados daquele agendamento e clicar em "Cancelar agendamento"
ENTÃO o agendamento deverá ser cancelado mas não excluído

### Modelo de Documento
* HU

COMO UM dentista
EU QUERO personalizar os modelos de documentos que gero atestados, declarações e prescriçãos para meus pacientes
PARA QUE gerem documentos para os pacientes com a logo da clínica, meu nome, nome do paciente e demais informações necessárias

* CAs

DADO QUE estou logado no sistema
QUANDO eu clico na página de listagem de "Modelos de Documentos" que está no menu superior
ENTÃO devo ser redirecionado para a tela de listagem dos modelos de documentos

DADO QUE estou na página de listagem de modelos de documentos
QUANDO eu clico no botão de "Novo"
ENTÃO sou redirecionado para a tela no estilo word para criar um novo modelo de documento

DADO QUE estou na página de listagem de modelo de documentos
QUANDO eu clico no botão de "Editar" de um dos itens da lista
ENTÃO sou redirecionado para a tela no estilo word para editar o modelo de documento

DADO QUE estou no formulário de determinado modelo de documento
QUANDO clico no botão de "Salvar" no canto direito inferior 
ENTÃO os dados devem ser salvos e deve ter um redirecionamento para a tela de listagem de modelos de docuemtnos

DADO QUE estou no formulário de determinado modelo de documento
QUANDO clico no botão de "Cancelar" no canto direito inferior 
ENTÃO devo ser redirecionado para a tela de listagem de modelos de documentos

### Atestado e Declaração
* HU

COMO UM dentista
EU QUERO imprimir atestados e declarações para meus pacientes e seus acompanhantes
PARA QUE hajam provas de que eles estiveram sob meus cuidados em determinado dia e horário

* CAs

DADO QUE estou na tela de atendimento
QUANDO clicar em um botão de "Gerar Atestado"
ENTÃO o documento deverá ser aberto na lateral direita com os dados do paciente 

DADO QUE estou na tela de atendimento
QUANDO clicar em um botão de "Gerar Declaração"
ENTÃO um diálogo deve aparecer para selecionar se a declaração é para o paciente ou para um acompanhante

DADO QUE estou no diálogo da declaração
QUANDO selecionar a opção paciente
ENTÃO o modelo deve ser aberto na lateral direita com os dados do paciente e a data

DADO QUE estou no diálogo da declaração
QUANDO clicar no botão "Cancelar"
ENTÃO o diálogo deve ser fechado

DADO QUE estou no diálogo da declaração
QUANDO selecionar a opção acompanhante
ENTÃO devem aparecer os campos de nome e CPF que devem ser preenchidos com os dados do acompanhante

DADO QUE estou no diálogo da declaração, selecionei a opção de acompanhante e preenchi os dados
QUANDO clicar em "Gerar"
ENTÃO o modelo deve ser aberto na lateral direita com os dados do paciente e a data

### Termo de Consentimento
* HU

COMO UM dentista
EU QUERO imprimir termo de consentimento para procedimentos em que a assinatura do paciente ou de seu responsável 
PARA QUE esse documento seja arquivado como prova do consentimento do procedimento por parte do paciente

* CAs

DADO QUE um atendimento que foi iniciado contenha algum procedimento que precise de um termo de consentimento do que será feito de forma escrita, um botão "Termo de Consentimento" deverá estar disposto na tela de atendimento
QUANDO for clicado 
ENTÃO um termo com os dados do paciente já preenchidos deve ser aberto na lateral direito

DADO QUE o termo de consentimento está aberto e há um botão de imprimir nele
QUANDO clicá-lo
ENTÃO deve abrir um diálogo de impressão para que a mesma possa ser feita

### Prescrição
* HU

COMO UM dentista
EU QUERO gerar prescriçãos de medicamentos indicados após a realização de determinados procedimentos a meus pacientes
PARA QUE eles tenham um lembrete e liberação para comprar e utilizar aqueles medicamentos

* CAs

DADO QUE estou na tela de atendimento
QUANDO clicar no botão "Gerar Prescrição"
ENTÃO um diálogo deve ser aberto com os seguintes campos: medicamento, quantidade, tempo, e caso seja necessário adicionar mais de um medicamento haverá um botão "+" para adicionar mais uma linha com os mesmos campos

DADO QUE estou no diálogo de seleção dos medicamentos
QUANDO clicar em "Salvar" 
ENTÃO uma prescrição será gerada e ficará disponível para impressão

DADO QUE estou no diálogo de seleção dos medicamentos
QUANDO clicar em "Cancelar" 
ENTÃO o diálogo será fechado e os dados não devem ser salvos

DADO QUE estou na tela de atendimento e quero imprimir a prescrição de medicamentos
QUANDO clicar no botão de "Imprimir Prescrição"
ENTÃO deve abrir um diálogo de impressão para que a mesma possa ser feita

### Procedimento
* HU 

COMO UM dentista
OU funcionário
EU QUERO adicionar um procedimento à lista de procedimentos
PARA QUE eles estejam disponíveis no momento do atendimento dos pacientes

* CAs

DADO QUE estou logado no sistema
QUANDO eu clico na página de listagem de "Procedimentos" que está no menu superior
ENTÃO devo ser redirecionado para a tela de listagem de procedimentos

DADO QUE estou na página de listagem de procedimentos
QUANDO eu clico no botão de "Novo"
ENTÃO sou redirecionado para o formulário de dados de procedimentos

DADO QUE estou na página de listagem de procedimentos
QUANDO eu clico no botão de "Editar" de um dos itens da lista
ENTÃO sou redirecionado para o formulário de dados de procedimentos

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Salvar" no canto direito inferior 
ENTÃO os dados devem ser salvos e deve ter um redirecionamento para a tela de listagem de procedimentos

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Cancelar" no canto direito inferior 
ENTÃO devo ser redirecionado para a tela de listagem de procedimentos

### Tratamento
* HU

COMO UM dentista
EU QUERO adicionar um novo tratamento à lista daqueles já existentes
PARA QUE eu especifique quais tratamentos eu faço

COMO UM funcionário
EU QUERO adicionar um novo tratamento à lista daqueles já existentes
PARA QUE no ato do agendamento para um paciente as recepcionistas saibam quais tratamentos cada um dos dentistas da clínica fazem

* CAs

DADO QUE estou logado no sistema
QUANDO eu clico na página de listagem de "Tratamentos" que está no menu superior
ENTÃO devo ser redirecionado para a tela de listagem de tratamentos

DADO QUE estou na página de listagem de tratamentos
QUANDO eu clico no botão de "Novo"
ENTÃO sou redirecionado para o formulário de dados de tratamentos

DADO QUE estou na página de listagem de tratamentos
QUANDO eu clico no botão de "Editar" de um dos itens da lista
ENTÃO sou redirecionado para o formulário de dados de tratamentos

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Salvar" no canto direito inferior 
ENTÃO os dados devem ser salvos e deve ter um redirecionamento para a tela de listagem de tratamentos

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Cancelar" no canto direito inferior 
ENTÃO devo ser redirecionado para a tela de listagem de tratamentos

### Exames e Laudos do Paciente
* HU 

COMO UM dentista
EU QUERO anexar imagens de exames e documentos dos laudos na ficha do paciente
PARA QUE eu tenha como acessar o histórico do tratamento 

* CAs

DADO QUE estou na tela de atendimento de um paciente
QUANDO eu clicar na aba de Exames e Laudos
ENTÃO devem ser listados todos os exames junto com laudos daquele paciente, do mais novo para o mais antigo

DADO QUE estou na aba de exames e laudos
QUANDO clicar em um exame 
ENTÃO ele deve ser aberto para que eu possa analisar as imagens e laudos

### Convênio
* HU 

COMO UM dentista
EU QUERO adicionar um convênio à lista daqueles já existentes no meu cadastro
PARA QUE saibam que atendo por ele

* CAs 

DADO QUE estou logado no sistema
QUANDO eu clico na página de listagem de "Convênios" que está no menu superior
ENTÃO devo ser redirecionado para a tela de listagem de convênios

DADO QUE estou na página de listagem de convênios
QUANDO eu clico no botão de "Novo"
ENTÃO sou redirecionado para o formulário de dados de convênios

DADO QUE estou na página de listagem de convênios
QUANDO eu clico no botão de "Editar" de um dos itens da lista
ENTÃO sou redirecionado para o formulário de dados de convênios

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Salvar" no canto direito inferior 
ENTÃO os dados devem ser salvos e deve ter um redirecionamento para a tela de listagem de convênios

DADO QUE estou no formulário de determinado dentista
QUANDO clico no botão de "Cancelar" no canto direito inferior 
ENTÃO devo ser redirecionado para a tela de listagem de convênios

### CID de Odontologia e Estomatologia
* HU 

COMO UM dentista
EU QUERO adicionar um CID no atendimento de um paciente 
PARA QUE o atestado seja gerado com o CID correto e também fique armazenado no histórico do paciente que nesse atendimento ele estava com esse problema

* CAs

DADO QUE estou no atendimento de um paciente
QUANDO clicar no botão de gerar atestado 
ENTÃO um diálogo deve ser aberto para eu selecionar o CID e tempo do atestado

DADO QUE estou no diálogo de atestado
QUANDO clicar no botão de "Imprimir"
ENTÃO um diálogo deve ser aberto para eu imprimir o atestado

DADO QUE estou na tela de listagem de CIDs
QUANDO clicar no botão de "Novo"
ENTÃO um diálogo deve ser aberto para eu criar um novo CID

DADO QUE estou com o diálogo de novo CID aberto
QUANDO clicar no botão de "Salvar"
ENTÃO o CID deve ser salvo e inserido na listagem

DADO QUE estou na tela de listagem de CIDs
QUANDO clicar no botão de "Cancelar"
ENTÃO o diálogo deve ser fechado

DADO QUE estou na tela de listagem de CIDs
QUANDO clicar no botão de "Excluir"
ENTÃO aquele CID deve ser removido da listagem de dados

### Atendimento
* HU

COMO UM dentista 
EU QUERO iniciar o atendimento referente a um agendamento de um paciente a fim de preencher o prontuário, informar os procedimentos realizados, o tempo utilizado, adicionar demais observações e finalizar o atendimento gerando uma conta a receber daquele paciente
PARA QUE possa ser salvo no histórico do paciente aquele atendimento e também controlar a parte financeira do atendimento

* CAs

DADO QUE estou na agenda 
QUANDO clicar no botão de "Iniciar Atendimento"
ENTÃO devo ser redirecionado para a tela de atendimento, que deve conter as seguintes abas: dados básicos, procedimentos realizados, histórico, atestados, exames

### Financeiro
* HU 

COMO UM funcionário 
OU dentista
EU QUERO acompanhar a parte de contas a pagar e a receber referentes à clínica no geral
PARA QUE esteja ciente do que será recebido e o que deve ser pago

* CAs

DADO QUE estou logado no sistema
QUANDO eu clico na página de listagem de "Financeiro" que está no menu superior
ENTÃO devo ser redirecionado para a tela de listagem de contas

DADO QUE estou na tela do financeiro
QUANDO clicar em "Novo" 
ENTÃO deve ser aberta a tela de nova conta

DADO QUE estou na tela do financeiro
QUANDO clicar em "Editar" 
ENTÃO deve ser aberta a tela de conta com os dados daquela em que cliquei

DADO QUE estou na tela de nova conta
QUANDO clicar no botão "Salvar" 
ENTÃO a conta deve ser salva e adicionada na listagem

DADO QUE estou na tela de editar conta
QUANDO clicar no botão "Salvar" 
ENTÃO a conta deve ter os dados editados

DADO QUE estou na tela de nova conta
QUANDO clicar no botão "Cancelar" 
ENTÃO devo ser redirecionado para a tela de listagem de contas

DADO QUE estou na tela de editar conta
QUANDO clicar no botão "Cancelar" 
ENTÃO devo ser redirecionado para a tela de listagem de contas

### Usuário
* HU

COMO UM dentista
EU QUERO organizar as permissões do que cada um dos usuários poderá ver e acessar no sistema
PARA QUE eu tenha controle do que cada funcionário pode acessar

* CAs

DADO QUE estou logado no sistema
QUANDO eu clico na página de listagem de "Usuários" que está no menu superior
ENTÃO devo ser redirecionado para a tela de listagem de usuários

DADO QUE estou na tela de listagem de usuários
QUANDO eu clico em editar um usuário
ENTÃO devo ver todas as permissões do sistema em uma nova tela e devem ser destacadas aquelas que ele tem 

DADO QUE estou na tela de permissões de um usuário
QUANDO clico em "Salvar"
ENTÃO devem ser salvas as permissões dadas aquele usuário e devo ser redirecionado para a tela de listagem de usuários

DADO QUE estou na tela de permissões de um usuário
QUANDO clico em "Cancelar"
ENTÃO devo ser redirecionado para a tela de listagem de usuários

### Perfil
* HU 

COMO UM usuário do sistema
EU QUERO acessar meu perfil
PARA QUE possa alterar minhas informações

* CAs

DADO QUE estou logado no sistema
QUANDO clicar no avatar na parte superior direita da tela
ENTÃO deverá redirecionar para a tela de editar perfil

DADO QUE estou na tela de "Editar Perfil"
QUANDO clicar no botão de "Salvar"
ENTÃO os dados devem ser salvos e retornar para a tela inicial

DADO QUE estou na tela de "Editar Perfil"
QUANDO clicar no botão de "Cancelar"
ENTÃO devo retornar para a tela inicial

## Telas
* Telas

- Tenant (clínica): usuários, dados básicos

- Usuário: dados básicos, permissões

- Paciente: dados básicos, pessoa, endereço, telefones, convênios, tratamentos, histórico, procedimentos, situação financeira

- Funcionário: dados de pessoa, dados de funcionário, telefones, endereço

- Função: dados básicos

- Dentista: dados básicos, pessoa, especialidade, convênios, procedimentos, tratamentos

- Especialidade: dados básicos

- Convênio: dados básicos

- Tratamento: dados básicos, dentistas responsáveis

- Procedimento: dados básicos, dentistas responsáveis

- Modelo de Documento: dados básicos, dentistas responsáveis 

- Medicamento: dados básicos

- Agenda: dados básicos, responsável

- Atendimento: dados básicos, prescrições, atestado, declarações, termos, anexos

- Conta: dados básicos, devedor, beneficiário, anexos, parcela

- Parcela: conta referente, dados básicos

## Especificação das Entidades e Relacionamentos do Banco de Dados
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

- Agendamento
    - Atributos: id, id agenda, id paciente, tipo (procedimento, avaliação), status (finalizado, pendente, cancelado), timestamps

- Agendamento-Procedimentos
    - Atributos: id, id agendamento, id procedimento, valor, duração, timestamps

- Pessoa
    - Atributos: id, id logradouro, avatar, nome, cpf/cnpj, data de nascimento, data da primeira consulta, timestamps

- Telefone
    - Atributos: id, id pessoa, número, tipo (fixo, celular, whatsapp), observação, timestamps

- Doenças (CID e CID OB)
    - Atributos: id, código, descrição, tipo (CID ou CID OB)

- Paciente
    - Atributos: id, id pessoa, primeiro atendimento, último atendimento, histórico familiar, observações, medicamentos contínuos, alergias, cirurgias, timestamps

- Paciente-Doenças
    - Atributos: id, id paciente, id doença, observação, timestamps

- Relação (funcionário, paciente, fornecedor)
    - Atributos: id, descrição, timestamps

- Atendimento
    - Atributos: id, id agendamento, id atestado, id prescrição, descrição, queixa, observação, 

- Atendimento-Procedimentos
    - Atributos: id, id atendimento, id procedimento, valor, timestamps

- Horários (referentes à agenda)
    - Atributos: id, id agenda, 

- Inatividade (referente à agenda)
    - Atributos: id, id agenda, data, dia todo (boolean), horário 

- Procedimentos
    - Atributos: id, descrição, duração, valor, timestamps

- Dentista-Procedimento
    - Atributos: id, id procedimento, id dentista, observação

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
    - Atributos: id, tipo (a pagar, a receber), método de pagamento (cartão de crédito, cartão de débito, pix, depósito, cheque, dinheiro), valor, desconto, multa, descrição, devedor, beneficiário, parcelas, periodicidade, anexos, timestamps

- Parcelas
    - Atributos: id, id conta, data de vencimento, status, número da parcela, valor multa, valor desconto, observação, timestamps

- Estado
    - Atributos: id, nome, sigla

- Cidade
    - Atributos: id, id estado, nome

- Bairro
    - Atributos: id, id cidade, nome

- Logradouro
    - Atributos: id, id bairro, descrição, número, complemento, timestamps

- Modelos de documentos (declaração, atestado, prescrição)
    - Atributos: id, nome, modelo (TEXT), tipo (declaração, atestado, prescrição, outro), timestamps

- Anexos (imagens, documentos)
    - Atributos: id, url, tipo, tamanho, timestamps


### Banco de Dados

* Entidades
tenant - clínica, usuário , permissão , pessoa , telefone, estado, cidade, bairro , logradouro, funcionário, função , dentista, paciente, especialidade, convênio, tratamento, procedimento , modelo de documento, atestado, declaração , termo de consentimento, prescrição, CID, agenda, agendamento, atendimento, contas

* Relacionamentos

tenant - usuário, tenant - permissão, tenant - pessoa , estado - cidade, cidade - beirro , bairro - logradouro, logradouro - pessoa => endereço, pessoa - telefone , funcionário - pessoa , função - funcionário, funcionário - clínica => clínica tem funcionários, dentista - funcionário => funcionários trabalham para dentista, dentista - especialidade, dentista - convênio, dentista - tratamento, dentista - procedimento, dentista - agenda, agenda - horário , agenda - agendamento, agendamento - procedimento, agendamento - atendimento, atendimento - dentista, pessoa - paciente, paciente - atendimento, atendimento - conta, atendimento - atestado , atendimento - prescrição, atendimento - declaração
atendimento - anexo 


### Funcionalidades Futuras

- Equipamentos
    - Atributos: id, nome, descrição, especificações, timestamps

- Produtos
    - Atributos: id, nome, descrição, lote, fabricação, vencimento, quantidade em estoque, timestamps