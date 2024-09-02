/*select * from usuarios;*/

/*create database Vendas;*/
/*use Vendas; */

/*create table produtos (
id_produto int not null primary key auto_increment,
nome_produto varchar(50),
preco_produto float,
categoria_produto varchar(50),
created_at datetime
);*/

/*create table usuarios (
id_usuario int not null primary key auto_increment,
nome_usuario varchar(50),
email_usuario varchar(50),
senha_usuario varchar(15),
data_criacao datetime
);*/

create table clientes (
id_cliente int not null primary key auto_increment,
nome_cliente varchar(150),
endereco_cliente varchar(250),
email_cliente varchar(250),
data_criacao datetime
);

