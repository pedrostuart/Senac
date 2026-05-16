CREAT DATABASE `contato_13`;
-- CRIAÇÃO DO BANCO DE DADOS, DEVE USAR CRASE
USE `contato_13`;
-- `USANDO O CONTATO_13 (DEIXANDO ELE SELECIONADO)`



create table `clientes`( --CRIA A TABELA E DEFINE O NOME
`id_cliente` int(4) unsigned not null auto_increment,
`nome` varchar(120) not null,
`email` varchar(150) not null,
`rua` varchar(200) not null,
`bairro` varchar(150) not null,
PRIMARY key (`id_cliente`)
)engine=InnoDB AUTO_INCREMENT = 4 CHARSET = utf8 COLLATE=utf8_unicode_ci

-- auto_increment = DEIXA TUDO EM ORDEM, VAI ENTRANDO ITEM E VAI COLANDO OS ID'S DE FORMA SEQUENCIAL
-- unsigned = DEFINE QUE É ÚNICO (PRIMARY KEY)
-- not null = É UM DADO QUEM NÃO PODE SER ENVIADO VAZIO

-- engine=InnoDB = PROCURA O BANCO DE DADOS DENTRO DA MAQUINA PARA CONSEGUIR EXECUTAR
-- AUTO_INCREMENT = 4   = DEFINO QUE A PRIMARY KEY REALMENTE VAI SER NO MÁXIMO 4 DIGITOS
-- CHARSET = utf8 = PERMITE CARACTERES

alter table `cliente` add column{
  `telefone` varchar(15) 
}
--auterando uma tabela

INSERT INTO `clientes`(`id_cliente`, `nome`, `email`, `rua`, `bairro`)VALUES
(1,'João', 'joaosilva@gmail.com', 'Tito,54', 'LAPA'),
(2,'Pedro', 'pedro@gmail.com', 'Tito,54', 'LAPA'),
(3,'Josefina', 'josefina@gmail.com', 'Tito,54', 'LAPA'),
(4,'Marcela', 'marcela@gmail.com', 'Tito,54', 'LAPA'),
(5,'Vitor', 'vitor@gmail.com', null , 'LAPA');


--INSERT INTO `clientes` : SELECIONO A TABELA PARA APLICAR AS INFORMAÇÕES
--(`id_cliente`, `nome`, `email`, `rua`, `bairro`)VALUES : ESCREVO TODOS OS DADOS QUE EU VOU RECEBER E FALO QUE ELAS VÃO RECEBER OS VALORES
-- NULL = estou aplicando a informação de nulo no lugar do dado que teria



-- AUTO INCREMENTO NA PRÁTICA
INSERT INTO `clientes`(`nome`, `email`, `rua`, `bairro`)VALUES
('João', 'joaosilva@gmail.com', 'Tito,54', 'LAPA'),
('Pedro', 'pedro@gmail.com', 'Tito,54', 'LAPA'),
('Josefina', 'josefina@gmail.com', 'Tito,54', 'LAPA'),
('Marcela', 'marcela@gmail.com', 'Tito,54', 'LAPA'),
('Vitor', 'vitor@gmail.com', NULL, 'LAPA');

--SEM O `id_cliente` e sem o numero do id nas informações, os dados do id se auto incrementam de forma sequencial automaticamente. Eu posso iniciar de forma de auto incremento.

truncate table `clientes`/*DELETA DADOS DA TABELA*/
DROP TABLE `clientes`/*DELETAR TABELA INTEIRA*/

select * from `clientes`/* PUXO TODOS OS DADOS DA TABELA INTEIRA*/
select * from `produtos`, `colaboradores`; /*PUXO TODOS OS DADOS DE MAIS DE UMA TABELA*/
select nome, email from `clientes`/* CONSIGO PEGAR DADOS ESPECIFICOS DE UMA TABELA */

/*FORMAS DE ORDERNAR ITENS NA TABELA*/
select produto from `produtos` order by produto; /*= DEIXA EM ORDEM ANALFABETA*/ /* PODE SER order by "nome da categoria da tabela"*/
select produto from `produtos` order by desc; /*= DEIXA EM ORDEM DECRESCENTE*/

select nome, email, cidade from `clientes` order by cidade, nome; /*FILTRAR DUAS CATEGORIAS ESPECIFICAS EM ORDEM ALFABETICA*/

select id, nome, email from clientes LIMIT 15 offset 5 /* traz 5 itens apartir do 6*/
select id, nome, email from clientes LIMIT 15, 5/*traz 5 itens apartir do 16*/


select * from produto order by preco_unidade desc limit 1; /* traz o item mais caro*/
select * from produto order by preco_unidade limit 1;/* traz o item mais bararto*/
/*ele pega os item deixa a ordem que quer(desc, por exemplo) e pega os extremos no caso o mais caro e o mais barato, se eu quiser pegar os dois mais caros ou baratos era trocar para 2 no final*/

select DISTINCT preco_unidade from produtos /*se tiver dois item com o mesmo valor inserido no que eu pedir ele(DISTINCT) so vai pergar 1 deles*/

/*WHERE - permite definir condições que indificam quais registros que vão ser afetados pela query. */
SELECT*FROM clientes where cidade = "Lisboa" OR  sexo = "f"/*pega  todos os "f" (mulheres) OU todos que moram em lisboa*/
SELECT*FROM clientes where cidade = "Lisboa" AND  sexo = "f"/*pega todos os "f" (mulheres) que moram em lisboa*/
select * from clientes where cidade IN("Lisboa", "coimbra", "Viseu"); /* pega mais de um item em um where */
/*<> significa diferente*/
SELECT*FROM clientes where cidade <> "Lisboa" AND  sexo = "f" /* Pega todos os "f" (mulheres) que mora em lugar diferente de lisboa*/ 


SELECT*FROM produtos where preco_unidade >= 1; /* pega todos os precos maiores de 1*/

SELECT*FROM produtos where preco_unidade >= 1 and preco_unidade <=2;/*Aqui ele paga os precos maiores que 1 e menores que 2*/
SELECT*FROM produtos where preco_unidade between 1 and 2; /* esse faz a mesma coisa que esse de cima, between está pegando os valores entre 1 e 2*/


select * from clientes where email LIKE "%gmail.com"; /* LIKE PEGA COISAS MAIS EPECIFICAS EM DADOS , POR EXEMPLO AQUI EU SELECIONO "gmail.com" de todos os email, ou seja todos os email que tiverem "gmail.com"*/

select * from clientes where nome LIKE "Pedro%";/* aqui estou pegando todos os pedros da lista o porcentagem depois, serve pra informar que pegara tudo antes da %*/
select * from clientes where data_nascimento LIKE "%09%" ;/* Aqui ta pegando 09 somente pois esta dentro de duas %*/ 
/*SELECT - vai definir condições para devolver dados de acordo com a condição*/

select * from colaboradores where ativo is null /*null pega todos os dados nulos, caso houver*/

--AS - nome temporario
select produto AS fruta from produto/*Alterando nome da linha de dados*/