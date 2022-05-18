create database Locadora_de_Filme;
use Locadora_de_Filme;

create table Cliente(
id_cliente integer primary key auto_increment,
Nome varchar(40),
cpf varchar(40)
);

create table Funcionario(
id_funcionario int primary key auto_increment,
nome varchar (40),
cpf varchar(20)
);

create table Filme(
id_filme int primary key auto_increment,
nome_filme varchar (40),
genero varchar (30)
);

create table Tipo_Servico(
id_tipo_servico int primary key auto_increment,
nome varchar(40)
);

create table Servico(
id_servico int primary key auto_increment,
id_cliente int,
id_funcionario int,
id_tipo_servico int,
id_filme int,
foreign key(id_cliente) references Cliente(id_cliente),
foreign key(id_funcionario) references Funcionario(id_funcionario),
foreign key(id_tipo_servico) references Tipo_Servico(id_tipo_servico),
foreign key(id_filme) references Filme(id_filme)
);

insert into Cliente
(nome,cpf)
values
("Samuel","457 992 432 33"),
("Joao","402 892 994 14"),
("Italia","511 109 423 22"),
("Claudia","453 333 324 22"),
("Miranda","522 345 365 66");

insert into Funcionario
(nome,cpf)
values
("Joel","432 764 123 88"),
("Manuel","456 909 874 10"),
("Daniel","567 876 453 56"),
("Ismael","450 991 112 92"),
("Misael","543 812 657 10");

insert into Filme
(nome_filme,genero)
values
("Super-Heróis – A Liga da Injustiça","Comedia"),
("Salvando o Natal" ,"Comedia"),
("O Filho do Maskara","Comedia,Açao"),
("Interestelar","Ficçao cientifica"),
("Scott Pilgrim Vs O Mundo","Comedia Romantica");

insert into tipo_servico
(nome)
values
("Alugar"),
("Comprar");

insert into servico
(id_cliente,id_funcionario,id_tipo_servico,id_filme)
values 
(1,3,1,3),
(2,1,2,4),
(3,3,2,5),
(4,4,2,5),
(5,2,1,2);





