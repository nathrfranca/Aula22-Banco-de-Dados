create database Escola;

create table Instituicao(
	id int primary key identity,
	nome varchar(45) not null,
	endere�o varchar(100) not null,
	CNPJ int not null,
);

create table Aluno(
	id int primary key identity,
	nome varchar(45) not null,
	sobrenome varchar(100) not null,
	matr�cula int not null,
	id_Instituicao int not null,

	CONSTRAINT FK_Sla FOREIGN KEY (id_Instituicao) REFERENCES Instituicao(id)
);

