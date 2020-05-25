create user 'andre'@'200.200.190.190' identified by 'milani123456'; -- acesso somente através do ip informado
create user 'bruno'@'localhost' identified by 'jair140514'; -- acesso somente local
create user 'externo'@'%' identified by '123456'; -- acesso de qualquer lugar

create user 'bruno'@'%' identified by 'brunoviagem';

/*
	Da acesso total a todas as tabelas do banco para o usuário informado
*/
grant all on curso_sql.* to 'bruno'@'localhost';

/*
	Da acesso somente de seleção em todas as tabelas do banco de dados
*/
grant select on curso_sql.* to 'bruno'@'%';
/* grant insert on curso_sql.* to 'bruno'@'%';*/

/*
	Da acesso de inserção somente na tabela funcionarios do banco
*/
grant insert on curso_sql.funcionarios to 'bruno'@'%';

revoke insert on curso_sql.funcionarios from 'bruno'@'%';
revoke select on curso_sql.* from 'bruno'@'%';

grant select on curso_sql.funcionarios to 'bruno'@'%';
grant select on curso_sql.veiculos to 'bruno'@'%';

/*
	Revoke remove o acesso dado utilizando o comando grant, precisando informar
    qual é o acesso a ser removido, como select, insert ou all
*/
revoke select on curso_sql.funcionarios from 'bruno'@'%';
revoke select on curso_sql.veiculos from 'bruno'@'%';

revoke select on curso_sql.* from 'bruno'@'localhost';

drop user 'bruno'@'%';
drop user 'bruno'@'localhost';


select user from mysql.user; -- mostra todos os usuários do banco
show grants for 'andre'@'200.200.190.190' -- mostra as permissões que este usuário possui

















