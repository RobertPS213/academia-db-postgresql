-- 01 - Criação do DATABASE

/*
CREATE DATABASE academia_db
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LOCALE_PROVIDER = 'libc'
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;
*/

-- 02 - Criação das Tabelas

CREATE TABLE aluno(
	idaluno SERIAL,
	numero_matricula VARCHAR(20) NOT NULL,
	nome VARCHAR(120) NOT NULL,
	cpf VARCHAR(14) NOT NULL,
	data_nascimento DATE NOT NULL,
	telefone VARCHAR(20) NOT NULL,
	email VARCHAR(120),
	data_abertura DATE NOT NULL DEFAULT CURRENT_DATE,
	status_matricula VARCHAR(20) NOT NULL DEFAULT 'ATIVA',

	CONSTRAINT pk_aluno_idaluno PRIMARY KEY (idaluno),
	CONSTRAINT un_aluno_cpf UNIQUE (cpf),
	CONSTRAINT un_aluno_email UNIQUE (email),
	CONSTRAINT un_aluno_numeromatricula UNIQUE (numero_matricula),
	CONSTRAINT chk_aluno_statusmatricula CHECK (status_matricula IN ('ATIVA', 'TRANCADA', 'INATIVA'))
);


CREATE TABLE cargo(
	idcargo SERIAL,
	nome VARCHAR(60) NOT NULL,
	descricao TEXT,
	salario_base NUMERIC(10, 2) NOT NULL,

	CONSTRAINT pk_cargo_idcargo PRIMARY KEY (idcargo),
	CONSTRAINT un_cargo_nome UNIQUE (nome)
);


CREATE TABLE plano(
	idplano SERIAL,
	nome VARCHAR(60) NOT NULL,
	duracao_meses INTEGER NOT NULL,
	valor NUMERIC(10, 2) NOT NULL,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,

	CONSTRAINT pk_plano_idplano PRIMARY KEY (idplano),
	CONSTRAINT un_plano_nome UNIQUE (nome)
);


CREATE TABLE forma_pagamento(
	idformapagamento SERIAL,
	descricao VARCHAR(40) NOT NULL,

	CONSTRAINT pk_formapagamento_idformapagamento PRIMARY KEY (idformapagamento),
	CONSTRAINT un_formapagamento_descricao UNIQUE (descricao)
);


CREATE TABLE grupo_muscular(
	idgrupomuscular SERIAL,
	nome VARCHAR(50) NOT NULL,

	CONSTRAINT pk_grupomuscular_idgrupomuscular PRIMARY KEY (idgrupomuscular),
	CONSTRAINT un_grupomuscular_nome UNIQUE (nome)
);


CREATE TABLE exercicio(
	idexercicio SERIAL,
	nome VARCHAR(100) NOT NULL,
	descricao_execucao TEXT,

	CONSTRAINT pk_exercicio_idexercicio PRIMARY KEY (idexercicio),
	CONSTRAINT un_exercicio_nome UNIQUE (nome)
);


CREATE TABLE equipamento(
	idequipamento SERIAL,
	nome VARCHAR(100) NOT NULL,
	marca VARCHAR(60),
	numero_serie VARCHAR(50),
	data_aquisicao DATE NOT NULL,
	status VARCHAR(25) NOT NULL DEFAULT 'OPERACIONAL',

	CONSTRAINT pk_equipamento_idequipamento PRIMARY KEY (idequipamento),
	CONSTRAINT un_equipamento_numeroserie UNIQUE (numero_serie),
	CONSTRAINT chk_equipamento_status CHECK (status IN ('OPERACIONAL', 'EM_MANUTENCAO', 'INATIVO'))
);


CREATE TABLE funcionario(
	idfuncionario SERIAL,
	nome VARCHAR(120) NOT NULL,
	cpf VARCHAR(14) NOT NULL,
	cref VARCHAR(20),
	telefone VARCHAR(20) NOT NULL,
	data_contratacao DATE NOT NULL DEFAULT CURRENT_DATE,
	ativo BOOLEAN NOT NULL DEFAULT TRUE,
	cargo_id INTEGER NOT NULL,

	CONSTRAINT pk_funcionario_idfuncionario PRIMARY KEY (idfuncionario),
	CONSTRAINT un_funcionario_cpf UNIQUE (cpf),
	CONSTRAINT un_funcionario_cref UNIQUE (cref),
	CONSTRAINT fk_funcionario_cargoid FOREIGN KEY (cargo_id) REFERENCES cargo (idcargo)
);


CREATE TABLE manutencao(
	idmanutencao SERIAL,
	tipo VARCHAR(20) NOT NULL,
	descricao TEXT NOT NULL,
	data_manutencao DATE NOT NULL DEFAULT CURRENT_DATE,
	custo NUMERIC(10, 2) NOT NULL DEFAULT 0.00,
	equipamento_id INTEGER NOT NULL,

	CONSTRAINT pk_manutencao_idmanutencao PRIMARY KEY (idmanutencao),
	CONSTRAINT chk_manutencao_tipo CHECK (tipo IN('PREVENTIVA', 'CORRETIVA')),
	CONSTRAINT fk_manutencao_equipamentoid FOREIGN KEY (equipamento_id) REFERENCES equipamento (idequipamento)
);


