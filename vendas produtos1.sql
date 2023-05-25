CREATE DATABASE vendas_produtos1;
use vendas_produtos1;


create table cliente
(
  id_cliente int not null,
  nome_cliente varchar (40),
  cpf_cliente int,
  primary key (id_cliente)
);
  
  create table produto
  (
  id_produto int not null,
  nome_produto varchar(20),
  data_validade_produto int,
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
  primary key (id_venda),
  foreign key (id_cliente) references cliente(id_cliente),
  foreign key (id_vendedor) references vendedor(id_vendedor),
  foreign key(id_pagamento) references pagamento(id_pagamento)
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

insert into produto(id_produto,nome_produto)
values(1,'meia,cueca');
 
 
 insert into venda(id_venda,valor_venda)
 values(1,'200R$')





