INSERT INTO clube VALUES 
("081450210001", "Clube Náutico Capibaribe", 40000, 1), 
("10866051000154", "Sport Clube do Recife", 55000, 2), 
("10996999000205", "Santa Cruz Futebol Clube", 20000, 3),
("33649575000199", "Clube de Regatas do Flamengo", 105000, 4), 
("91110353000108", "Sociedade Esportiva Palmeiras", 85000, 5);

INSERT INTO setor_marketing (quantidade_ingressos_vendidos, quantidade_camisas_vendidas) VALUES 
(250000, 100000), 
(400000, 200000), 
(450000, 150000),
(1000000, 2000000), 
(850000, 700000);

INSERT INTO setor_financeiro (orcamento, verba) VALUES 
(5000000, 8000000), 
(10000000, 20000000), 
(500000, 2000000),
(105000, 20000000), 
(10000000, 40000000);

INSERT INTO patrocinador (Nome, Pagamento_patrocinio) VALUES 
("Nike", 500000), 
("Adidas", 400000), 
("Puma", 350000),
("Betway", 100000), 
("Emirates Airlines", 550000);

INSERT INTO clube_patrocinador VALUES 
("081450210001", 1), 
("10866051000154", 2), 
("10996999000205", 3),
("33649575000199", 4), 
("91110353000108", 5);

INSERT INTO diretoria VALUES (1), (2), (3), (4), (5);

INSERT INTO diretor VALUES (1), (2), (3), (4), (5);

INSERT INTO funcionario (salario, tempo_contrato_restante, funcao) VALUES 
(300000, 2, "jogador"), 
(2500, 1, "roupeiro"), 
(50000, 3, "treinador"), 
(5000, 2, "cozinheiro"), 
(10000, 4, "médico"),
(20000, 3, "diretor");

INSERT INTO clube_funcionario VALUES 
("081450210001", 1), 
("10866051000154", 2), 
("10996999000205", 3),
("33649575000199", 4), 
("91110353000108", 5);

INSERT INTO torcedor (clube_que_torce, preco_do_ingresso) VALUES 
("Clube Náutico Capibaribe", 40), 
("Sport Clube do Recife", 60), 
("Santa Cruz Futebol Clube", 25),
("Clube de Regatas do Flamengo", 80), 
("Sociedade Esportiva Palmeiras", 100);

INSERT INTO pessoa VALUES 
("12345678910", "Fulano", "Recife, Rua 1"), 
("01987654321", "Sicrano", "Recife, Rua 2"), 
("11111111111", "Beltrano", "Recife, Rua 3"),
("99999999999", "Junior", "Rio De Janeiro, Rua 8"), 
("11111199999", "André", "São Paulo, Rua 14");

INSERT INTO time VALUES 
("Clube Náutico Capibaribe", "Aflitos", 850000, "081450210001"), 
("Sport Clube do Recife", "Ilha do Retiro", 1000000, "10866051000154"), 
("Santa Cruz Futebol Clube", "Arruda", 1200000, "10996999000205"),
("Clube de Regatas do Flamengo", "Maracanã", 2500000, "33649575000199"), 
("Sociedade Esportiva Palmeiras", "Allianz Parque", 1800000, "91110353000108");

INSERT INTO apoia VALUES 
(1,"Clube Náutico Capibaribe"), 
(2,"Sport Clube do Recife"), 
(3,"Santa Cruz Futebol Clube"),
(4,"Clube de Regatas do Flamengo"), 
(5,"Sociedade Esportiva Palmeiras");

INSERT INTO campeonato (temporada_inicio, temporada_fim, premiacao) VALUES 
('2022-05-25', '2022-10-21',20000000), 
('2020-02-16', '2020-07-15',5000000), 
('2010-11-20', '2010-12-18',10000000),
('2021-08-07', '2021-12-10',15000000), 
('2014-05-14', '2014-08-17',8000000);

INSERT INTO camp_time VALUES 
("Clube Náutico Capibaribe",1), 
("Sport Clube do Recife",2), 
("Santa Cruz Futebol Clube",1),
("Clube de Regatas do Flamengo",4), 
("Sociedade Esportiva Palmeiras",5);



