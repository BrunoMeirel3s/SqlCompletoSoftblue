use curso_sql;

insert into funcionarios(nome, salario, departamento) values ('Bruno', '1400', 'Tecnologia da Informação');
select * from funcionarios;
insert into funcionarios(nome, salario, departamento) values ('Ana', '700', 'Tecnologia da Informação');
select * from funcionarios;
insert into funcionarios(nome, salario, departamento) values ('Fábio', '3000', 'Tecnologia da Informação');
insert into funcionarios(nome, salario, departamento) values ('Isabela', '2800', 'Juridico');
insert into funcionarios(nome, salario, departamento) values ('José', '1800', 'Marketing');

select * from funcionarios where salario > 2000;
select * from funcionarios where nome = 'Jose';
select * from funcionarios where id = 3;

update funcionarios set salario = salario * 1.1 where id = 1;

set SQL_SAFE_UPDATES = 0;
/*set SQL_SAFE_UPDATES = 1;*/

update funcionarios set salario = salario * 1.1;
update funcionarios set salario = round(salario * 1.1, 2); /*Round arrendonda os valores*/

select * from funcionarios;
 
delete from funcionarios where id = 4;

insert into veiculos(funcionario_id, veiculo, placa) values (1, 'Carro', 'SB-0001');
insert into veiculos(funcionario_id, veiculo, placa) values (1, 'Pálio', 'AB-0001');
select * from veiculos;

update veiculos set funcionario_id = 5 where id = 2;

insert into salarios (faixa, inicio, fim) values ('Analista Jr', 1000, 2000);
insert into salarios (faixa, inicio, fim) values ('Analista Pleno', 2000, 4000);

select * from salarios;

select * from funcionarios f where f.salario > 2000;

select nome as 'Funcionário', salario from funcionarios f where f.salario > 2000;

/*
Union pode ser usado para unir um ou mais consultas
*/
select * from funcionarios where nome = 'Bruno'
union
select * from  funcionarios where id = 2;






















