CREATE TABLE pagamento(
	idpagamento SERIAL,
	data_pagamento TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	data_vencimento DATE NOT NULL,
	valor_pago NUMERIC(10, 2) NOT NULL,
	status VARCHAR(20) NOT NULL DEFAULT 'PAGO',
	aluno_id INTEGER NOT NULL,
	plano_id INTEGER NOT NULL,
	forma_pagamento_id INTEGER NOT NULL,

	CONSTRAINT pk_pagamento_idpagamento PRIMARY KEY (idpagamento),
	CONSTRAINT chk_pagamento_status CHECK (status IN ('PAGO', 'PENDENTE', 'ATRASADO', 'CANCELADO')),
	CONSTRAINT fk_pagamento_alunoid FOREIGN KEY (aluno_id) REFERENCES aluno (idaluno),
	CONSTRAINT fk_pagamento_planoid FOREIGN KEY (plano_id) REFERENCES plano (idplano),
	CONSTRAINT fk_pagamento_formapagamentoid FOREIGN KEY (forma_pagamento_id) REFERENCES forma_pagamento (idformapagamento)
);


CREATE TABLE avaliacao_fisica(
	idavaliacaofisica SERIAL,
	data_avaliacao DATE NOT NULL DEFAULT CURRENT_DATE,
	peso_kg NUMERIC(5, 2) NOT NULL,
	altura_m NUMERIC(3, 2) NOT NULL,
	percentual_gordura NUMERIC(4, 2),
	massa_magra_kg NUMERIC(5, 2),
	observacoes TEXT,
	aluno_id INTEGER NOT NULL,
	funcionario_id INTEGER NOT NULL,

	CONSTRAINT pk_avaliacaofisica_idavaliacaofisica PRIMARY KEY (idavaliacaofisica),
	CONSTRAINT fk_avaliacaofisica_alunoid FOREIGN KEY (aluno_id) REFERENCES aluno (idaluno),
	CONSTRAINT fk_avaliacaofisica_funcionario_id FOREIGN KEY (funcionario_id) REFERENCES funcionario (idfuncionario)
);


CREATE TABLE ficha_treino(
	idfichatreino SERIAL,
	nome_ficha VARCHAR(50) NOT NULL,
	objetivo VARCHAR(80),
	data_inicio DATE NOT NULL DEFAULT CURRENT_DATE,
	data_fim DATE,
	ativa BOOLEAN NOT NULL DEFAULT TRUE,
	aluno_id INTEGER NOT NULL,
	funcionario_id INTEGER NOT NULL,

	CONSTRAINT pk_fichatreino_idfichatreino PRIMARY KEY (idfichatreino),
	CONSTRAINT fk_fichatreino_alunoid FOREIGN KEY (aluno_id) REFERENCES aluno (idaluno),
	CONSTRAINT fk_fichatreino_funcionarioid FOREIGN KEY (funcionario_id) REFERENCES funcionario (idfuncionario)
);


CREATE TABLE exercicio_grupo_muscular(
	exercicio_id INTEGER NOT NULL,
	grupo_muscular_id INTEGER NOT NULL,
	tipo_ativacao VARCHAR(20) DEFAULT 'PRIMARIO',

	CONSTRAINT pk_exerciciogrupomuscular PRIMARY KEY (exercicio_id, grupo_muscular_id),
	CONSTRAINT fk_exerciciogrupomuscular_exercicioid FOREIGN KEY (exercicio_id) REFERENCES exercicio (idexercicio),
	CONSTRAINT fk_exerciciogrupomuscular_grupomuscularid FOREIGN KEY (grupo_muscular_id) REFERENCES grupo_muscular (idgrupomuscular),
	CONSTRAINT chk_exerciciogrupomuscular_tipoativacao CHECK (tipo_ativacao IN ('PRIMARIO', 'SECUNDARIO'))
);


CREATE TABLE ficha_treino_exercicio(
	idfichatreinoexercicio SERIAL,
	ficha_treino_id INTEGER NOT NULL,
	exercicio_id INTEGER NOT NULL,
	ordem INTEGER NOT NULL,
	series INTEGER NOT NULL,
	repeticoes VARCHAR(20) NOT NULL,
	carga_kg NUMERIC(5, 2),
	descanso_segundos INTEGER DEFAULT 60,
	observacao VARCHAR(150),

	CONSTRAINT pk_fichatreinoexercicio_idfichatreinoexercicio PRIMARY KEY (idfichatreinoexercicio),
	CONSTRAINT fk_fichatreinoexercicio_fichatreinoid FOREIGN KEY (ficha_treino_id) REFERENCES ficha_treino (idfichatreino),
	CONSTRAINT fk_fichatreinoexercicio_exercicioid FOREIGN KEY (exercicio_id) REFERENCES exercicio (idexercicio)
);

