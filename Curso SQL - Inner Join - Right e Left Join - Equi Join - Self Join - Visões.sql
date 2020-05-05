use curso_sql;

select * from funcionarios;
select * from veiculos;

/*
	Inner Join retorna todos os valores que possuem o relacionamento informado,
    utilizar uma letra após o nome da tabela cria para ela um apelido que pode ser
    utilizado na hora de utilizar uma coluna da tabela.
*/
select * from funcionarios f inner join veiculos v on v.funcionario_id = f.id;

/*
	Left Join retorna todos os valores que possuem o relacionamento informado e 
	os outros valores da tabela a esquerda, mesmo que não possuam o relacionamento
*/
select * from funcionarios f left join veiculos v on v.funcionario_id = f.id;

/*
	Right Join retorna todos os valores que possuem o relacionamento informado e 
	os outros valores da tabela a direita, mesmo que não possuam o relacionamento
*/
select * from funcionarios f right join veiculos v on v.funcionario_id = f.id;

/*
	Utilizando o Union criamos o Full Alter Join que retorna todos os valores que
    possuem o relacionamento informado e os outros valores da tabela a direita e 
    a esquerda, mesmo que não possuam o relacionamento, utilizando o union all ele
    retorna valores duplicados caso houver.
*/
select * from funcionarios f left join veiculos v on v.funcionario_id = f.id
union
select * from funcionarios f right join veiculos v on v.funcionario_id = f.id;

insert into veiculos( funcionario_id, veiculo, placa) values (null, 'Moto', 'SB-0001');

create table cpfs(
 id int unsigned not null,
 cpf varchar(14) not null,
 primary key(id),
 constraint fk_cpf foreign key (id) references funcionarios (id)
);

insert into cpfs(id, cpf) values (1, '111.111.111-11');
insert into cpfs(id, cpf) values (2, '222.222.222-22');
insert into cpfs(id, cpf) values (3, '333.333.333-33');
insert into cpfs(id, cpf) values (5, '555.555.555-55');

select * from cpfs;

/*
	Equi Join é utilizado o comando using ou um join comum, onde o relacionamento
    é criado utilizando uma coluna que é igual em ambas as tabelas
*/
select * from funcionarios inner join cpfs on funcionarios.id = cpfs.id;
select * from funcionarios inner join cpfs using(id);

create table clientes(
	id int unsigned not null auto_increment,
    nome varchar(45) not null,
    quem_indicou int unsigned,
    primary key (id),
    constraint fk_quem_indicou foreign key (quem_indicou) references clientes (id)
);

insert into clientes (id, nome, quem_indicou) values (1, 'Andre', null);
insert into clientes (id, nome, quem_indicou) values (2, 'Samuel', 1);
insert into clientes (id, nome, quem_indicou) values (3, 'Carlos', 2);
insert into clientes (id, nome, quem_indicou) values (4, 'Rafael', 1);

select * from clientes;

/*
	Self Join é uilizado quando desejamos criar um relacionamento de uma tabela com ela mesmo,
    nesse caso precisamos utilizar apelidos para a tabela e especificar a estrutura de relação
*/
select a.nome as cliente, b.nome as quem_indicou from clientes a join clientes b on a.quem_indicou = b.id;

/*
	Relacionamento triplo ou maiores precisam apenas utilizar novamente o comando
    inner join no final do comando e especificar a estrutura de relacionamento
*/
select * from funcionarios f inner join veiculos v on v.funcionario_id = f.id inner join cpfs on f.id = cpfs.id;


/*
	Criação e manutenção de views, views são utilizadas para criamos consultas que podem ser facilmente ajustadas
    sem precisar mudar a programação das aplicações
*/
create view funcionarios2 as select * from funcionarios where salario >= 1700;
 
select * from funcionarios2;

update funcionarios set salario = 1200 where id= 3;

drop view funcionarios2;














