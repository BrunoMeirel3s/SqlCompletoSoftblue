use curso_sql;

select * from funcionarios;

/*
	Count realiza mostra a quantidade de itens retornados em uma busca
*/
select count(*) from funcionarios;
select count(*) from funcionarios where salario > 1600;
select count(*) from funcionarios where salario > 1600 and departamento = 'Tecnologia da Informação';
select * from funcionarios where salario > 1600 and departamento = 'Tecnologia da Informação';

/*sum realiza a soma de campos monetários retornados em uma busca sql*/
select sum(salario) from funcionarios;
select sum(salario) from funcionarios where departamento = 'Tecnologia da Informação';

/* avg é utilizado para tirar a média de de uma consulta realizada no banco*/
select avg(salario) from funcionarios;
select avg(salarios) from funcionarios where departamento = 'Tecnologia da Informação';

/*Max retorna o maior valor da busca realizada*/
select max(salario) from funcionarios;
select max(salario) from funcionarios where departamento = 'Tecnologia da Informação';

/*Min retorna o menor valor da busca realizada*/
select min(salario) from funcionarios;
select min(salario) from funcionarios where departamento = 'Tecnologia da Informação';

select departamento from funcionarios;
select distinct(departamento) from funcionarios; -- distinct evita que sejam retornados valores repetidos

select * from funcionarios;
select * from funcionarios order by nome; -- order by ordena os valores retornados em uma buscar em modo ascendente
select * from funcionarios order by nome desc; -- o atributo desc faz os valores serem retornados do maior para o menor
select * from funcionarios order by salario;
select * from funcionarios order by salario desc;
select * from funcionarios order by departamento;
select * from funcionarios order by departamento, salario;
select * from funcionarios order by departamento desc, salario desc;

select * from funcionarios limit 2; -- limit limita a quantidade de valores que podem ser retornados
select * from funcionarios limit 1, 2; -- limit 1, 2 - o primeiro valor indica a quantidade de lnhas que serão puladas

select avg(salario) from funcionarios;
select avg(salario) from funcionarios where departamento = 'Tecnologia da Informação';
select avg(salario) from funcionarios where departamento = 'Marketing';

/*
	O group by agrupa os valores retornados, evitando valores repitidos, sendo assim
    podemos aplicar filtros como o having e buscar a média de dos salários ou outros
    campos, assim como o Max, Min e outros.
*/
select departamento, avg(salario) from funcionarios group by departamento;
select departamento, avg(salario) from funcionarios group by departamento having avg(salario) > 2000;

select departamento, count(*) from funcionarios group by departamento;

select departamento, avg(salario) from funcionarios group by departamento;
select nome from funcionarios where departamento = 'Tecnologia da Informação';
/*
	o in no final da primeira consulta permite criar uma sub consulta dentro da primeira, sendo assim é realizado
    primeiro a consulta mais interna e depois a consulta mais externa.
*/
select nome from funcionarios where departamento in (select departamento from funcionarios group by departamento having avg(salario) > 2000)


