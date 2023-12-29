CREATE TABLE "public.Requisicao" (
	"id" serial NOT NULL,
	"data" DATE NOT NULL,
	"id_usuario" integer NOT NULL,
	"id_setor" integer NOT NULL,
	CONSTRAINT "Requisicao_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Usuario" (
	"id" serial NOT NULL,
	"nome" VARCHAR(255) NOT NULL,
	"cpf" integer NOT NULL UNIQUE,
	CONSTRAINT "Usuario_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Setor" (
	"id" serial NOT NULL,
	"nome" VARCHAR(255) NOT NULL,
	CONSTRAINT "Setor_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Produto" (
	"id" serial NOT NULL,
	"nome" VARCHAR(255) NOT NULL,
	CONSTRAINT "Produto_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



CREATE TABLE "public.Produto_Requisicao" (
	"id" serial NOT NULL,
	"id_requisicao" integer NOT NULL,
	"id_produto" integer NOT NULL,
	"quantidade" integer NOT NULL,
	CONSTRAINT "Produto_Requisicao_pk" PRIMARY KEY ("id")
) WITH (
  OIDS=FALSE
);



ALTER TABLE "Requisicao" ADD CONSTRAINT "Requisicao_fk0" FOREIGN KEY ("id_usuario") REFERENCES "Usuario"("id");
ALTER TABLE "Requisicao" ADD CONSTRAINT "Requisicao_fk1" FOREIGN KEY ("id_setor") REFERENCES "Setor"("id");




ALTER TABLE "Produto_Requisicao" ADD CONSTRAINT "Produto_Requisicao_fk0" FOREIGN KEY ("id_requisicao") REFERENCES "Requisicao"("id");
ALTER TABLE "Produto_Requisicao" ADD CONSTRAINT "Produto_Requisicao_fk1" FOREIGN KEY ("id_produto") REFERENCES "Produto"("id");






