create database Aluguel_Carro;

create table Carros(
	Id int identity(1, 1),
	Modelo varchar(100) not null, 
	Placa varchar(100) not null, 
	Marca varchar(100) not null,
	constraint Carros_Id_pk primary key(Id),
	constraint Carros_Placa unique(Placa),
	constraint Carros_Modelo check(Modelo in('Suv', 'Sedan', 'Hibrido', 'Hatch'))
); 

select * from Carros;  

create table Locacao(
	Id_Locacao int identity(1, 1), 
	Data_Locacao datetime not null, 
	Devolucao datetime not null,
	Modelo varchar(100) not null,
	
	constraint Locacao_Id_pk primary key(Id),
