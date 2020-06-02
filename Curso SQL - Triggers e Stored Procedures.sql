use curso_sql;

create table pedidos(
	id int unsigned not null auto_increment,
    descricao varchar(100) not null,
    valor double not null default '0',
    pago varchar(3) not null default 'Não',
    primary key(id)
);

insert into pedidos(descricao, valor) values ('TV', 3000);
insert into pedidos(descricao, valor) values ('Geladeira', 1400);
insert into pedidos(descricao, valor) values ('DVD Player', 300);

update pedidos set pago = 'Sim' where id = 8;

select * from pedidos;
call limpa_pedidos();

create table estoque (
	id int unsigned not null auto_increment,
    descricao varchar(50) not null,
    quantidade int not null,
    primary key(id)
);
/*
	Triggers são ações que são executas de acordo com determinadas ações no banco
    como inserção de dados ou de tempos em tempos
*/
create trigger gatilho_limpa_pedidos
before insert -- executa a trigger antes da inserção de uma tupla
on estoque -- tabela que ficará sendo monitorada
for each row -- a trigger será utilizada para cada linha
call limpa_pedidos(); -- ação a ser executa, chamar a stored procedure limpa_pedidos

select * from pedidos;

insert into estoque (descricao, quantidade) values ('Fogão', 5);
insert into estoque (descricao, quantidade) values ('Forno', 3);

select * from estoque;
















