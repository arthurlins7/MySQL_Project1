CREATE TABLE `clube`(
  `CNPJ` varchar(45) NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `Quantidade_associados` int(45) DEFAULT NULL,
  `id` int(45) DEFAULT NULL,
  PRIMARY KEY (`CNPJ`)
  );
  
 CREATE TABLE `diretoria`(
  `id_diretoria` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_diretoria`)
  );
  
  CREATE TABLE `diretor`(
  `id_diretor` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_diretor`)
  );
  
  CREATE TABLE `setor_marketing`
(
  `id_setor_marketing` int NOT NULL AUTO_INCREMENT,
  `Quantidade_ingressos_vendidos` int(45) DEFAULT NULL,
  `Quantidade_camisas_vendidas` int(45) DEFAULT NULL,
  PRIMARY KEY(`id_setor_marketing`)
  );
  
   CREATE TABLE `setor_financeiro`
(
  `id_setor_financeiro` int NOT NULL AUTO_INCREMENT,
  `Orcamento` int(45) DEFAULT NULL,
  `Verba` int(45) DEFAULT NULL,
  PRIMARY KEY(`id_setor_financeiro`)
  );
  
  CREATE TABLE `patrocinador`(
  `id_patrocinador` int NOT NULL AUTO_INCREMENT,
  `Nome` varchar(45) DEFAULT NULL,
  `pagamento_patrocinio` int(45) DEFAULT NULL,
  PRIMARY KEY (`id_patrocinador`)
  );

 CREATE TABLE `clube_patrocinador`(
  `fk_cnpj` varchar(45) NOT NULL,
  `fk_id_patrocinador` int(45) DEFAULT NULL,
   CONSTRAINT `fk_DDLprova_has_clube_clube_patrocinador_idx` FOREIGN KEY (`fk_cnpj`) REFERENCES `clube` (`CNPJ`),
   CONSTRAINT `fk_DDLprova_has_patrocinador_clube_patrocinador_idx` FOREIGN KEY (`fk_id_patrocinador`) REFERENCES `patrocinador` (`id_patrocinador`)
  );
  
  CREATE TABLE `funcionario`(
  `id_funcionario` int NOT NULL AUTO_INCREMENT,
  `salario` int(45) DEFAULT NULL,
  `tempo_contrato_restante` int(45) DEFAULT NULL,
  `funcao` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_funcionario`)
  ); 

  CREATE TABLE `clube_funcionario`(
  `fk_cnpj` varchar(45) NOT NULL,
  `fk_id_funcionario` int(45) DEFAULT NULL,
   CONSTRAINT `fk_DDLprova_has_clube_clube_funcionario_idx` FOREIGN KEY (`fk_cnpj`) REFERENCES `clube` (`CNPJ`),
   CONSTRAINT `fk_DDLprova_has_funcionario_clube_funcionario_idx` FOREIGN KEY (`fk_id_funcionario`) REFERENCES `funcionario` (`id_funcionario`)
  );
  
  CREATE TABLE `torcedor`(
  `id_torcedor` int NOT NULL AUTO_INCREMENT,
  `clube_que_torce` varchar(45) DEFAULT NULL,
  `preco_do_ingresso` int(45) DEFAULT NULL,
  PRIMARY KEY (`id_torcedor`)
  );
  
  CREATE TABLE `pessoa`(
  `CPF` varchar(45) NOT NULL,
  `Nome` varchar(45) DEFAULT NULL,
  `Endereco` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`CPF`)
  );
  
   CREATE TABLE `time`(
  `clube_pertencente` varchar(45) NOT NULL,
  `estadio` varchar(45) DEFAULT NULL,
  `quantidade_de_torcedores` int(45) DEFAULT NULL,
  `fk_cnpj` varchar(45) NOT NULL,
  PRIMARY KEY (`clube_pertencente`),
  CONSTRAINT `fk_DDLprova_has_clube_time_idx` FOREIGN KEY (`fk_cnpj`) REFERENCES `clube` (`CNPJ`)
  );
  
CREATE TABLE `apoia`(
  `fk_id_torcedor` int(45) NOT NULL,
  `fk_clube_pertencente` varchar(45) DEFAULT NULL,
   CONSTRAINT `fk_DDLprova_has_torcedor_apoia_idx` FOREIGN KEY (`fk_id_torcedor`) REFERENCES `torcedor` (`id_torcedor`),
   CONSTRAINT `fk_DDLprova_has_time_apoia_idx` FOREIGN KEY (`fk_clube_pertencente`) REFERENCES `time` (`clube_pertencente`)
  );
  
CREATE TABLE `campeonato`(
  `id_campeonato` int NOT NULL AUTO_INCREMENT,
  `temporada_inicio` date DEFAULT NULL,
  `temporada_fim` date DEFAULT NULL,
  `premiacao` int(45) DEFAULT NULL,
  PRIMARY KEY (`id_campeonato`)
  );
 
  CREATE TABLE `camp_time`(
  `fk_clube_pertencente` varchar(45) NOT NULL,
  `fk_id_campeonato` int(45) DEFAULT NULL,
  CONSTRAINT `fk_DDLprova_has_campeonato_camp_time_idx` FOREIGN KEY (`fk_id_campeonato`) REFERENCES `campeonato` (`id_campeonato`),
   CONSTRAINT `fk_DDLprova_has_time_camp_time_idx` FOREIGN KEY (`fk_clube_pertencente`) REFERENCES `time` (`clube_pertencente`)
  );
  