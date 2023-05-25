CREATE DATABASE vendas_produtos1;
use vendas_produtos1;

create table cliente
(
  id_cliente int not null,
  nome_cliente varchar (40),
  cpf_cliente int,
  primary key (id_cliente)

 ); 
  
  
  create table venda_produto
  (
id_venda_produto int,
 id_venda int,
 id_produto int,
 primary key (id_venda_produto)
 );
 
 create table pagamento
 (
 id_pagamento int not null,
 forma_pagamento varchar(40),
primary key(id_pagamento)
 );
 create table vendedor
 (
 id_vendedor int,
 nome_vendedor varchar(20),
 primary key(id_vendedor)
 
);
create table categoria 
(
id_categoria int,
nome_categoria varchar (10),
primary key (id_categoria)
);
 create table fornecedor 
 (
 id_fornecedor int,
 cnpj varchar(10),
 nome varchar(10),
 primary key(id_fornecedor)
 
 );
 create table produto
  (
  id_produto int not null,
  nome_produto varchar(20),
  data_validade_produto int,
 id_categoria int,
  id_fornecedor int,
  primary key (id_produto)
 );

 create table venda
  (
  id_venda int not null,
  valor_venda int,
  data_venda int,
  id_cliente int,
  id_vendedor int,
  id_pagamento int,
  primary key (id_venda)
  );

alter table produto
 add  foreign key (id_categoria)references categoria(id_categoria),
 add foreign key (id_fornecedor)references fornecedor(id_fornecedor);
 
 alter table venda
 add foreign key (id_cliente)references cliente(id_cliente),
 add  foreign key (id_vendedor)references vendedor(id_vendedor),
  add  foreign key (id_pagamento)references pagamento(id_pagamento);



