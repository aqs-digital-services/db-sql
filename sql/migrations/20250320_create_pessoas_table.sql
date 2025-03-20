CREATE TABLE "pessoa" (
  "id_pessoa" INT PRIMARY KEY,
  "nome" VARCHAR(255) NOT NULL,
  "nome_completo" VARCHAR(255),
  "genero" VARCHAR(50) NOT NULL,
  "data_nascimento" DATE NOT NULL,
  "endereco_rua" VARCHAR(255),
  "endereco_numero" VARCHAR(10),
  "endereco_complemento" VARCHAR(50),
  "endereco_bairro" VARCHAR(100),
  "endereco_cidade" VARCHAR(100),
  "endereco_estado" VARCHAR(50),
  "endereco_cep" VARCHAR(10),
  "telefone" VARCHAR(20),
  "email" VARCHAR(100),
  "batizado" BOOLEAN DEFAULT FALSE,
  "data_batismo" DATE,
  "id_privilegio" INT,
  "id_pioneiro" INT,
  "id_grupo" INT,
  "ungido" BOOLEAN DEFAULT FALSE,
  "criado_em" TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  "atualizado_em" TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE "grupo" (
  "id_grupo" INT PRIMARY KEY,
  "nome" VARCHAR(100),
  "id_superintendente" INT,
  "id_servo_ajudante" INT
);

CREATE TABLE "Privilegio" (
  "id_privilegio" INT PRIMARY KEY,
  "nome" VARCHAR(50)
);

CREATE TABLE "pessoa_privilegio" (
  "id_pessoa" INT,
  "id_privilegio" INT
);

CREATE TABLE "contato_emergencia" (
  "id_contato_emergencia" INT PRIMARY KEY,
  "nome" VARCHAR(255),
  "telefone" VARCHAR(20),
  "id_pessoa" INT
);

CREATE TABLE "funcao" (
  "id_funcao" INT PRIMARY KEY,
  "nome" VARCHAR(100)
);

CREATE TABLE "pessoa_funcao" (
  "id_pessoa" INT,
  "id_funcao" INT
);

ALTER TABLE "pessoa" ADD FOREIGN KEY ("id_grupo") REFERENCES "grupo" ("id_grupo");

ALTER TABLE "grupo" ADD FOREIGN KEY ("id_superintendente") REFERENCES "pessoa" ("id_pessoa");

ALTER TABLE "grupo" ADD FOREIGN KEY ("id_servo_ajudante") REFERENCES "pessoa" ("id_pessoa");

ALTER TABLE "pessoa_privilegio" ADD FOREIGN KEY ("id_pessoa") REFERENCES "pessoa" ("id_pessoa");

ALTER TABLE "pessoa_privilegio" ADD FOREIGN KEY ("id_privilegio") REFERENCES "privilegio" ("id_privilegio");

ALTER TABLE "contato_emergencia" ADD FOREIGN KEY ("id_pessoa") REFERENCES "pessoa" ("id_pessoa");

ALTER TABLE "pessoa_funcao" ADD FOREIGN KEY ("id_pessoa") REFERENCES "pessoa" ("id_pessoa");

ALTER TABLE "pessoa_funcao" ADD FOREIGN KEY ("id_funcao") REFERENCES "funcao" ("id_funcao");