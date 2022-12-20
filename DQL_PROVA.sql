#1. SELECIONAR O NOME E A QUANTIDADE DE ASSOCIADOS DOS CLUBES QUE TENHAM MAIS DE 50 MIL ASSOCIADOS E TENHA O NOME COMEÇANDO COM A LETRA S:
SELECT nome, quantidade_associados FROM clube 
WHERE Quantidade_associados > 50000 AND nome LIKE 's%';

#2. SELECIONAR TUDO DOS CLUBES E DOS SETORES DE MARKETING RELACIONADOS PELO ID E ID_SETOR_MARKETING:
SELECT * FROM clube 
INNER JOIN setor_marketing
ON id_setor_marketing = id;

#3. SELECIONAR O MAIOR SALÁRIO DE UM FUNCIONÁRIO AGRUPANDO POR TEMPO DE CONTRATO RESTANTE:
SELECT MAX(salario) 
FROM funcionario
WHERE id_funcionario IN 
(SELECT fk_id_funcionario 
FROM clube_funcionario) 
group by tempo_contrato_restante;

#4. SELECIONAR O MAIOR SALÁRIO DE UM FUNCIONÁRIO AGRUPANDO POR TEMPO DE CONTRATO RESTANTE APENAS DOS GRUPOS QUE POSSUEM MAIS DE 1 REGISTRO:
SELECT MAX(salario) 
FROM funcionario
WHERE id_funcionario IN 
(SELECT fk_id_funcionario 
FROM clube_funcionario) 
GROUP BY tempo_contrato_restante
HAVING COUNT(salario) > 1;

#5. SELECIONAR CLUBE, ESTÁDIO E QUANTIDADE DE TORCEDORES DOS TIMES QUE ESTEJAM EM ALGUM CAMPEONATO ORDENADOS PELA QUANTIDADE DE TORCEDORES:
SELECT * FROM time 
WHERE clube_pertencente IN (SELECT fk_clube_pertencente 
			FROM camp_time)
ORDER BY quantidade_de_torcedores DESC;

#6. SELECIONAR TUDO DO CAMPEONATO QUE A SUA PREMIAÇÃO SEJA MULTIPLA DE 10 MILHÕES:
SELECT * FROM campeonato 
WHERE id_campeonato IN (SELECT fk_id_campeonato 
			FROM camp_time) AND
MOD(premiacao,10000000) = 0;

#7. SELECIONAR A COTAGEM DE LETRAS NOS NOMES DE CADA CLUBE
SELECT clube_pertencente, length(replace(clube_pertencente, ' ', '')) as tamanho_nome FROM time 
WHERE clube_pertencente IN (SELECT fk_clube_pertencente 
			FROM camp_time);

#8. SELECIONAR ID DOS CAMPEONATOS QUE ESTIVEREM SENDO JOGADOS POR ALGUM DOS TIMES E O TEMPO DE DURAÇÃO DELES:
SELECT id_campeonato, datediff(temporada_fim,temporada_inicio) AS duracao_campeonato 
FROM campeonato	
WHERE id_campeonato IN 
(SELECT fk_id_campeonato FROM camp_time);

#9. UNIÃO ENTRE UMA TABELA QUE O ID DO CAMPEONATO QUE O TIME ESTÁ JOGANDO SEJA IGUAL A 1 E UMA TABELA QUE O NOME DOS CLUBES QUE OS TIMES PERTENCEM NÃO SEJA "Sociedade Esportiva Palmeiras":
SELECT * FROM time 
INNER JOIN camp_time 
ON fk_clube_pertencente = clube_pertencente 
WHERE FK_ID_CAMPEONATO = 1
UNION
SELECT * FROM time 
INNER JOIN camp_time 
ON fk_clube_pertencente = clube_pertencente 
WHERE fk_clube_pertencente != "Sociedade Esportiva Palmeiras";

#10. SELECIONAR A INTERSECÇÃO ENTRE UMA TABELA DOS TIMES QUE JOGARAM UM CAMPEONATO QUE POSSUI O ID IGUAL A 1 E UMA QUE O NOME DO CLUBE A QUE O TIME PERTENCE É IGUAL A "Clube Náutico Capibaribe":
SELECT time.*
FROM time
INNER JOIN camp_time
ON fk_clube_pertencente = clube_pertencente 
WHERE fk_id_campeonato = 1
AND clube_pertencente IN
   (SELECT fk_clube_pertencente
    FROM camp_time
    WHERE fk_clube_pertencente = "Clube Náutico Capibaribe");