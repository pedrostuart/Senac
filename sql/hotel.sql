/*CRIANDO TABELA CATEGORIA QUARTO*/
create table categoria_quarto(
	nome_categoria varchar(150) primary key not null,
    descricao varchar(150) not null
)engine = InnoDB collate = utf8mb4_general_ci;

/*ADICIONANDO DADOS A TABELA CATEGORIA QUARTO*/
insert into `categoria_quarto`(`nome_categoria`,`descricao`)values
('Standard', 'Quarto bom'),
('Suíte', 'Quarto muito bom')


/*CRIANDO TABELA QUARTO*/
create table quarto (
    id_quarto int primary key not null auto_increment, /*primary key é errado*//*o CERTO É unsigned*/
    capacidade int not null,
    preco_noite varchar(15) not null,

    nome_categoria varchar(150) not null,
    foreign key (nome_categoria)
    references categoria_quarto(nome_categoria)

)engine = InnoDb collate = utf8mb4_general_ci;

/*ADICIONANDO DADOS A TABELA QUARTO*/
insert into `quarto`(`id_quarto`,`capacidade`, `preco_noite`,`nome_categoria`)values
('1', '6', '200.00R$', 'Standard'),
('2', '4', '150.00R$', 'Suíte')


/*CRIANDO TABELA CLIENTE*/
create table cliente (
    id_cliente int primary key not null auto_increment,
    nome varchar(150) not null,
    telefone varchar(15) not null,
    email varchar(150) not null,
    data_registro date not null,
    rua varchar(120) not null,
    bairro varchar(120) not null,
    cep varchar(10) not null

)engine = InnoDb collate = utf8mb4_general_ci;

/*ADICIONANDO DADOS A TABELA CLIENTE*/
insert into `cliente`(`id_cliente`, `nome`, `telefone`, `email`, `data_registro`, `rua`, `bairro`, `cep`)values
(1, 'João Silva', '5511987654321',  'joao.silva@email.com', '2026-05-07', 'Rua das Flores, 120', 'Centro', '01010000'),
(2, 'Maria Oliveira', '5511976543210','maria.oliveira@email.com', '2026-05-06','Av. Paulista, 900', 'Centro', '01010000');

/*CRIANDO TABELA RESERVA*/
create table reserva(
	id_reserva int primary key not null auto_increment,
    data_inicio date not null,
    data_termino date not null,
    id_cliente int,
    foreign key (id_cliente)
    references cliente(id_cliente),
    id_quarto int,
    foreign key (id_quarto)
    references quarto(id_quarto)
)engine= InnoDB collate= utf8mb4_general_ci;

/*ADICIONANDO DADOS A TABELA RESERVA*/
insert into `reserva`(`id_reserva`,`data_inicio`, `data_termino`, `id_cliente`, `id_quarto`)values
(1, '2026-05-14', '2026-05-16', '1', '1'),
(2, '2026-05-14', '2026-05-16', '2', '2')


/*CRIANDO TABELA DETALHES RESERVA*/
create table detalhes_reserva (
	id_reserva int not null,
    id_quarto int not null,
    
    primary key(id_quarto, id_reserva),
    
    foreign key (id_reserva)
    references reserva(id_reserva),
    
    foreign key (id_quarto)
    references quarto(id_quarto),
    
    
    quantidade int(4) not null,
    preco_total varchar(14) not null
)engine = InnoDb collate = utf8mb4_general_ci;
/*ADICIONANDO DADOS A TABELA DETALHES RESERVA*/

insert into `detalhes_reserva`(`id_reserva`, `id_quarto`,`quantidade`,`preco_total`)values
('1', '1', '2', '240.00 R$'),
('2', '2', '2', '200.00 R$')



