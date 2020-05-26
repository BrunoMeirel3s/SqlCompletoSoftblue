use curso_sql;

show engines; -- mostra os tipos de tabelas que podemos criar, atualmente a InnoDB aceita transactions
create table contas_bancarias(
	id int unsigned not null auto_increment,
    titular varchar(45) not null,
    saldo double not null,
    primary key(id)
) engine = InnoDB; -- enfine = InnoDB cria a tabela com suporte a operações transactions

insert into contas_bancarias(titular, saldo) values ('André', 1000);
insert into contas_bancarias(titular, saldo) values ('Carlos', 2000);
select * from contas_bancarias;

/*
	Transações acid permitem criar transações mais seguras permitindo congelar
    valores, desfazer alterações e apenas confirmar a alteração caso a o operação
    tenha sido efetuada com sucesso
*/
start transaction; -- inicia a operação de transação
update contas_bancarias set saldo = saldo - 100 where id = 1; -- executa a primeira operação
update contas_bancarias set saldo = saldo + 100 where id = 2; -- executa a segunda operação
commit; -- confirma que as operações foram executas com sucesso
rollback; -- pode ser usado caso as operações não tenham sido executas corretamente, desfaz as alterações

















