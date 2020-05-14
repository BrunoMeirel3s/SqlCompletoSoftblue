use curso_sql;

select * from funcionarios;

select count(*) from funcionarios;
select count(*) from funcionarios where salario > 1600;
select count(*) from funcionarios where salario > 1600 and departamento = 'Tecnologia da Informação';
select * from funcionarios where salario > 1600 and departamento = 'Tecnologia da Informação';

select sum(salario) from funcionarios;
select sum(salario) from funcionarios where departamento = 'Tecnologia da Informação';

select avg(salario) from funcionarios;
select avg(salarios) from funcionarios where departamento = 'Tecnologia da Informação';

select max(salario) from funcionarios;
select max(salario) from funcionarios where departamento = 'Tecnologia da Informação';

select min(salario) from funcionarios;
select min(salario) from funcionarios where departamento = 'Tecnologia da Informação';

select departamento from funcionarios;
select distinct(departamento) from funcionarios;

select * from funcionarios;
select * from funcionarios order by nome;
select * from funcionarios order by nome desc;
select * from funcionarios order by salario;
select * from funcionarios order by salario desc;
select * from funcionarios order by departamento;
select * from funcionarios order by departamento, salario;
select * from funcionarios order by departamento desc, salario desc;

select * from funcionarios limit 2;
select * from funcionarios limit 1, 2;

select avg(salario) from funcionarios;
select avg(salario) from funcionarios where departamento = 'Tecnologia da Informação';
select avg(salario) from funcionarios where departamento = 'Marketing';

select departamento, avg(salario) from funcionarios group by departamento;
select departamento, avg(salario) from funcionarios group by departamento having avg(salario) > 2000;

select departamento, count(*) from funcionarios group by departamento;

select departamento, avg(salario) from funcionarios group by departamento;
select nome from funcionarios where departamento = 'Tecnologia da Informação';

select nome from funcionarios where departamento in (select departamento from funcionarios group by departamento having avg(salario) > 2000)