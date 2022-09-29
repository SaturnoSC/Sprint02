create database Capulus;

use Capulus;

create table Cliente(
	idCliente int primary key auto_increment,
    Nome varchar(45),
    Sobrenome varchar(45),
    Email varchar(45),
    Telefone varchar(13),
    CPF char(11),
    CNPJ char(14),
    dtNascimento date
);

create table En
reco (
idEndereco int primary key,
CEP char(8),
Logradouro varchar(45),
Numero varchar(5),
Bairro varchar(45),
Cidade varchar(45),
Estado varchar(45)
);

create table Plantacao (
idPlantacao int,
fkCliente int,
Nome varchar(45),
Hectares int,
Tipo varchar(45),
primary key (fkCliente, idPlantacao) 
);

create table Sensor (
idSensor int primary key,
nome varchar(45),
Temperatura decimal(4,2),
Umidade decimal(4,2),
DataHora datetime
);