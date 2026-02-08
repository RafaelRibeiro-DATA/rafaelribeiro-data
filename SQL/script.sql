create database atividade8
use atividade8;

create table medicos (
idMedico		int identity primary key,
nome			varchar(40) not null,
sobrenome		varchar(20) not null,
inicias			varchar(1) not null,
cpf				varchar(20) null,
especialidade	varchar(50) not null,
cidade			varchar(30) not null,
telefone		varchar(20) null,
email			varchar(50) null,
salario			decimal(10,2) not null
);



insert into medicos values(' João ','augusto','J', '12345678901', 'Cardiologia','Agudos', null, 'joao.silva@hospital.com',2300);
insert into medicos values('Ana ','Ribeiro','A', null, 'Ortopedia','Bauru', '11988887777', null,900);
insert into medicos values(' CARLOS ','Bueno','C', '45678912300', 'Ortopedia','Lençois Paulista', '11977776666', 'carlos.pereira@hospital.com',1900);
insert into medicos values('Maria ','Souza','M', '78945612300', 'Pediatria','São Paulo', null,'mariaolivei@gmail.com',3200);
insert into medicos values('Paulo ','costa','P', null, 'Dermatologia','Avaré', null, 'paulo.costa@hospital.com',4000);
insert into medicos values(' FERNANDA','Lima','F', '65432198700', 'Cardiologia','Bauru', '11944443333', 'fernanda.lima@hospital.com',3764);
select * from medicos


select upper(nome) from medicos;

select lower(sobrenome) from medicos;


update medicos 
set sobrenome = upper(sobrenome);--update para alterar definitivo 

select * from medicos
order by nome;


update medicos
set nome = trim(nome);

select substring(especialidade,1,1)'iniciais da especialidade' from medicos;

alter table medicos 
alter column inicias varchar(5) not null;

update medicos
set inicias = substring(especialidade,1,4);

select * from medicos

select replace ('carlos','s','s');


update medicos 
set nome = replace(nome,'carlos','Ursolino');


update medicos
set sobrenome = replace(sobrenome,sobrenome,'Urso');
select * from medicos


select upper(nome) from medicos;
select lower(nome) from medicos;
select ltrim(rtrim(nome)) from medicos;
update medicos set inicias = substring(especialidade,1,4);
update medicos set sobrenome = replace(sobrenome,sobrenome,'URSO');
select stuff('carlos',1,5,'Marcio');

