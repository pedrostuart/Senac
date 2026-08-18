create database cadastro_usuario;
use cadastro_usuario;
create table `usuario`(
    id int auto_incriment primary key,
    nome varchar(200) not null,
    email varchar(200) not null,
    senha varchar(255) not null
)