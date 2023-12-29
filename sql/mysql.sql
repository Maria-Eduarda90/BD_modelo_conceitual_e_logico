CREATE TABLE `Requisicao` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`data` DATE NOT NULL,
	`id_usuario` INT NOT NULL,
	`id_setor` INT NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Usuario` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(255) NOT NULL,
	`cpf` INT NOT NULL UNIQUE,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Setor` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Produto` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`nome` VARCHAR(255) NOT NULL,
	PRIMARY KEY (`id`)
);

CREATE TABLE `Produto_Requisicao` (
	`id` INT NOT NULL AUTO_INCREMENT,
	`id_requisicao` INT NOT NULL,
	`id_produto` INT NOT NULL,
	`quantidade` INT NOT NULL,
	PRIMARY KEY (`id`)
);

ALTER TABLE `Requisicao` ADD CONSTRAINT `Requisicao_fk0` FOREIGN KEY (`id_usuario`) REFERENCES `Usuario`(`id`);

ALTER TABLE `Requisicao` ADD CONSTRAINT `Requisicao_fk1` FOREIGN KEY (`id_setor`) REFERENCES `Setor`(`id`);

ALTER TABLE `Produto_Requisicao` ADD CONSTRAINT `Produto_Requisicao_fk0` FOREIGN KEY (`id_requisicao`) REFERENCES `Requisicao`(`id`);

ALTER TABLE `Produto_Requisicao` ADD CONSTRAINT `Produto_Requisicao_fk1` FOREIGN KEY (`id_produto`) REFERENCES `Produto`(`id`);






